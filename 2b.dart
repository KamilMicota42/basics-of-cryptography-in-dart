List<String> alphabet = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];

void main() {
  String plaintext = "I Love Sonizinha";
  String key = 'BCADA';
  print('input: $plaintext');
  String ciphertext = encrypt(plaintext, key);
  print('output: $ciphertext');
}

String encrypt(String plaintext, String key) {
  int indexForCreatingListOfInts = 0;
  List<int> keyTranslatedToListOfInts = List<int>.filled(key.length, 0);

  for (var i = 0; i < alphabet.length; i++) {
    for (var j = 0; j < key.length; j++) {
      if (alphabet[i].toString().toUpperCase() ==
          key[j].toString().toUpperCase()) {
        ++indexForCreatingListOfInts;
        keyTranslatedToListOfInts[j] = indexForCreatingListOfInts;
      }
    }
  }
  print(keyTranslatedToListOfInts);

  List<List<String>> grid = List.generate(
      (plaintext.length / key.length).ceil(),
      (_) => List<String>.filled(key.length, ''));

  int row = 0;
  int column = 0;

  for (var i = 0; i < plaintext.length; i++) {
    grid[row][column] = plaintext[i];
    column++;
    if ((i + 1) % key.length == 0) {
      row++;
      column = 0;
    }
  }

  for (var i = 0; i < grid.length; i++) {
    print(grid[i]);
  }

  List<String> columnsStringInFirstOrder = List<String>.filled(key.length, '');

  for (var i = 0; i < grid[0].length; i++) {
    for (var j = 0; j < grid.length; j++) {
      columnsStringInFirstOrder[i] += grid[j][i];
    }
  }

  print(columnsStringInFirstOrder);
  List<int> listOfReading = List<int>.filled(key.length, 0);
  for (var i = 0; i < keyTranslatedToListOfInts.length; i++) {
    for (var j = 0; j < keyTranslatedToListOfInts.length; j++) {
      if (keyTranslatedToListOfInts[j] == i + 1) {
        listOfReading[i] = j;
      }
    }
  }

  String finalWord = '';

  for (var i = 0; i < listOfReading.length; i++) {
    finalWord += columnsStringInFirstOrder[listOfReading[i]];
  }

  return finalWord;
}
