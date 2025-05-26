class ApiEndPoints {
  ApiEndPoints._();
  static const apiUrl = String.fromEnvironment('API_URL');
  static const apiKey =
      String.fromEnvironment('API_KEY', defaultValue: 'default_key');
}
