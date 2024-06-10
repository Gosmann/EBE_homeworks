% lecture de la densité spectrale de bruit et calcul de l'intégrale pour
% obtenir la tension efficace de bruit
% Mode d'emploi :
% Dans LTSpice, lancer la simulation de bruit
% Cliquer droit sur la courbe de bruit : File, Export data as text
% Nommer le fichier et l'enregistrer dans le même répertoire que ce script
% Dans Matlab, se placer dans le répertoire où se trouvent le script et le fichier texte
% Lancer le script en tapant dans la fenêtre de commande : cal_bruit('nom du fichier')
% La densité spectrale et la valeur RMS de la tension de bruit s'affichent

function y = calc_noise(filename)
A = importdata(filename);
freq = A.data(:,1); vsd = A.data(:,2); 
figure, semilogx(freq,vsd)
grid, xlabel('frequency (Hz)'), ylabel('spectral density (V/sqrt(Hz))')
title(filename)
y = trapz(freq,vsd.^2);
y = sqrt(y);
disp(['Vrms = ',num2str(y*1e6),' microVolts'])