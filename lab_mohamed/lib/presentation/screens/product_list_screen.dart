// lib/presentation/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import '../widgets/product_list_item.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products;

  const ProductListScreen({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Store - List View'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductListItem(product: products[index]);
        },
      ),
    );
  }
}