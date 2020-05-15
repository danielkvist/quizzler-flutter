// Dart classes
// A class is basically a blueprint.
// When we build an instance based on that
// blueprint we have an Object.
// A class have:
//  * Properties (color, numberOfSeats, etc)
//  * Methods (drive(), break(), etc)
//
// class Car {
//   int numberOfDoors = 5;
//
//   void drive() {
//     print('wheels start turning');
//   }
// }
//
// We can give to the properties on our Class
// default values.
//
// To create an object we need
//  * Create the class.
//  * Create the object from the class.
//
// Car myCar = Car();
// myCar.numberOfDoors = 7;
// Dart uses the dot notation to acces values in our object.
//
// We can provide a constructor for our class:
// class Human {
//   double height;
//
//   Human({double h}) {
//     height = h;
//   }
// }
//
// A method is a function defined inside a class:
// class Human {
//   double height;
//
//   Human({double h}) {
//     height = h;
//   }
//
//   void Talk(String whatToSay) {
//      print(whatToSay);
//   }
// }
//
// Human jenny = Human(h: 174);
// jenny.tal('Why is the sky blue?');

// Why do we need classes?
// Classes are a form of abstraction and abstraction
// is important. Why? Because abstraction is a way to
// avoid complexity.
//
// Dart is an OOP:
//  * Abstraction.
//  * Encapsulation.
//  * Inheritance.
//  * Polymorphism.

class Question {
  // Properties
  String questionText;
  bool questionAnswer;

  // Constructor
  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}
