
void main() {
  void printInteger(var number) {
    print('Hello $number');
  }
  printInteger(12);
  printInteger("not a number");

  // ------------------- variable --------------------------
  var name = 'Bob'; // inferred to be String
  print(name);
  // name = 1; can't do this
  
  Object aNumber = 10; // allow any type
  print(aNumber);
  aNumber = "Ten";
  print(num);

  int? count; // ? allow null
  print(count);

  // final, const
  final YOU = 'You';
  const ME = 'Me'; // compile-time
  print(YOU + " " + ME);
  // ------------------- data type -------------------------------
  int one = int.parse("1");
  num x = 1; x += 5.2;
  var aDouble = double.parse("2.14");
  var str1 = """This is
              just a line""";
  // list
  var list1 = [1, 2, 3, 'hello', 5];
  var list2 = [0, ...list1, 9, 10];
  var list3 = [for (int i in [1, 5, 3]) '#$i'];
  print(list1);
  print(list2);
  print(list3);
  
  // set
  var names = <String>{'hello', 'world'}; // or {'hello', 'world'}
  names.add('Jug');
  print(names);
  print("$one $aDouble $x");
  print(str1);
}