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
//
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
//
// Polymorphism
// class Car {
//   int numberOfSeat = 5;
//
//   void drive() {
//     print('driving');
//   }
// }
//
// Basic inheritance
// class ElectricCar extends Car {
//   int batteryLevel = 100;
//
//   void recharge() {
//     batteryLevel = 100;
//   }
// }
//
// Basic polymorphism
// class LevitatingCar extends Car {
//   @override
//   void drive() {
//     print('Levitating');
//   }
// }
//
// class SelfDrivingCar extends Car {
//   String destination;
//
//   SelfDrivingCar(String userSetDestination) {
//     destination = userSetDestination;
//   }
//
//   @override
//   void drive() {
//     super.drive();
//     print('sterring towards $destination');
//   }
// }
//
// Class constructors
// A constructor basically tells the object
// what initial values we want if they are not
// provided by default.
//
// If we don't specify it, Classes in Dart
// have a default constructor.
//
// No constructor specified:
// class Human {
//   double height = 154;
// }
//
// If you are specifying a constructor
// be careful with the name of your properties:
// class Human {
//   double height;
//
//   Human({double height}) {
//     height = height;
//   }
// }
//
// To solve this, you can use the this keyword:
// class Human {
//   double height;
//
//   Human({double height}) {
//     this.height = height;
//   }
// }
//
// To simplify this, Dart provides a helper:
// class Human {
//   double height;
//
//   Human({ this.height });
// }

class Question {
  // Properties
  String questionText;
  bool questionAnswer;

  // Constructor
  Question(this.questionText, this.questionAnswer);
}
