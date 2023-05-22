void main() {
  String plaintext = "UNIVERSITY";
  print('input: $plaintext');
  String ciphertext = encrypt(plaintext, [3, 4, 1, 5, 2]);
  print('output: $ciphertext');
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

String padText(String text, int d) {
  int padding = (d - (text.length % d)) % d;
  return text + "_" * padding;
}
