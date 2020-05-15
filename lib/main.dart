import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

// Dart lists
//
// Creating the List:
// List<string> names = ['Angela', 'Daniel', 'Aroa'];
// Lists in Dart are zero-index
// names[1] == 'Daniel';
//
// You can also get the index of an element
// names.indexOf('Daniel') == 1
//
// To push a new item to a List
// names.add('Alicia');
//
// To insert a new item into a List
// in the position you want use
// names.insert(1, 'Laura');
//
// To get the first item: names.first()
// To get the last item: names.last()

// Dart if/else
// An if statement basically checks
// if a condition is true, then, it executes
// the code specified inside the body ({}).
// if (condition) { instruction; }
// if (track == 'clear') { go(); }
//
// In Dart we can also use else
// if (track == 'clear') {
//    go();
// } else {
//    turnRight();
// }
//
// And else if()
//
// Operators
// == -> Is equal to
// != -> Is not equal to
// >  -> Is greater than
// <  -> Is lesser than
// <= -> Is lesser than or equal to
// >= -> Is greater than or equal to
//
// We can use another kind of operators:
// && -> AND
// || -> OR
// !  -> NOR

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnwer = quizBrain.getQuestionAnswer();

    setState(() {
      if (quizBrain.isFinished()) {
        Alert(
                context: context,
                title: 'Finished',
                desc: 'You\'ve reached the end of the quiz!')
            .show();
        quizBrain.resetQuiz();
        scoreKeeper = [];
        return;
      }

      if (userPickedAnswer == correctAnwer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }

      quizBrain.nextQuestion();
    });
  }

  // Every time we override we are using
  // polymorphism.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          // Rows and Columns can have children in the form
          // if a list. In other programming languages
          // you may known lists as arrays.
          children: scoreKeeper,
        ),
      ],
    );
  }
}
