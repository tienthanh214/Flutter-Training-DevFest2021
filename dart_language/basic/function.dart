int norm(int x, int y) {
  return x * x + y * y;
}

normDouble(double x, double y) {
  return x * x + y * y;
}

sumTwoInt(int x, int y) => x + y;

void saySomething(String x, String y, [String? z]) {
  print("[] for optional param");
  print("x = $x");
  print("y = $y");
  print("z = $z");
}

void printSomething({String? x, String? y = "Hello", int? z}) {
  print("{} for any");
  print("x = $x");
  print("y = $y");
  print("z = $z");
}

// function as object
int getSum(int x, int y) {
  return x + y;
}

int getResult(int x, int y, var opt) {
  return opt(x, y);
}

// nested function
void nestedFunction() {
  int x = 12;
  void otherFunction() {
    int x = 40;
    print(x);
  }
  print(x);
  otherFunction();
}

void main() {
  printSomething(x: "hello", z: 214);
  saySomething("Jug", "Thanh");
  saySomething("Hello", "Jug", "Thanh");
  print(getResult(1, 2, getSum));
  // ---- lambda -------
  const list1 = ['hello', 'my', 'name', 'is', 'Jug'];
  list1.forEach((element) {
    print('${list1.indexOf(element)}: $element');
  });

  nestedFunction();
}