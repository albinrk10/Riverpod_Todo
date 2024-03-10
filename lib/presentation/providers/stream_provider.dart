import 'package:flutter_rivepord_providers/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userInChatProvider = StreamProvider<List<String>>((ref) async* {
  final names = <String>[];
  yield [];

  await for (final name in RandomGenerator.randomNameStream()){
    names.add(name);
    yield names;
  }
});
