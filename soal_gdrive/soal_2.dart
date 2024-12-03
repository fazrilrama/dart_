class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void describe() {
    print('Nama hewan: $name, berusia: $age tahun.');
  }
}

class Bird extends Animal {
  bool canFly;

  Bird(String name, int age, this.canFly) : super(name, age);
  void fly() {
    if (canFly) {
      print('$name sedang terbang!');
    } else {
      print('$name tidak bisa terbang.');
    }
  }
}

void main () {
  var myBird = Bird('Elang', 5, true);
  myBird.describe();
  myBird.fly();
}