function charSum (str) {
  // Write your code here, and
  // return your final answer.

var a = 0;

  for (var i = 0; i < str.length; i++) {
    if (parseInt(str[i])) {
    a += parseInt(str[i]);
  }
  }
return a;
}