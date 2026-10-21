// lib/main.dart
import 'package:flutter/material.dart';
import 'data/datasources/product_local_data_source.dart';
import 'data/repositories/product_repository_impl.dart';
import 'domain/usecases/get_products.dart';
import 'presentation/screens/product_grid_screen.dart';
import 'presentation/screens/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localDataSource = ProductLocalDataSourceImpl();
    final repository = ProductRepositoryImpl(localDataSource: localDataSource);
    final getProducts = GetProducts(repository);
    final products = getProducts();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Store Catalog',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      // Switch between ProductListScreen and ProductGridScreen to view each screen
      home: ProductListScreen(products: products),
      // home: ProductGridScreen(products: products),
    );
  }
}