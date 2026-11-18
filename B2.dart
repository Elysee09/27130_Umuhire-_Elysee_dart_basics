int countVowels(String text) {
  // by UE
  String lower = text.toLowerCase();
  int count = 0;

  for (int i = 0; i < lower.length; i++) {
    if ('aeiou'.contains(lower[i])) {
      count++;
    }
  }

  return count;
}

void main() {
  String fullName = 'UMUHIRE Elysee';

  int total = countVowels(fullName);

  print('$fullName has $total vowels');
}