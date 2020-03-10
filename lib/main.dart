import 'package:flutter/material.dart';
import 'package:flutter_first_app/Answer.dart';
import 'package:flutter_first_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    //TODO implement create state
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{

  var _questionIdex = 0;
  var questions = [
    'What is you favorite color?',
    'What is you favorite animal?'
  ];

  void _answerQuestion() {
    setState( (){
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
        body: Column(
          children: [
            Question(questions[_questionIdex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
