// lib/domain/entities/product.dart
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final bool isNew;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    this.isNew = false,
  });
}