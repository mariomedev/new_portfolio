class AppTexts {
  AppTexts._();

  //home Screen
  static const String linkGitHubName = " @mario.melo.dev";
  static const String linkdinName = "mario.melo.dev";
  static const String profession = "Mobile Developer";
  static const String nameDeveloper = "Mario_Melo";
  static const String gitHub = "https://github.com/mariomedev";

  // contact

  static const String phone = "+57 300 508 8310";
  static const String email = "mario.melo.dev@gmail.com";

// about me
  static const String bio = r"""
 /**
 * About me
 * I am a 23-year-old mobile development enthusiast
 * with a passion for technology and continuous learning.
 * Dedicated to honing my skills, I focus on creating
 * innovative and effective mobile applications by
 * combining creativity with technical expertise.
 * 
 * Disciplined and motivated, I am committed 
 * to self-improvement and staying updated 
 * with the latest industry trends.
 * As an avid reader and learner, I actively 
 * explore new topics to expand my knowledge and 
 * enhance my development capabilities.
 */

 """;
  static const String interest = r"""
 /**
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 *  
 * 
 * 
 */
 """;
  static const String education = r"""
 /**
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 *  
 * 
 * 
 */
 """;

  static const String codeContact = r'''
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Map<String, String> message = {
    "name": "",
    "email": "",
    "message": "",
    "date": "Thu 21 Apr",
  };

  void send(Map<String, String> msg) {
    ref.read(contactProvider.notifier).sendMessage(msg);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contact Me")),
        body: Center(
          child: ElevatedButton(
            key: Key('sendBtn'),
            onPressed: () => send(message),
            child: Text("Enviar"),
          ),
        ),
      ),
    );
  }
}





''';
}
