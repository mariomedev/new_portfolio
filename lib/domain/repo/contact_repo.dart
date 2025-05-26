abstract class ContactRepo {
  Future<bool> submitContactForm(String name, String email, String message);
}
