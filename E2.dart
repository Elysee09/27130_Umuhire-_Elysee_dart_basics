bool isPalindrome(String word) {
  int i = 0;

  while (i < word.length) {
    if (word[i] != word[word.length - i]) return false;
    i++;
  }

  return true;
}