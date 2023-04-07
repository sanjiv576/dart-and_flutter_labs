void main() {
  print(vowelOrConsonant(alphabet: 'a'));
  print(vowelOrConsonant(alphabet: 'w'));
}

// wap to check whether a character is a vowel or consonant

String vowelOrConsonant({String? alphabet}) {
  if ((alphabet == 'a') ||
      (alphabet == 'e') ||
      (alphabet == 'i') ||
      (alphabet == 'o') ||
      (alphabet == 'u')) {
    return '$alphabet is vowel';
  }
  return '$alphabet is consonant';
}
