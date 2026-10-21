// lib/presentation/screens/product_grid_screen.dart
import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import '../widgets/product_grid_tile.dart';

class ProductGridScreen extends StatelessWidget {
  final List<Product> products;

  const ProductGridScreen({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Store - Grid View'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return ProductGridTile(product: products[index]);
        },
      ),
    );
  }
}