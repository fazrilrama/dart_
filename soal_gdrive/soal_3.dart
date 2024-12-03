abstract class Shape {
  double calculateArea();
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea() {
    return length * width;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

void main() {
  var rectangle = Rectangle(5, 10);
  print('Luas Rectangle: ${rectangle.calculateArea()}');

  var circle = Circle(7);
  print('Luas Circle: ${circle.calculateArea()}');
}
