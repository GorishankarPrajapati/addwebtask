import "package:flutter/foundation.dart";

class NavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setDashBoard() {
    _currentIndex = 0;
    notifyListeners();
  }

  void setCustomer() {
    _currentIndex = 1;
    notifyListeners();
  }

  void setKhata() {
    _currentIndex = 2;
    notifyListeners();
  }

  void setOrders() {
    _currentIndex = 3;
    notifyListeners();
  }
}
