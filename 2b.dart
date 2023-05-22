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
  String plaintext = "DOBRYDZIEN";
  String key = 'BCADA';
  print('input: $plaintext');
  String ciphertext = encrypt(plaintext, key);
  print('output: $ciphertext');
}

// Encrypts the plaintext using the provided key
String encrypt(String plaintext, String key) {
  int indexForCreatingListOfInts = 0;
  List<int> keyTranslatedToListOfInts = List<int>.filled(key.length, 0);

  // Map the key characters to their corresponding positions in the alphabet
  for (var i = 0; i < alphabet.length; i++) {
    for (var j = 0; j < key.length; j++) {
      if (alphabet[i].toString().toUpperCase() ==
          key[j].toString().toUpperCase()) {
        ++indexForCreatingListOfInts;
        keyTranslatedToListOfInts[j] = indexForCreatingListOfInts;
      }
    }
  }

  print('The order created with the help of a key:');
  print(keyTranslatedToListOfInts);

  // Create a 2D grid to store the plaintext characters in a matrix form
  List<List<String>> grid = List.generate(
      (plaintext.length / key.length).ceil(),
      (_) => List<String>.filled(key.length, ''));

  int row = 0;
  int column = 0;

  // Fill the grid with the plaintext characters in row-major order
  for (var i = 0; i < plaintext.length; i++) {
    grid[row][column] = plaintext[i];
    column++;
    if ((i + 1) % key.length == 0) {
      row++;
      column = 0;
    }
  }

  print('The content of the message in matrix:');
  for (var i = 0; i < grid.length; i++) {
    print(grid[i]);
  }

  // Extract the columns from the grid and store them in an array
  List<String> columnsStringInFirstOrder = List<String>.filled(key.length, '');

  for (var i = 0; i < grid[0].length; i++) {
    for (var j = 0; j < grid.length; j++) {
      columnsStringInFirstOrder[i] += grid[j][i];
    }
  }

  print('The columns created from the matrix:');
  print(columnsStringInFirstOrder);

  // Create a list to represent the order in which columns should be read based on the key
  List<int> listOfReading = List<int>.filled(key.length, 0);
  for (var i = 0; i < keyTranslatedToListOfInts.length; i++) {
    for (var j = 0; j < keyTranslatedToListOfInts.length; j++) {
      if (keyTranslatedToListOfInts[j] == i + 1) {
        listOfReading[i] = j;
      }
    }
  }

  String finalWord = '';

  // Concatenate the columns based on the order determined by the key
  for (var i = 0; i < listOfReading.length; i++) {
    finalWord += columnsStringInFirstOrder[listOfReading[i]];
  }

  print(
      'The content of the output created with the help of key order and the matrix:');
  return finalWord;
}
