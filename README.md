# Algorytmy Ewolucyjne – Projekt 2: Problem Plecakowy

Repozytorium zawiera implementację **algorytmu genetycznego** rozwiązującego problem 0/1 plecakowego. Projekt zrealizowany w ramach przedmiotu *Algorytmy Ewolucyjne*.

---

## Opis problemu

Znaleźć podzbiór $n = 32$ przedmiotów maksymalizujący łączną wartość przy zachowaniu ograniczenia wagowego $W = 30\%$ sumy wag wszystkich przedmiotów:

$$\max_{\mathbf{x}} \sum_{i=1}^{n} p_i x_i \quad \text{przy} \quad \sum_{i=1}^{n} w_i x_i \leq W, \quad x_i \in \{0,1\}$$

Przedmioty wygenerowano skryptem MATLAB (numer albumu: 337021).

---

## Struktura repozytorium

```
report.ipynb                         # Sprawozdanie / notebook
get_all_items/
    generate_items.m                 # Skrypt MATLAB do generacji przedmiotów
    items_337021.csv                 # Wygenerowane przedmioty (waga, wartość)
find_best_backpack/
    genetic_algorythym/
        genetic_algorythym.py        # Implementacja algorytmu genetycznego
        genetic_algorythym_prameters.py  # Parametry domyślne
```

---

## Implementacja algorytmu

- **Kodowanie:** binarne (1 bit = 1 przedmiot)
- **Selekcja:** turniejowa (testowane $k \in \{2, 5, 10\}$)
- **Krzyżowanie:** dwupunktowe
- **Mutacja:** bitowa ($p_m = 1/32$)
- **Elitaryzm:** $N_e = 5$ najlepszych osobników przenoszonych bez zmian

---

## Wymagania

```
numpy
pandas
matplotlib
```

---

## Uruchomienie

Otworzyć i uruchomić `report.ipynb` w Jupyter Notebook / JupyterLab / VS Code.
