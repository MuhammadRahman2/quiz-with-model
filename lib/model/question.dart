import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Question {
  final int? id;
  final String? questionText;
  final String? imageUrl;
  final List<Answer>? answers;

  Question({
    this.id,
    this.questionText,
    this.imageUrl,
    this.answers,
  });

}

class Answer {
  final String? text;
  final int? score;
  final bool? checker;

  Answer({this.text, this.score, this.checker});

}
