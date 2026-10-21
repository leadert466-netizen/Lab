// TODO Implement this library.
// lib/domain/repositories/product_repository.dart
import '../entities/product.dart';

abstract class ProductRepository {
  List<Product> getProducts();
}