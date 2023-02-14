import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;
  final VoidCallback? resetHandler;

  const Result({super.key, this.resultScore, this.resetHandler});

  String get resultPhrase {
    // String resultText;
    if (resultScore! <= 45) {
      return 'sorry!, You are fail in test';
    } else if (resultScore! <= 60) {
      return 'congrat, You\'re pass the test in good mark';
    } else if (resultScore! <= 16) {
      return 'congrat, Your\'re pass the test in excellent mark';
    } else {
      return 'congrat!, Your\'re pass the test in Outstanding mark';
    }
    // return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          resultScore! < 50
              ? Image.asset('assets/fail.jpg')
              : Image.asset(
                  'assets/winner.JPEG',
                  height: 150,
                ),
          Text(
            resultPhrase.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '$resultScore /100',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetHandler,
              child: const Text(
                'Restart Quiz!',
              )),
        ],
      ),
    );
  }
}
