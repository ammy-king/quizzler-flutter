import 'question.dart';

class Quizbrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    // Question('Approximately one quarter of human bones are in the feet.', true),
    //Question('A slug\'s blood is green.', true),
    //Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    //Question('It is illegal to pee in the Ocean in Portugal.', true),
    //Question('No piece of square dry paper can be folded in half more than 7 times.',false),
    // Question('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorretAnwer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
