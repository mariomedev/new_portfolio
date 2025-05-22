import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/constants/constants.dart';

final aboutMeProvider = StateProvider<String>((ref) {
  return AppTexts.bio;
});

final aboutMeNameProvider = StateProvider<String>((ref) {
  return 'Bio';
});
