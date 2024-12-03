class Person {
  String name;
  int age;

  Person(this.name, this.age);
  void greet() {
    print('Halo, nama saya $name dan saya berusia $age tahun.');
  }
}

void main() {
  var person1 = Person('Andi', 25);
  person1.greet();
}
