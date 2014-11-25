function longestImprovement (numbers) {

  var myLength = 0;
  var myLongest = 0;


  for (n=0; n < numbers.length; n++) {
  if(numbers[n] < numbers[n+1]) {
     myLength += 1;

    if(myLength > myLongest) {
      myLongest = myLength
    }
  }
  else {
  myLength = 0;
  }
 }
 return myLongest;
}