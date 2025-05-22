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
  //Bio

// I'm Mario Melo, a 23-year-old software engineer 👨‍💻 passionate about mobile development 📱, 
// especially with Flutter and Dart 🦋. I love building clean, creative, and effective apps ✨ 
// that solve real problems ✅.

// I'm currently studying Systems Engineering at Fundación Universitaria San José 🎓, 
// and I hold a technical degree in Industrial Maintenance from SENA 🛠️. I complement 
// my academic background with online courses 💻 and hands-on projects 🚀 that challenge me to grow every day 🌱.

// I enjoy working in teams 🤝, reading 📚, going to the gym 🏋️‍♂️, and exploring new places 🌍. 
// I'm also very into entrepreneurship 💡 and always looking for ways to bring ideas to life 🔥.

// I'm curious 🧐, disciplined 📅, and committed to continuous learning 📈. Whether it's a 
// line of code or a business idea, I believe in constant improvement 🔄 and the power of collaboration 🤗.



 """;
  static const String interest = r"""
  //  Interests

// I really enjoy working in teams 🤝 and sharing ideas 💡 with others —
// I believe collaboration is key to building great things 🛠️. I'm also 
// into reading 📚, especially books that help me grow personally or 
// professionally 🌱.

// Going to the gym 🏋️‍♂️ is part of my routine — it helps me stay focused 
// and disciplined 🎯. I love traveling ✈️ whenever I can, discovering new 
// places 🌍 and perspectives 👀. I'm also passionate about entrepreneurship 🚀, 
// and I'm always exploring ways to turn ideas into real, valuable projects 💼.



 """;
  static const String education = r"""
  //Education
  
// I'm currently pursuing a degree in Systems Engineering 🎓 
// at Fundación Universitaria San José. This program has 
// helped me build a strong foundation in computer science 💻 
// and software development concepts 🛠️.

// I also completed a technical degree in Industrial Maintenance 🏭 
// at SENA in 2018, which gave me valuable insights into systems, 
// structure, and practical problem-solving 🧩.

// Along the way, I’ve taken several online courses to strengthen 
// my skills, especially in mobile development with Flutter 🦋 and Dart 🎯.
// These include:
// - Programming Fundamentals 💡
// - Flutter (Legacy, Intermediate with Animations, and Advanced) 🚀
// - SOLID 🧱
// - Dart programming 🐦
// - Flutter Mapp Course 📱
// - Algorithmics and Data Structure 📊



 """;
  static const String experience = r"""
 // Experience

// 🛠 Software Engineer – Manos Remotas (HostDime) / Positivo S+
// Dec 2023 – Present
// Working on hardware connectivity tasks such as cable modifications, 
// research, labeling, and equipment rack organization. This role has helped 
// me develop a detail-oriented mindset and improve my understanding of 
// data center operations.

// 💻 Programmer Analyst – Peacedev
// Feb 2023 – May 2023
// Built UI screens, connected APIs, handled sockets, push notifications, 
// and integrated login with Google and Apple. Gained experience using 
// SCRUM methodology and working in agile teams.

// 🔧 Maintenance Assistant – Papeles y Corrugados Andina
// Apr 2022 – Sep 2022
// Performed preventive and corrective maintenance on industrial equipment. 
// Ensured safety protocols and collaborated with the team on special tasks.

// 🏭 Production Operator – Japan
// Jun 2021 – Dec 2021
// Operated and maintained industrial machinery, including mold changes 
// and preventive maintenance tasks.


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
