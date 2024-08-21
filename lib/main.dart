import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/feature/quotes/services/quotes_service.dart';
import 'package:quotes_app/feature/quotes/view/quotes_page.dart';
import 'package:quotes_app/feature/quotes/view_model/quotes_viewmodel.dart';


void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> QuoteProvider(quotesService: QuotesService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'quotes app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const QuoteScreen(),

      ),
    );
  }
}