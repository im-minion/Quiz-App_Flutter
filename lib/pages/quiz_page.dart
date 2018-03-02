import 'package:flutter/material.dart';
import '../utils/quiz.dart';
import '../utils/question.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();

}

class QuizPageState extends State<QuizPage> {

  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Elon Musk is human", false),
    new Question("Pizza is healthy", false),
    new Question("Flutter is awsome", true)
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayVisible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

//  void handleAnswer(bool answer) {
//    isCorrect = (currentQuestion.answer == answer);
//    quiz.answer(isCorrect);
//    this.setState(() {
//      overlayShouldBeVisible = true;
//    });
//  }
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column( //this is main page
          children: <Widget>[
            new AnswerButton(true, () => print("true")),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => print("false")),

          ],
        ),
        overlayVisible == true ? new CorrectWrongOverlay(true) : new Container()
      ],
    );
  }

}