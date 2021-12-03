Future<void> printOrderMessage() async {
  var order = await fetchUserOrder();
  print('Awaiting user order...'); // only run when above line finish
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}

Future<String> fetchUserOrderError() {
  return Future.delayed(const Duration(seconds: 4), () => throw 'some error there');
}

//  handle exception
Future<void> printSomething() async {
  try {
    print('Awaiting user order...');
    var order = await fetchUserOrderError();
    print(order);
  } catch (e) {
    print(e);
  }
}

Future<void> main() async {
  countSeconds(4);  // run immediately
  await printOrderMessage(); // wait until finish
  await printSomething();
}
