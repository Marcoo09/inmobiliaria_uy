import 'dart:async';
import 'package:flutter/material.dart';
import 'package:inmobiliariauy/src/core/services/navigation_service.dart';
import 'package:inmobiliariauy/src/locator.dart';
import 'package:stacked/stacked.dart';

class NewRegisterViewModel extends BaseViewModel {
  // MARK: - Variables
  String searchQuery = "";

  final NavigationService _navigationService = locator<NavigationService>();

  var textFieldController = TextEditingController();

  // MARK: - Busy keys
  // static const BusyStock = "busy_stock";

  SearchStockViewModel() {
    textFieldController.addListener(onSearchChanged);
  }

  void onSearchChanged() {}

  void setSearchQuery(String newValue) {
    // setBusyForObject(BusyQuery, true);
    searchQuery = newValue;
    // setBusyForObject(BusyQuery, false);
  }

  void onTapStock(String symbol) {
    // _navigationService.navigateTo(StockDetailRoute, arguments: symbol);
  }

  void onTapCancel() {
    // clearViewModel();
  }
}
