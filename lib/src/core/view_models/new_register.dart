// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:retry/retry.dart';
// import 'package:stacked/stacked.dart';
// import 'package:valued/locator.dart';
// import 'package:valued/src/core/models/chart.dart';
// import 'package:valued/src/core/models/stock.dart';
// import 'package:valued/src/core/models/stock_quote.dart';
// import 'package:valued/src/core/navigation/routing_constants.dart';
// import 'package:valued/src/core/services/navigation_service.dart';
// import 'package:valued/src/core/models/search_information.dart';
// import 'package:valued/src/core/services/stock_service.dart';
// import 'package:valued/src/core/services/stocks_stream_service.dart';

// class SearchStockViewModel extends BaseViewModel {
//   // MARK: - Variables
//   String searchQuery = "";
//   String previousQuery = "";
//   List<SearchInformation> relevanceSymbols = List<SearchInformation>();
//   List<Stock> relevanceStocks = List<Stock>();
//   var charts = Map<String, Chart>();
//   var logos = Map<String, String>();

//   final stockStreamService = locator<StockStreamService>();
//   final stockService = locator<StockService>();
//   final NavigationService _navigationService = locator<NavigationService>();

//   static Timer _debounce;
//   var textFieldController = TextEditingController();

//   // MARK: - Busy keys
//   static const BusyStock = "busy_stock";
//   static const BusyQuery = "busy_query";

//   SearchStockViewModel() {
//     textFieldController.addListener(onSearchChanged);
//   }

//   void listenMarketStocks() async {
//     var stringParam = obtainStocksToListen(relevanceStocks);
//     stockStreamService.listenForStocksUpdates(stringParam);
//     stockStreamService.stocks.listen(updateList);
//   }

//   String obtainStocksToListen(List<Stock> stocksToListen) =>
//       stocksToListen.map((stock) => stock.symbol).join(',');

//   void updateList(Stock stocksStream) {
//     var index = relevanceStocks.indexOf(stocksStream);
//     if (index != -1) {
//       relevanceStocks[index] = stocksStream;
//     }
//     notifyListeners();
//   }

//   void startSearch() async {
//     if (searchQuery != "") {
//       if (searchQuery != previousQuery) {
//         previousQuery = searchQuery;
//         setBusyForObject(BusyStock, true);
//         var response = await stockService.getRelevanceStocks(searchQuery);
//         for (var currentSymbol in response) {
//           var symbol = SearchInformation.fromJson(currentSymbol);
//           StockQuote stockQuote =
//               await stockService.getStockQuote(symbol.symbol);
//           var stock = Stock(
//             name: stockQuote?.companyName ?? "",
//             symbol: symbol.symbol,
//             latestPrice: stockQuote.latestPrice?.toDouble(),
//             changePercent: stockQuote.changePercent?.toDouble(),
//           );
//           relevanceSymbols.add(symbol);
//           relevanceStocks.add(stock);
//         }
//         listenMarketStocks();
//         // MARK: - Get stock logos and charts
//         retreiveStockLogosAndCharts(relevanceStocks);
//         setBusyForObject(BusyStock, false);
//       }
//     } else {
//       clearViewModel();
//     }
//   }

//   void setSearchQuery(String newValue) {
//     setBusyForObject(BusyQuery, true);
//     searchQuery = newValue;
//     setBusyForObject(BusyQuery, false);
//   }

//   void onSearchChanged() {
//     if (_debounce?.isActive ?? false) _debounce.cancel();
//     _debounce = Timer(const Duration(milliseconds: 1000), () {
//       startSearch();
//     });
//   }

//   void retreiveStockLogosAndCharts(List<Stock> stocks) {
//     for (var stock in stocks) {
//       getStockLogoAndChart(stock.symbol);
//     }
//   }

//   void getStockLogoAndChart(String symbol) async {
//     try {
//       setBusyForObject("$BusyStock-$symbol", true);
//       var response = await retry(
//         () => runBusyFuture(
//           stockService.getStockLogoAndChart(symbol),
//           throwException: true,
//         ),
//         maxAttempts: 3,
//       );
//       var unserializedChartPoints = response["unserializedChartPoints"];
//       var chart = Chart.fromList(unserializedChartPoints, true);
//       var logo = response["logo"]["url"];

//       _updateChart(symbol, chart);
//       _updateLogo(symbol, logo);

//       setBusyForObject("$BusyStock-$symbol", false);
//     } catch (e) {
//       setBusyForObject("$BusyStock-$symbol", false);
//       setErrorForObject("$BusyStock-$symbol", true);
//     }
//   }

//   void _updateLogo(String symbol, String logo) {
//     if (logos.containsKey(symbol)) {
//       logos.update(symbol, (_) => logo);
//     } else {
//       logos[symbol] = logo;
//     }
//   }

//   void _updateChart(String symbol, Chart chart) {
//     if (charts.containsKey(symbol)) {
//       charts.update(symbol, (_) => chart);
//     } else {
//       charts[symbol] = chart;
//     }
//   }

//   void onTapStock(String symbol) {
//     _navigationService.navigateTo(StockDetailRoute, arguments: symbol);
//   }

//   void onTapCancel() {
//     clearViewModel();
//   }

//   void clearViewModel() {
//     setBusyForObject(BusyQuery, true);
//     setBusyForObject(BusyStock, true);
//     searchQuery = "";
//     previousQuery = "";
//     relevanceSymbols = new List<SearchInformation>();
//     relevanceStocks = new List<Stock>();
//     setBusyForObject(BusyQuery, false);
//     setBusyForObject(BusyStock, false);
//   }
// }
