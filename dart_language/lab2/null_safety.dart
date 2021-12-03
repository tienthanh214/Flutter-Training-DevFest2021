/**
 * all type non-nullable by default
 * 
 */

// late keyword
class Team {
  late final Coach coach;
}

class Coach {
  late final Team team;
}

// for lazy init

int _computeValue() {
  print('In _computeValue...');
  return 3;
}

class CachedValueProvider {
  // add late
  // Instead of running it as soon as the instance is constructed, 
  // it is deferred and run lazily the first time the field is accessed
  late final _cache = _computeValue();
  int get value => _cache;
}

void main() {
  // non-nullable  
  int a;
  a = 3;
  print('a not null $a');
  // nullable type
  int? b;
  b = null;
  print('b is $b');
  // nullable list
  List<String> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings;
  List<String?> aListOfNullableStrings = ['one', null, 'three'];

  print('aListOfStrings is $aListOfStrings.');
  print('aNullableListOfStrings is $aNullableListOfStrings.');
  print('aListOfNullableStrings is $aListOfNullableStrings.');
  // null assertion ! if sure an exp with a nulable type is not null
  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];
  int? couldReturnNullButDoesnt() => -3;
  int ax = couldBeNullButIsnt;
  int bx = listThatCouldHoldNulls.first!; // first item in the list
  int cx = couldReturnNullButDoesnt()!.abs(); // absolute value

  print('a is $ax.');
  print('b is $bx.');
  print('c is $cx.');
  // dart can track where variables are assigned and read
  // (str == null) for null-checking
  // use late before type if you user that var is not null when assigned
  final myTeam = Team();
  final myCoach = Coach();
  myTeam.coach = myCoach;
  myCoach.team = myTeam;

  print('All done!');
}