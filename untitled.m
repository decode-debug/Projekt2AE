% =========================================================================
% Algorytmy Ewolucyjne - Projekt 2: Problem Plecakowy
% Skrypt generujący przedmioty i eksportujący je do pliku CSV
% =========================================================================

% 1. Ustawienie ziarna na podstawie numeru albumu
numerAlbumu = 123456; % <--- TUTAJ WPISZ SWÓJ PRAWDZIWY NUMER ALBUMU
rng(numerAlbumu);

% 2. Liczba przedmiotów
N = 32;

% 3. Generowanie wag (rozkład równomierny od 0.1 do 1, krok 0.1)
items(:,1) = round(0.1 + 0.9 * rand(N,1), 1);

% 4. Generowanie wartości (rozkład równomierny od 1 do 100, krok 1)
items(:,2) = round(1 + 99 * rand(N,1));

% 5. Obliczenie maksymalnej pojemności plecaka (W)
total_weight = sum(items(:,1));
W = 0.3 * total_weight;

% =========================================================================
% EKSPORT DO PLIKU CSV
% =========================================================================

% Tworzymy wektor z numerami ID od 1 do N
ID = (1:N)'; 

% Tworzymy tablicę (table) zawierającą ID, Wagę i Wartość z odpowiednimi nagłówkami
T = table(ID, items(:,1), items(:,2), 'VariableNames', {'ID_Przedmiotu', 'Waga', 'Wartosc'});

% Zapisujemy tablicę do pliku CSV (oddzielone średnikiem, by polski Excel dobrze to odczytał)
nazwa_pliku = sprintf('przedmioty_%d.csv', numerAlbumu);
writetable(T, nazwa_pliku, 'Delimiter', ';');

fprintf('Zapisano dane do pliku: %s\n', nazwa_pliku);

% Wyświetlenie podsumowania pojemności plecaka
fprintf('Sumaryczna waga wszystkich przedmiotów: %.1f\n', total_weight);
fprintf('Maksymalna pojemność plecaka (W = 30%%): %.2f\n', W);
disp('===================================================');