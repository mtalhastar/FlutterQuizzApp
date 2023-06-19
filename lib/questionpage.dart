import 'package:flutter/material.dart';
import 'package:quizz_app/data/question_data.dart';
import 'package:quizz_app/mywidgets/mybutton.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage(this.changeToHome, this.changeToResult, {super.key});
  final Function() changeToHome;
  final Function(List<dynamic> list, List<dynamic> answers) changeToResult;
  @override
  State<QuestionPage> createState() {
    // TODO: implement createState
    return _QuestionPage();
  }
}

class _QuestionPage extends State<QuestionPage> {
  void previouspage() {}
  var listOfAnswers = [];
  final questionlength = questions.length;
  var incrementCount = 0;
  void nextQuestion() {
    setState(() {
      if (incrementCount < questionlength - 1) {
        incrementCount++;
      } else {
        widget.changeToResult(
          questions,listOfAnswers
        );
      }
    });
  }

  @override
  Widget build(context) {
    final list = questions[incrementCount];
    // TODO: implement build
    return (Container(
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
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10.0),
                child: Text(
                  list.question,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              ...list.getShuffledAnswers().map(
                (e) {
                  return myButton(
                    value: e,
                    onclick: nextQuestion,
                    answers: listOfAnswers,
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 100.0,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
                child: ElevatedButton(
                    onPressed: widget.changeToHome,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                    ),
                    child: const Text(
                      'Back To Home',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )),
              ),
            ]),
      ),
    ));
  }
}
