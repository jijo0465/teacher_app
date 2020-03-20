import 'package:flutter/widgets.dart';
import 'package:teacher_app/models/teacher.dart';


class TeacherState with ChangeNotifier {
  Teacher _teacher;

  TeacherState.instance():_teacher=Teacher(0,'None');

  String get teacherName => _teacher.name;

  setTeacher(Teacher teacher) async {
    this._teacher = teacher;
    notifyListeners();
  }
}
