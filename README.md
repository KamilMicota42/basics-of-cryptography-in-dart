IMPLEMENTATION OF BASIC CRYPTOGRAPHIC MODULES

The implementation of basic cryptographic modules refers to the creation of a cryptographic system that can encrypt and decrypt data using simple cryptographic algorithms.

Examples:
      ![image](https://github.com/KamilMicota42/encryption/assets/85360923/f5e2324c-dbf4-43d3-abdb-b46725e1b357)
      ![image](https://github.com/KamilMicota42/encryption/assets/85360923/fb825d4c-f550-440d-a62c-921cc261b4c8)
      
The task presents two ways of data encryption - using matrix conversion 2a and 2b. Matrix shift is an encryption method in which data is placed in a matrix and then changed in places according to a predetermined key.

In the case of matrix rearrangement 2a, the data is shifted according to a fixed key, where the values ​​of the key determine the order of the columns in the matrix. The implementation shows an example of using the key [3, 1, 4, 2], which shifts the columns in such a way that the data will be placed in the matrix in the order [3, 1, 4, 2], and then read from it in the order [1 , 2, 4, 3]. This rearrangement of the columns makes it possible to read the original text.

In the case of matrix rearrangement 2b, the data is placed in the matrix by rows and then rearranged in columns according to the order of the letters in the key. This rearrangement of the columns makes it possible to read the original text. The implementation shows an example of using the "CONVENIENCE" key, which is used to rearrange the columns in such a way that the data will be placed in the matrix in the order of the letters in the key, and then read from it in the alphabetical order of the letters of the key.

In both implementations, the data is first divided into a matrix of fixed dimensions and then rearranged according to a fixed key. Such encryption makes it possible to maintain data security and avoid unauthorized access to information.

IMPLEMENTACJA PODSTAWOWYCH MODUŁÓW KRYPTOGRAFICZNYCH

Implementacja podstawowych modułów kryptograficznych odnosi się do stworzenia systemu kryptograficznego, który może szyfrować i deszyfrować dane z wykorzystaniem prostych algorytmów kryptograficznych.

Przykłady:
      ![image](https://github.com/KamilMicota42/encryption/assets/85360923/f5e2324c-dbf4-43d3-abdb-b46725e1b357)
      ![image](https://github.com/KamilMicota42/encryption/assets/85360923/fb825d4c-f550-440d-a62c-921cc261b4c8)
      
W zadaniu zaprezentowano dwa sposoby szyfrowania danych - za pomocą przestawienia macierzowego 2a oraz 2b. Przestawienie macierzowe to metoda szyfrowania, w której dane umieszczone są w macierzy, a następnie zmieniane są miejscami według ustalonego klucza.

W przypadku przestawienia macierzowego 2a, dane są przesuwane zgodnie z ustalonym kluczem, gdzie wartości klucza określają kolejność kolumn w macierzy. W implementacji przedstawiono przykład użycia klucza [3, 1, 4, 2], który przesuwa kolumny w taki sposób, że dane zostaną umieszczone w macierzy w kolejności [3, 1, 4, 2], a następnie odczytywane z niej w porządku [1, 2, 4, 3]. Takie przestawienie kolumn umożliwia odczytanie pierwotnego tekstu.

W przypadku przestawienia macierzowego 2b, dane są umieszczane w macierzy wierszami, a następnie przestawiane są w kolumnach zgodnie z kolejnością liter w kluczu. Takie przestawienie kolumn umożliwia odczytanie pierwotnego tekstu. W implementacji przedstawiono przykład użycia klucza "CONVENIENCE", który służy do przestawienia kolumn w taki sposób, że dane zostaną umieszczone w macierzy w kolejności liter w kluczu, a następnie odczytywane z niej w porządku alfabetycznym liter klucza.

W obu implementacjach dane są najpierw podzielone na macierz o ustalonych wymiarach, a następnie przestawione według ustalonego klucza. Takie szyfrowanie umożliwia zachowanie bezpieczeństwa danych i uniknięcie dostępu nieuprawnionych osób do informacji.
