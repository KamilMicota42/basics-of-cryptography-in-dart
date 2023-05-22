void main() {
  String plaintext = "FRANCJA";
  print('input: $plaintext');
  String ciphertext = encrypt(plaintext, [3, 4, 1, 5, 2]);
  print('output: $ciphertext');
}

String encrypt(String plaintext, List<int> key) {
  int d = key.length;
  String paddedText = padText(plaintext, d);

  print('Padded content: ');
  print(paddedText);

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

  print('Original matrix created from the padded content: ');
  for (var i = 0; i < orgMatrix.length; i++) {
    print(orgMatrix[i]);
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

  print('Final matrix with padded content and the order: ');
  for (var i = 0; i < finalMatrix.length; i++) {
    print(finalMatrix[i]);
  }

  print('The final contentread from the last matrix:');
  return finalString;
}

String padText(String text, int d) {
  int padding = (d - (text.length % d)) % d;
  return text + "_" * padding;
}
