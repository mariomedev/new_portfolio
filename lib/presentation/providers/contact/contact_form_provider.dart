import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:myapp/core/helpers/imputs/email_imput.dart';
import 'package:myapp/domain/repo/contact_repo.dart';
import 'package:myapp/infrastruture/data/contact_data_impl.dart';
import 'package:myapp/infrastruture/repo/contact_repo_impl.dart';

import '../../../core/services/http/dio_http_client.dart';

final contactFormProvider = Provider<ContactRepo>((ref) {
  return ContactRepoImpl(
    ContactDataImpl(DioHttpClient()),
  );
});

final contactFormProviderstate =
    StateNotifierProvider<ContactFormProvider, ContactFormState>((ref) {
  final contactRepo = ref.watch(contactFormProvider);
  return ContactFormProvider(
    contactRepo: contactRepo,
  );
});

class ContactFormProvider extends StateNotifier<ContactFormState> {
  final ContactRepo contactRepo;
  ContactFormProvider({required this.contactRepo})
      : super(ContactFormState.initial());

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setEmail(String email) {
    final newEmail = EmailInput.dirty(value: email);
    state = state.copyWith(
      email: newEmail,
      isValid: Formz.validate(
        [newEmail],
      ),
    );
  }

  void setMessage(String message) {
    state = state.copyWith(message: message);
  }

  _touchEveryField() {
    state = state.copyWith(
      isPosted: true,
      email: state.email,
      isValid: Formz.validate(
        [
          state.email,
        ],
      ),
    );
  }

  Future<void> submitForm() async {
    _touchEveryField();

    if (!state.isValid) return;

    await contactRepo.submitContactForm(
      state.name,
      state.email.value,
      state.message,
    );
  }
}

class ContactFormState {
  final bool isPosted;
  final bool isValid;
  final String name;
  final EmailInput email;
  final String message;

  ContactFormState({
    this.isValid = false,
    this.isPosted = false,
    required this.name,
    required this.email,
    required this.message,
  });

  factory ContactFormState.initial() {
    return ContactFormState(
      name: '',
      email: const EmailInput.dirty(),
      message: '',
    );
  }

  ContactFormState copyWith({
    bool? isPosted,
    bool? isValid,
    String? name,
    EmailInput? email,
    String? message,
  }) {
    return ContactFormState(
      isValid: isValid ?? this.isValid,
      isPosted: isPosted ?? this.isPosted,
      name: name ?? this.name,
      email: email ?? this.email,
      message: message ?? this.message,
    );
  }

  @override
  String toString() {
    return 'ContactFormState(isPosted: $isPosted, isValid: $isValid, name: $name, email: $email, message: $message)';
  }
}
