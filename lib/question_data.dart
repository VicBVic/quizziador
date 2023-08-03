class QuestionData {
  final String text;
  final List<String> options;
  final int correctOption;

  QuestionData({
    required this.options,
    required this.correctOption,
    required this.text,
  });
}
