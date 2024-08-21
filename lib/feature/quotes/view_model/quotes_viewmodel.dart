import 'package:flutter/material.dart';
import 'package:quotes_app/feature/quotes/services/quotes_service.dart';
import '../model/quotes_model.dart';

class QuoteProvider extends ChangeNotifier {
  final QuotesService quotesService;
  final List<QuotesModel> _quotes = [];
  // int _currPage = 1;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  QuoteProvider({required this.quotesService});

  List<QuotesModel> get quotes => _quotes;

  Future<void> fetchQuotes() async {
    try {
      _isLoading = true;
      notifyListeners();
      final QuotesModel newQuote = await quotesService.getQuotes();
      _quotes.add(newQuote);
      // _currPage++; 
      notifyListeners();
    } catch (e) {
      print('Error in QuoteProvider: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // delete a quote by index
  void deleteQuote(int index) {
    _quotes.removeAt(index);
    notifyListeners();
  }
}





