import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/quotes_model.dart';
import 'package:quotes_app/core/constant/api.dart';

class QuotesService {
  Future<QuotesModel> getQuotes() async {
    try {
      final response = await http.get(Uri.parse(ApiEndPoints.baseUrl));
      if (response.statusCode == 200) {
        // final Map<String, dynamic> data = json.decode(response.body);
        final Map<String, dynamic> data = json.decode(response.body);
        return QuotesModel.fromJson(data);
        // final List<dynamic> quotes = data['data'];
        // return quotes.map((quote) => QuotesModel.fromJson(quote)).toList();
      } else {
        throw Exception('failed to load quotes :(');
      }
    } catch (e) {
      print('Error in QuoteService: $e');
      rethrow;
    }
  }
}
