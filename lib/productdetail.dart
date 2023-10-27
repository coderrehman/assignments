import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productName;

  ProductDetailsPage({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Text("Strawberry"),
      ),
    );
  }
}
