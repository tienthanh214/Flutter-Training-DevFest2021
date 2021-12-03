// just like Java
void conditionStatement() {
  int x = 5, y;
  if (x < 5) {
    y = 0;
  } else if (x == 5) {
    y = 1;
  } else {
    y = 2;
  }
  print(y);
  y = x < 5 ? 0 : x == 5 ? 1 : 2;
  print(y); 
}
void main() {
  conditionStatement();
  // for-loop (just like Java)
  for (int i = 0; i < 10; ++i) 
    print(i * i);
  // for enchanced
  for (final x in [1, 2, 7, 9])
    print(x);
  // or simple
  [1, 2, 7, 9].forEach(print);
  
  // while-do
  int step = 0;
  int sum = 0;
  while (step < 5) {
    sum += step++;
  }
  print(sum);
  step = sum = 0;
  do {
    sum += step++;
  } while (step < 5);
  print(sum);
  // switch-case just like Java
  
}