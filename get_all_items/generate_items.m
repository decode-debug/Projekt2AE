% =========================================================================
% Algorytmy Ewolucyjne - Projekt 2: Problem Plecakowy
% Skrypt generujący przedmioty i eksportujący je do pliku CSV
% =========================================================================

numerAlbumu = 337021;
rng(numerAlbumu);
N = 32;
items(:,1) = round(0.1 + 0.9 * rand(N,1), 1);
items(:,2) = round(1 + 99 * rand(N,1));
total_weight = sum(items(:,1));
W = 0.3 * total_weight;

% =========================================================================
% EKSPORT DO PLIKU CSV
% =========================================================================

ID = (1:N)';

T = table(ID, items(:,1), items(:,2), 'VariableNames', {'ID_Przedmiotu', 'Waga', 'Wartosc'});

nazwa_pliku = sprintf('items_%d.csv', numerAlbumu);
writetable(T, nazwa_pliku, 'Delimiter', ';');

fprintf('Zapisano dane do pliku: %s\n', nazwa_pliku);

fprintf('Sumaryczna waga wszystkich przedmiotów: %.1f\n', total_weight);
fprintf('Maksymalna pojemność plecaka (W = 30%%): %.2f\n', W);
disp('===================================================');