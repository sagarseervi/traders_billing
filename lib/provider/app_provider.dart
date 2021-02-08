import 'package:flutter/material.dart';
import 'package:traders_billing/helpers/enumerators.dart';

class AppProvider with ChangeNotifier {
  DisplayedPage currentPage;

  AppProvider.init() {
    changeCurrentPage(DisplayedPage.DASHBOARD);
  }

  changeCurrentPage(DisplayedPage newPage) {
    currentPage = newPage;
    notifyListeners();
  }
}
