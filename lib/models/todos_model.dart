import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class TodosModel extends Equatable {
  final String id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCancelled;

  TodosModel(
      {required this.id,
      required this.task,
      required this.description,
      this.isCancelled,
      this.isCompleted}) {
    isCancelled = isCancelled ?? false;
    isCompleted = isCompleted ?? false;
  }

  TodosModel copyWith(
      {String? id,
      String? task,
      String? description,
      bool? isCompleted,
      bool? isCancelled}) {
    return TodosModel(
        id: id ?? this.id,
        task: task ?? this.task,
        description: description ?? this.description,
        isCancelled: isCancelled ?? this.isCancelled,
        isCompleted: isCompleted ?? this.isCompleted);
  }

  @override
  List<Object?> get props => [id, task, description, isCompleted, isCancelled];
}
