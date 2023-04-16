void main() {
  String plaintext = "SECRET Message";
  String ciphertext = encrypt(plaintext, [3, 1, 4, 2]);
  print(ciphertext); // wynik: YCPRGTROHAYPAOS
  ciphertext = decrypt(ciphertext, [3,1,4,2]);
  print(ciphertext); // wynik: CRYPTOGRAPHYOAS
}

String encrypt(String plaintext, List<int> key) {
  int d = key.length;
  String paddedText = padText(plaintext, d);

  int col = d;
  double row = paddedText.length / d;

  var orgMatrix = List.generate(
      row.toInt(), (i) => List.generate(col, (i) => '', growable: false),
      growable: false);

  int count = 0;
  for (var i = 0; i < row; i++) {
    for (var j = 0; j < col; j++) {
      orgMatrix[i][j] = paddedText[count];
      count++;
    }
  }

  var finalMatrix = List.generate(
      row.toInt(), (i) => List.generate(col, (i) => '', growable: false),
      growable: false);

  String finalString = '';

  for (var i = 0; i < row; i++) {
    for (var j = 0; j < col; j++) {
      finalMatrix[i][j] = orgMatrix[i][(key[j] - 1)];
      if (finalMatrix[i][j] != '_') {
        finalString = finalString + finalMatrix[i][j];
      }
    }
  }

  return finalString;
}

String decrypt(String plaintext, List<int> key) {
  var reversedKey = new List.filled(key.length, 0, growable: false);
  for (var i = 0; i < key.length; i++) {
    reversedKey[i] = key[key.length - i - 1];
  }
  return encrypt(plaintext, reversedKey);
}

String padText(String text, int d) {
  int padding = (d - (text.length % d)) % d;
  return text + "_" * padding;
}
