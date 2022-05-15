import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:course_ed_tech/screens/courses/course_page.dart';
import 'package:course_ed_tech/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  int pageIndexOfBottomNavigationBar = 0;

  BottomNavigationBarCubit() : super(BottomNavigationBarInitial());

  List pagesOfBottomNavBar =  [
    CoursePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  changePageOfBottomNavigationBar(tappedIndexOfBottomNavigationBar) {
    pageIndexOfBottomNavigationBar = tappedIndexOfBottomNavigationBar;
    emit(BottomNavigationBarInitial());
  }
}
