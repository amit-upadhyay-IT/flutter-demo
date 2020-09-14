
/*
 * A model for representing the question and its options
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionAndOptions {
  String question;
  List<String> options;
  String correctOption;

  QuestionAndOptions(String question, List<String> options, String correctOption) {
    this.question = question;
    this.options = options;
    this.correctOption = correctOption;
  }
}

/*
 * returns a list of question and its options
 * We can either fetch it from db or do an API call to get it
 */
List<QuestionAndOptions> getQuestionAndOptions() {
  List<QuestionAndOptions> res = new List();
  res.add(QuestionAndOptions("question1", ["option1_1", "option1_2"], "option1_2"));
  res.add(QuestionAndOptions("question2", ["option2_1", "option2_2"], "option2_2"));
  res.add(QuestionAndOptions("question3", ["option3_1", "option3_2"], "option3_1"));
  return res;
}


class QuestionBodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new QuestionBodyState();
  }

}


class QuestionBodyState extends State<QuestionBodyWidget> {

  int questionIndex = 0;

  List<QuestionAndOptions> questionsList = getQuestionAndOptions();

  /*
   * constructs the widget list using the list of string
   */
  List<Widget> getWidgetUsingOptionsList(List<String> options) {
    List<Card> optionsWidgets = new List();
    for (String option in options) {
      optionsWidgets.add(Card(
        child: FlatButton(
          onPressed: _incrementQuestionCount,
          child: Text(
            option,
            style: TextStyle(
              fontSize: 15,
              color: Colors.blue,
            ),
          ),
        )
      ));
    }
    return optionsWidgets;
  }

  void _incrementQuestionCount() {
    if (questionIndex+2 > questionsList.length) {
      print("No more questions");
      // display results
    } else {
      setState(() {
        questionIndex++;
        print(questionIndex);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // get height of screen to fix height of container
    double height = MediaQuery.of(context).size.height;
    // display the question here
    return Container(
      height: height/2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              questionsList[questionIndex].question,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(  // for displaying the options
            flex: 3,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
              children: getWidgetUsingOptionsList(questionsList[questionIndex].options),
            ),
          )
        ],
      ),
    );
  }

}
