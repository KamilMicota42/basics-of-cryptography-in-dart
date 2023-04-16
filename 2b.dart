void main() {
  String plaintext = "HERE IS A SECRET MESSAGE ENCIPHERED BY TRANSPOSITION";
  print(plaintext);
  plaintext = plaintext.replaceAll(' ', '');
  String ciphertext = encrypt(plaintext, 'CONVENIENCE');
  print(ciphertext); 
  ciphertext = decrypt(ciphertext, 'CONVENIENCE');
  print(ciphertext); 
}

String encrypt(String plaintext, String key) {
  var paddedText = padText(plaintext, key.length);

  double row = paddedText.length / key.length;
  int col = key.length;

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

  var keyArrOrg = List.generate(key.length, (i) => '');
  var keyArrSort = List.generate(key.length, (i) => '');
  for (var i = 0; i < key.length; i++) {
    keyArrOrg[i] = key[i];
    keyArrSort[i] = key[i];
  }
  keyArrSort.sort();

  var keyArrValue = List.generate(key.length, (i) => 0);
  int value = 0;
  for (var i = 0; i < keyArrSort.length; i++) {
    for (var j = 0; j < keyArrOrg.length; j++) {
      if (keyArrOrg[j] == keyArrSort[i]) {
        value++;
        keyArrValue[j] = value;
      }
    }
  }

  List<int> sortedList = List.from(keyArrValue)..sort();

  List<int> minimizedList = [];
  for (int i = 0; i < keyArrOrg.length; i++) {
    minimizedList.add(sortedList.indexOf(keyArrValue[i]));
  }

  List<String> finalList = List.generate(minimizedList.length, (index) => '');

  for (int k = 0; k < minimizedList.length; k++) {
    for (int i = 0; i < orgMatrix.length; i++) {
      for (int j = 0; j < orgMatrix[0].length; j++) {
        if (j == k) {
          finalList[k] += orgMatrix[i][j];
        }
      }
    }
  }

  Map<String, int> indexMap = Map.fromIterables(
      finalList.map((e) => e.replaceAll('_', '')), minimizedList);
  List<String> sortedList1 = finalList
    ..sort((a, b) =>
        indexMap[a.replaceAll('_', '')]! - indexMap[b.replaceAll('_', '')]!);

  String finalString = '';

  for (var i = 0; i < sortedList1.length; i++) {
    finalString += sortedList1[i].toString() + ' ';
  }

  return finalString;
}

String decrypt(String ciphertext, String key) {
  
  return ' ';
}

String padText(String text, int d) {
  int padding = (d - (text.length % d)) % d;
  return text + "_" * padding;
}
