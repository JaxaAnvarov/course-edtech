import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:course_ed_tech/cubit/courses_cubit/courses_state.dart';
import 'package:flutter/material.dart';

class CoursesCubit extends Cubit<CoursesState> {
  TextEditingController searchController;
  BuildContext context;

  CoursesCubit(this.searchController, this.context)
      : super(const CoursesInitial());

  void hideKeyboard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
