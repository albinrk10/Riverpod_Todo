import 'package:flutter_rivepord_providers/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Solo lectura
final simpleNameProvider = Provider.autoDispose<String>((ref) {
  
  return RandomGenerator.getRandomName();
});
