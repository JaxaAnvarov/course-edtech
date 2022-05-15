import 'package:flutter/cupertino.dart';

class UpdateProvider extends ChangeNotifier {
  void updateProvider() {
    notifyListeners();
  }
}
