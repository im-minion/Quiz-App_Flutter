import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  @override
  State createState() => new QuestionTextState();

}

class QuestionTextState extends State<QuestionText>
    with SingleTickerProviderStateMixin {

  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnumationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fontSizeAnumationController = new AnimationController(
        duration: new Duration(milliseconds: 500),
        vsync: this);
    _fontSizeAnimation = new CurvedAnimation(
        parent: _fontSizeAnumationController, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(() => this.setState(() {}));
    _fontSizeAnumationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _fontSizeAnumationController.dispose();
  }

  @override
  void didUpdateWidget(QuestionText oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget._question != widget._question) {
      _fontSizeAnumationController.reset();
      _fontSizeAnumationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new Padding(
        child: new Center(
          child: new Text(
            "Statement " + widget._questionNumber.toString() + ": " +
                widget._question,
            style: new TextStyle(fontSize: _fontSizeAnimation.value * 15),
          ),
        ),
        padding: new EdgeInsets.symmetric(vertical: 20.0),
      ),
    );
  }

}