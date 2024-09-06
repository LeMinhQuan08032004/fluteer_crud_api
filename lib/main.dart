

import 'package:flutter/material.dart';
import 'package:flutter_crud_api/pages/cart_page.dart';
import 'package:flutter_crud_api/pages/product_page.dart';
import 'package:flutter_crud_api/services/cart_service.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CartService cartService = CartService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      initialRoute: '/',
      routes: {
        '/': (context) => ProductPage(cartService: cartService), // Pass cartService to ProductPage
        '/cart': (context) => CartPage(cartService: cartService),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}