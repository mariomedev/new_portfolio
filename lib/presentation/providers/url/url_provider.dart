import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/core/services/url/url.dart';

final urlProvider = Provider<Url>((ref) {
  return UrlLaunch();
});
