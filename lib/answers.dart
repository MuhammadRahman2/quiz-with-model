import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String? answers;
  final VoidCallback? tapNextQ;
  const Answers({super.key, this.answers, this.tapNextQ});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapNextQ,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 04, horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        // padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          answers.toString(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


// Container(
//   color: Colors.green,
//   child: Material(
//     child: RadioListTile<Meridiem>(
//       tileColor: Colors.red,
//       title: const Text('AM'),
//       groupValue: Meridiem.am,
//       value: Meridiem.am,
//       onChanged:(Meridiem? value) { },
//     ),
//   ),
// )
