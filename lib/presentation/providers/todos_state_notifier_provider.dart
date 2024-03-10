import 'package:flutter_rivepord_providers/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../config/config.dart';
import '../../domain/domain.dart';

const _uuid = Uuid();

final filteredGuestProvider = StateProvider<List<Todo>>((ref) {
 final selectedfilter = ref.watch(todoFilterProvider);
 final todos = ref.watch(todosStateNotifierProvider);

 switch (selectedfilter){
    case TodoFilter.all:
      return todos;
    case TodoFilter.completed:
      return todos.where((element) => element.done).toList();
    case TodoFilter.pending:
      return todos.where((element) => !element.done).toList();
 }
});

final todosStateNotifierProvider =
    StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});

class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier()
      : super([
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
  void addTodo() {
    state = [
      ...state,
      Todo(
          id: _uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null)
    ];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id != id) return todo;

      if (todo.done) return todo.copyWith(completedAt: null);

      return todo.copyWith(completedAt: DateTime.now());
    }).toList();
  }
}
