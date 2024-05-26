import 'package:flutter/material.dart';
import 'package:shopping_sample_app/global_variables.dart';
import 'package:shopping_sample_app/home_page.dart';
import 'package:shopping_sample_app/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(254, 206, 1, 1),
          primary: const Color.fromRGBO(254, 206, 1, 1),
        ),
        fontFamily: 'Lato',
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          prefixIconColor: Color.fromARGB(119, 119, 119, 1),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
