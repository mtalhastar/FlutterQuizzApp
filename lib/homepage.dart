import 'package:flutter/material.dart';
import 'package:quizz_app/mywidgets/mybutton.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(this.changePage, this.title, {super.key});
  final Function() changePage;
  final String title;
  @override
  State<MyHomePage> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(63, 0, 251, 1),
          Color.fromARGB(255, 8, 83, 144)
        ]),
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Container(
            margin: const EdgeInsets.all(40.0),
            child: Text('Welcome To QuizApp',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
              onPressed: widget.changePage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
              ),
              child: const Text(
                'Start',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
        ]),
      ),
    );
  }
}
