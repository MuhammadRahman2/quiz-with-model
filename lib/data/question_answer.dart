import 'package:quiz1/model/question.dart';

  List<Question>? questions = [
    Question(
      id: 01,
      questionText: 'Q1. Who created Flutter?',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/5/54/Google%2C_Apple%2C_Facebook%2C_Amazon_and_Microsoft.png',
      answers: [
        Answer(text: 'Facebook', score: 0, checker: false),
        Answer(text: 'Google', score: 20, checker: true),
        Answer(text: 'Adobe', score: 0, checker: false),
        Answer(text: 'Microsoft', score: 0, checker: false)
      ],
    ),
    Question(
      id: 02,
      questionText: 'Q2. What is Flutter?',
      imageUrl:
          'https://www.swtestacademy.com/wp-content/uploads/2022/06/flutter.webp',
      answers: [
        Answer(text: 'Android Development Kit', score: 0, checker: false),
        Answer(text: 'IOS Development Kit', score: 0, checker: true),
        Answer(text: 'Web Development Kit', score: 0, checker: false),
        Answer(
            text:
                'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
            score: 20,
            checker: false)
      ],
    ),
    Question(
        id: 03,
        questionText: 'Q3.Which programing language is used by Flutter',
        imageUrl:
            'https://cdn.mycplus.com/mycplus/wp-content/uploads/2009/02/programming-languages.jpg',
        answers: [
          Answer(text: 'Ruby', score: 0, checker: false),
          Answer(text: 'Dart', score: 20, checker: true),
          Answer(text: 'C++', score: 0, checker: false),
          Answer(text: 'Kotlin', score: 0, checker: false),
        ]),
    Question(
        id: 04,
        questionText: 'Q4. Who created Dart programing language?',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTViqHe2RyM7HVKf3FnS-bdSSv9YSkQTtgupw&usqp=CAU',
        answers: [
          Answer(text: 'Lars Bak and Kasper Lund', score: 20, checker: true),
          Answer(text: 'Brendan Eich', score: 0, checker: false),
          Answer(text: 'Bjarne Stroustrup', score: 0, checker: false),
          Answer(text: 'Jeremy Ashkenas', score: 0, checker: false),
        ]),
    Question(
        id: 05,
        questionText:
            'Q5. Is Flutter for Web and Desktop available in stable version?',
        imageUrl:
            'https://www.angularminds.com/site_data/static/images/flutter-releases/flutter-2.0.png',
        answers: [
          Answer(text: 'Yes', score: 0, checker: false),
          Answer(text: 'No', score: 20, checker: true),
        ]),
  ];


 
// final questions = [
//   {
//     'questionText': 'Q1. Who created Flutter?',
//     'answers': [
//       {'text': 'Facebook', 'score': 0},
//       {'text': 'Adobe', 'score': 0},
//       {'text': 'Google', 'score': 10},
//       {'text': 'Microsoft', 'score': 0},
//     ],
//   },
//   {
//       'questionText': 'Q2. What is Flutter?',
//       'answers': [
//         {'text': 'Android Development Kit', 'score': 0},
//         {'text': 'IOS Development Kit', 'score': 0},
//         {'text': 'Web Development Kit', 'score': 0},
//         {'text':'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
//           'score': 10
//         },
//       ],
//     },
//   {
//       'questionText': ' Q3. Which programing language is used by Flutter',
//       'answers': [
//         {'text': 'Ruby', 'score': 0},
//         {'text': 'Dart', 'score': 10},
//         {'text': 'C++', 'score': 0},
//         {'text': 'Kotlin', 'score': 0},
//       ],
//     },
//     {
//       'questionText': 'Q4. Who created Dart programing language?',
//       'answers': [
//         {'text': 'Lars Bak and Kasper Lund', 'score': 10},
//         {'text': 'Brendan Eich', 'score': -2},
//         {'text': 'Bjarne Stroustrup', 'score': -2},
//         {'text': 'Jeremy Ashkenas', 'score': -2},
//       ],
//     },
//      {
//       'questionText':'Q5. Is Flutter for Web and Desktop available in stable version?',
//       'answers': [
//         {'text': 'Yes','score': 0,
//         },
//         {'text': 'No', 'score': 10},
//       ],
//     },
// ];

