import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/home_page.dart';
import 'package:test_app/servies/carts_service.dart';

void main() {
  CartsService(Dio()).getCarts();
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(dividerColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
