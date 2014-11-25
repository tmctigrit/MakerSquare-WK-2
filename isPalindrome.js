function isPalindrome (str) {
  // Write your code here, and
  // return your final answer.

  var stringFilter = str.toLowerCase().replace(/\s+/g, '').split("");

  var copy = stringFilter.slice().reverse();

  return stringFilter.join('') == copy.join('');

}