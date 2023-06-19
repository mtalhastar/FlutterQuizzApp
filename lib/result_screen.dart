import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/mywidgets/qabox.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen(this.list, this.answers, {super.key});
  List<dynamic> list;
  List<dynamic> answers;
  @override
  State<ResultScreen> createState() {
    // TODO: implement createState
    return _ResultScreen();
  }
}

class _ResultScreen extends State<ResultScreen> {
  var score = 0;

  void calculateScore() {
    score = 0;
    for (int i = 0; i < widget.list.length; i++) {
      if (widget.list[i].correctAnswer == widget.answers[i]) {
        score++;
      }
    }
  }

  @override
  Widget build(context) {
    calculateScore();
    // TODO: implement build
    return ((Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(63, 0, 251, 1),
          Color.fromARGB(255, 8, 83, 144)
        ]),
      ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 0.0),
                child: Center(
                  child: Text(
                    'Your Score \n         $score',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                height: 400,
                child: SingleChildScrollView(
                  child: Column(children: [
                    for (int i = 0; i < widget.list.length; i++)
                      Qabox(widget.list[i], widget.answers[i]),
                  ]),
                ),
              ),
            ]),
      ),
    )));
  }
}
