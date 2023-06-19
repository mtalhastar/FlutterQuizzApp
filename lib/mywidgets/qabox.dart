import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qabox extends StatelessWidget {
  Qabox(this.question, this.answer,{super.key});
  dynamic question;
  dynamic answer;
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
      decoration: BoxDecoration(
        color: question.correctAnswer == answer
            ? Color.fromARGB(255, 0, 26, 97)
            : Color.fromARGB(128, 255, 46, 43),
      ),
      child: Center(
        child: Column(
          children: [
            Center(
              child: Text(
                question.question,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                question.correctAnswer,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
