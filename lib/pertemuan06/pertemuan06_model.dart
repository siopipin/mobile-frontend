// To parse this JSON data, do
//
//     final todosModel = todosModelFromJson(jsonString);

import 'dart:ffi';

import 'package:meta/meta.dart';
import 'dart:convert';

class TodosModel {
  TodosModel({
    @required this.todos,
  });

  List<Todo>? todos;

  factory TodosModel.fromRawJson(String str) =>
      TodosModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TodosModel.fromJson(Map<String, dynamic> json) => TodosModel(
        todos: List<Todo>.from(json["todos"].map((x) => Todo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "todos": List<dynamic>.from(todos!.map((x) => x.toJson())),
      };
}

class Todo {
  Todo({
    @required this.id,
    @required this.title,
    @required this.desc,
    @required this.status,
  });

  String? id;
  String? title;
  String? desc;
  Bool? status;

  factory Todo.fromRawJson(String str) => Todo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        id: json["id"],
        title: json["title"],
        desc: json["desc"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "desc": desc,
        "status": status,
      };
}
