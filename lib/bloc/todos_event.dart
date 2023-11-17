part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class LoadTodos extends TodosEvent {
  final List<TodosModel> todos;

  const LoadTodos({
    this.todos = const <TodosModel>[],
  });

  @override
  List<Object> get props => [];
}

class AddTodo extends TodosEvent {
  final TodosModel todos;

  const AddTodo({
    required this.todos,
  });

  @override
  List<Object> get props => [todos];
}

class UpdateTodo extends TodosEvent {
  final TodosModel todos;

  const UpdateTodo({required this.todos});

  @override
  List<Object> get props => [todos];
}

class DeleteTodo extends TodosEvent {
  final TodosModel todos;

  const DeleteTodo({required this.todos});

  @override
  List<Object> get props => [todos];
}
