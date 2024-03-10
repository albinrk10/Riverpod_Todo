
import 'package:flutter_rivepord_providers/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//stateprovider --sniper
final counterProvider = StateProvider<int>((ref) {
  return 5;
});

final isDarkModeProvider = StateProvider<bool>((ref) {
  return false;
});

final randomNameProvider = StateProvider<String>((ref) {
  return RandomGenerator.getRandomName() ;
});