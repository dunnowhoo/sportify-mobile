// widgets/product_card.dart
import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final int amount;
  final String description;

  Product(this.name, this.price, this.amount, this.description);
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text('Price: \$${product.price.toStringAsFixed(2)}'),
            Text('Amount: ${product.amount}'),
            const SizedBox(height: 8.0),
            Text(
              product.description,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
