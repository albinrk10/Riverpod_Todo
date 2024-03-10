import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../config/config.dart';
import '../../domain/domain.dart';

const _uuid = Uuid();

// final todosStateNotifierProvider = StateNotifierProvider<Notificador,Estado>((ref) {
//   return
// });

class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier():super([
    Todo(
        id: _uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null),
    Todo(
        id: _uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: DateTime.now()),
    Todo(
        id: _uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null),
    // Todo(
    //     id: _uuid.v4(),
    //     description: RandomGenerator.getRandomName(),
    //     completedAt: DateTime.now()),
    // Todo(
    //     id: _uuid.v4(),
    //     description: RandomGenerator.getRandomName(),
    //     completedAt: null),

  ]);
  
}
