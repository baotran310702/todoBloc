import 'package:equatable/equatable.dart';
import 'package:todos/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'todos_state.dart';
part 'todos_event.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodoLoading()) {
    on<LoadTodos>(_onLoadTodos);
    on<AddTodo>(_onAddTodos);
    on<UpdateTodo>(_onUpdateTodos);
    on<DeleteTodo>(_onDeleteTodos);
  }

  _onLoadTodos(LoadTodos event, Emitter emit) async {
    emit(TodosLoaded(todos: event.todos));
  }

  _onAddTodos(AddTodo event, Emitter emit) async {
    final state = this.state;
    if (state is TodosLoaded) {
      emit(TodosLoaded(todos: List.from(state.todos)..add(event.todos)));
    }
  }

  _onUpdateTodos(UpdateTodo event, Emitter emit) async {}
  _onDeleteTodos(DeleteTodo event, Emitter emit) async {}
}
