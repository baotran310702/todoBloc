part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class TodoLoading extends TodosState {}

class TodosLoaded extends TodosState {
  final List<TodosModel> todos;

  const TodosLoaded({
    this.todos = const <TodosModel>[],
  });

  @override
  List<Object> get props => [todos];
}

class TodosError extends TodosState {}
