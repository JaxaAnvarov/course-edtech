import 'package:flutter/material.dart';

@immutable
abstract class BottomNavigationBarState {
  const BottomNavigationBarState();
}

class BottomNavigationBarInitial extends BottomNavigationBarState {}

class BottomNavigationBarLoading extends BottomNavigationBarState {}
