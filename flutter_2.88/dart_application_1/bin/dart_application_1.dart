import 'dart:math';

void main(List<String> arguments) {
  var intval = Random().nextInt(50) + 1;
  List myListInt = <int>[];
  myListInt.add(intval);
  for (var i = 1; i < 50; i++) {
    bool bl = true;
    do {
      bool check = false;
      intval = Random().nextInt(50) + 1;
      for (var j = 0; j < i; j++) {
        if (myListInt[j] == intval) {
          check = true;
        }
      }
      if (check) {

      }
      else{
        myListInt.add(intval);
        bl = false;
      }
    } while (bl);
  }
  print(myListInt);
}
