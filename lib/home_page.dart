import 'package:flutter/material.dart';
import 'package:quiz1/model/question.dart';
import 'package:quiz1/result.dart';

import 'answers.dart';
import 'data/question_answer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});

  int index = 0;
  int totalScore = 0;

  void resetQuiz() {
    setState(() {
      index=0;
      totalScore = 0;
    });
  }

  getIncrement(int score) {
    totalScore = totalScore + score;
    if (index < questions!.length) {
      setState(() {
        index++;
      });
    } else {
      // print('not more question');
    }
  }

  // checker() {
  //   if (questions![index].answers![0].checker ==true) {
  //     Icon(Icons.done);
  //   } else {
  //     Icon(Icons.highlight_remove);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: index < questions!.length
              ? const Text('Quiz')
              : const Text('Result'),
        ),
        body: index < questions!.length
            ? Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        height: 150,
                        // width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    questions![index].imageUrl.toString()))),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          questions![index].questionText.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        // Image.network(questions![index].imageUrl
                      ),

                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),

                      Container(
                        height: 220,
                        child: ListView.builder(
                          itemCount: questions![index].answers!.length,
                          itemBuilder: (context, i) {
                            return Answers(
                              answers:
                                  questions![index].answers![i].text.toString(),
                              tapNextQ: () => getIncrement(
                                questions![index].answers![i].score!.toInt(),
                              ),
                            );
                          },
                        ),
                      ),

                      const Spacer(),
                      Text('${questions![index].id} / 05'),
                      const SizedBox(
                        height: 10,
                      )
                    ]),
              )
            : Result(
                resultScore: totalScore,
                resetHandler: resetQuiz,
              ));
  }
}

// questions![index].answers![i].checker ? const Icon(Icons.done) :const Icon(Icons.highlight_remove),