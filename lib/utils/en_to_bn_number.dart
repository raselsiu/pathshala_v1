String convertToBengaliNumber(String input) {
  const englishToBengaliDigits = {
    '0': '০',
    '1': '১',
    '2': '২',
    '3': '৩',
    '4': '৪',
    '5': '৫',
    '6': '৬',
    '7': '৭',
    '8': '৮',
    '9': '৯',
  };

  String output = input.split('').map((char) {
    return englishToBengaliDigits[char] ??
        char; // Convert if it's a digit, otherwise keep the character
  }).join('');

  return output;
}
