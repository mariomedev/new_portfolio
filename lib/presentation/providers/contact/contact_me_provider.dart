import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/core.dart';

final codeContactProvider =
    StateNotifierProvider<ContactNotifier, ContactState>((ref) {
  return ContactNotifier();
});

class ContactNotifier extends StateNotifier<ContactState> {
  ContactNotifier()
      : super(ContactState(
            name: '',
            email: '',
            message: '',
            date: '',
            code: AppTexts.codeContact)) {
    updateCode();
  }

  void sendMessage(Map<String, String> message) {
    state = state.copyWith(
      name: message['name'] ?? state.name,
      email: message['email'] ?? state.email,
      message: message['message'] ?? state.message,
      date: DateTime.now().toString(),
    );
    updateCode();
  }

  void updateCode() {
    final date = DateTime.now();
    state = state.copyWith(
      date:
          '${date.day}/${date.month}/${date.year} : ${date.hour}:${date.minute}',
    );
    state = state.copyWith(code: '''
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Map<String, String> message = {
    "name": "${state.name}",
    "email": "${state.email}",
    "message": "${state.message}",
    "date": "${state.date}",
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





''');
  }
}

class ContactState {
  final String name;
  final String email;
  final String message;
  final String date;
  final String code;

  ContactState({
    required this.name,
    required this.email,
    required this.message,
    required this.date,
    required this.code,
  });

  ContactState copyWith({
    String? name,
    String? email,
    String? message,
    String? date,
    String? code,
  }) {
    return ContactState(
      name: name ?? this.name,
      email: email ?? this.email,
      message: message ?? this.message,
      date: date ?? this.date,
      code: code ?? this.code,
    );
  }
}
