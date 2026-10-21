import '../models/product_model.dart';

abstract class ProductLocalDataSource {
  List<ProductModel> getProducts();
}

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  @override
  List<ProductModel> getProducts() {
    return const [
      ProductModel(
        id: '1',
        name: 'Wireless Noise-Canceling Headphones',
        description: 'High-fidelity audio with active noise cancellation and long battery life.',
        price: 199.99,
        imagePath: 'assets/images/headphones.jpg',
        isNew: true,
      ),
      ProductModel(
        id: '2',
        name: 'Ergonomic Mechanical Keyboard',
        description: 'Customizable RGB backlighting with smooth mechanical switches.',
        price: 89.50,
        imagePath: 'assets/images/keyboard.jpg',
      ),
      ProductModel(
        id: '3',
        name: 'Ultra-Sharp Smart Watch',
        description: 'Comprehensive fitness tracking, heart rate monitor, and HD AMOLED display.',
        price: 149.00,
        imagePath: 'assets/images/watch.jpg',
      ),
      ProductModel(
        id: '4',
        name: 'Pro Gaming Mouse',
        description: 'Precision optical sensor with customizable DPI settings and ergonomic grip.',
        price: 49.99,
        imagePath: 'assets/images/mouse.jpg',
      ),
      ProductModel(
        id: '5',
        name: 'Galaxy Smart Device',
        description: 'High-performance smart device with modern display technology.',
        price: 299.99,
        imagePath: 'assets/images/glaxy.webp',
      ),
      ProductModel(
        id: '6',
        name: 'Studio Wireless Headphones',
        description: 'Premium wireless over-ear headphones with deep bass response.',
        price: 129.99,
        imagePath: 'assets/images/headphones2.jpg',
      ),
    ];
  }
}