import '../../domain/domain.dart';

class ContactRepoImpl extends ContactRepo {
  final ContactData contactData;
  ContactRepoImpl(this.contactData);

  @override
  Future<bool> submitContactForm(
      String name, String email, String message) async {
    return await contactData.submitContactForm(name, email, message);
  }
}
