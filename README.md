IMPLEMENTACJA PODSTAWOWYCH MODUŁÓW KRYPTOGRAFICZNYCH

Implementacja podstawowych modułów kryptograficznych odnosi się do stworzenia systemu kryptograficznego, który może szyfrować i deszyfrować dane z wykorzystaniem prostych algorytmów kryptograficznych.
Przykłady:
\n
      ![image](https://github.com/KamilMicota42/encryption/assets/85360923/f5e2324c-dbf4-43d3-abdb-b46725e1b357)
      ![image](https://github.com/KamilMicota42/encryption/assets/85360923/fb825d4c-f550-440d-a62c-921cc261b4c8)
W zadaniu zaprezentowano dwa sposoby szyfrowania danych - za pomocą przestawienia macierzowego 2a oraz 2b. Przestawienie macierzowe to metoda szyfrowania, w której dane umieszczone są w macierzy, a następnie zmieniane są miejscami według ustalonego klucza.

W przypadku przestawienia macierzowego 2a, dane są przesuwane zgodnie z ustalonym kluczem, gdzie wartości klucza określają kolejność kolumn w macierzy. W implementacji przedstawiono przykład użycia klucza [3, 1, 4, 2], który przesuwa kolumny w taki sposób, że dane zostaną umieszczone w macierzy w kolejności [3, 1, 4, 2], a następnie odczytywane z niej w porządku [1, 2, 4, 3]. Takie przestawienie kolumn umożliwia odczytanie pierwotnego tekstu.

W przypadku przestawienia macierzowego 2b, dane są umieszczane w macierzy wierszami, a następnie przestawiane są w kolumnach zgodnie z kolejnością liter w kluczu. Takie przestawienie kolumn umożliwia odczytanie pierwotnego tekstu. W implementacji przedstawiono przykład użycia klucza "CONVENIENCE", który służy do przestawienia kolumn w taki sposób, że dane zostaną umieszczone w macierzy w kolejności liter w kluczu, a następnie odczytywane z niej w porządku alfabetycznym liter klucza.

W obu implementacjach dane są najpierw podzielone na macierz o ustalonych wymiarach, a następnie przestawione według ustalonego klucza. Takie szyfrowanie umożliwia zachowanie bezpieczeństwa danych i uniknięcie dostępu nieuprawnionych osób do informacji.
