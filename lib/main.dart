import 'package:flutter/material.dart';
import 'package:flutter_first_app/Answer.dart';
import 'package:flutter_first_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO implement create state
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdex = 0;
  final questions = const [
    {
      'questionText': 'What is you favorite color?',
      'answers': ['red', 'green', 'blue', 'yellow']
    },
    {
      'questionText': 'What is you favorite animal?',
      'answers': ['dog', 'cat', 'cow', 'hen']
    },
    {
      'questionText': 'What is you favorite teacher?',
      'answers': ['chakradhar', 'ghana', 'sanatan', 'bidyadhar']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIdex++;
    });

    print('Answer chosen $_questionIdex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionIdex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIdex]['questionText']),
                  ...(questions[_questionIdex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
