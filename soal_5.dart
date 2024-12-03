class Student {
  String name;
  List<double> grades;

  Student(this.name) : grades = [];

  void addGrade(double grade) {
    if (grade >= 0 && grade <= 100) {
      grades.add(grade);
      print('Nilai $grade ditambahkan untuk $name.');
    } else {
      print('Nilai harus antara 0 dan 100.');
    }
  }

  double calculateAverage() {
    if (grades.isEmpty) {
      return 0.0;
    }
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }

  void printDetails() {
    double average = calculateAverage();
    print('Nama: $name, Rata-rata Nilai: ${average.toStringAsFixed(2)}');
  }
}

void main() {
  var student1 = Student('Andi');
  var student2 = Student('Budi');
  var student3 = Student('Citra');

  student1.addGrade(85);
  student1.addGrade(90);
  student1.addGrade(78);

  student2.addGrade(88);
  student2.addGrade(92);

  student3.addGrade(76);
  student3.addGrade(84);
  student3.addGrade(69);
  student3.addGrade(91);

  student1.printDetails();
  student2.printDetails();
  student3.printDetails();
}
