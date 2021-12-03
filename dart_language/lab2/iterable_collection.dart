
// ---------- exercise 1 (singleWhere) ----------
String singleWhere(Iterable<String> items) {
  return items.singleWhere((element) => element.contains('a') && element.startsWith('M'));
}

// ---------- exercise 2 (any/all) ----------
class User {
  String name;
  int age;
  User(this.name, this.age,);
}

bool anyUserUnder18(Iterable<User> users) {
  return users.any((element) => element.age < 18);
}

bool everyUserOver13(Iterable<User> users) {
  return users.every((element) => element.age > 13);
}

// ---------- exercise 3 (filter) ----------
Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((element) => element.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((element) => element.name.length <= 3);
}

// ---------- exercise 4 (mapping) ----------
Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((e) => '${e.name} is ${e.age}');
}

// ---------- exercise 4 (mapping) ----------
bool isValidEmailAddress(EmailAddress e) {
  return true;
}

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((e) => EmailAddress(e));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return !emails.every((element) => isValidEmailAddress(element));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((element) => isValidEmailAddress(element));
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is EmailAddress &&
              address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}

void main() {
  Iterable<String> iterable = const ['Mhau', 'la', 'mot', 'con', 'heo'];
  print(iterable.first);
  print(iterable.last);
  for (final element in iterable) {
    print(element);
  }
  var foundX = iterable.firstWhere((element) => 
                element.contains('on'), orElse: () => "None!");
  print(foundX);


  print(singleWhere(iterable));
}