import 'package:flutter/material.dart';

@immutable
abstract class CoursesState{
  const CoursesState();
}

class CoursesInitial extends CoursesState{
  const CoursesInitial();
}

class CoursesLoading extends CoursesState{
  const CoursesLoading();
}

class CoursesError extends CoursesState{
  final String errorMessage;
  const CoursesError(this.errorMessage);
}