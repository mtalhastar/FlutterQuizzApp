import 'package:flutter/material.dart';
import 'package:quizz_app/homepage.dart';
import 'package:quizz_app/questionpage.dart';
import 'package:quizz_app/result_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  // This widget is the root of your application.

  @override
  State<QuizApp> createState() {
    // TODO: implement createState
    return _QuizApp();
  }
}

class _QuizApp extends State<QuizApp> {
  Widget? myNewWidget;

  @override
  void initState() {
    // TODO: implement initState
    myNewWidget = MyHomePage(changePage, 'Hello');
    super.initState();
  }

  String newpage = 'home-screen';

  void changePage() {
    setState(() {
      myNewWidget = QuestionPage(changeToHome,changeToResult);
    });
  }

  void changeToHome() {
    setState(() {
      myNewWidget = MyHomePage(changePage, 'Hello');
    });
  }

  void changeToResult(var list,var answers) {
    setState(() {
      myNewWidget = ResultScreen(list,answers);
    });
  }

  @override
  Widget build(context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            body: Container(
          child: myNewWidget,
        )));
  }
}
