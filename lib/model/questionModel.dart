class Questions {
  const Questions(this.question, this.answers,
    this.correctAnswer,
  );

  final String question;
  final List<String> answers;
  final String correctAnswer;

  List<String> getShuffledAnswers() {
    var list = List.of(answers);
    list.shuffle();
    return list;
  }
}
