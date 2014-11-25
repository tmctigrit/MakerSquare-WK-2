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


