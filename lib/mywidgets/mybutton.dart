import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myButton extends StatelessWidget {
  myButton(
      {required this.value,
      required this.onclick,
      required this.answers,
      super.key});
  final String value;
  final void Function() onclick;
  final List<dynamic> answers;

  void pushToanswer() {
    answers.add(value);
    onclick();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
      child: ElevatedButton(
          onPressed: pushToanswer,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 51, 132, 197),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0))),
          child: Text(
            value,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 16,
            ),
          )),
    );
  }
}
