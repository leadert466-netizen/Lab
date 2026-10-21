// lib/domain/usecases/get_products.dart
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  List<Product> call() {
    return repository.getProducts();
  }
}