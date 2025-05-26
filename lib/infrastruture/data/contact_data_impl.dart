import '../../core/core.dart';
import '../../domain/domain.dart';

class ContactDataImpl extends ContactData {
  final HttpClient _httpClient;

  ContactDataImpl(this._httpClient);

  @override
  Future<bool> submitContactForm(
    String name,
    String email,
    String message,
  ) async {
    try {
      final baseUrl = ApiEndPoints.apiUrl;
      final apiKey = 'Bearer ${ApiEndPoints.apiKey}';
      await _httpClient
          .request('$baseUrl/emails', method: HttpMethod.post, headers: {
        'Authorization': apiKey,
        'Content-Type': 'application/json',
      }, data: {
        "from": "Acme <onboarding@resend.dev>",
        "to": ["delivered@resend.dev"],
        "subject": name,
        "html": "<p>$message, From: $email</p>"
      });
      return true;
    } catch (e) {
      Future.error('Failed to submit contact form: $e');
      return false;
    }
  }
}
