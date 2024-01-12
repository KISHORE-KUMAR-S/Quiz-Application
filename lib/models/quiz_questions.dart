class QuizQuestion {
  const QuizQuestion(this.text, this.answers); // constructor

  final String text;
  final List<String> answers;

  List<String> getShuffledChoices() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
