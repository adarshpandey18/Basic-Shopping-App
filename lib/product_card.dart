import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.backgroundColor});
  final String title;
  final double price;
  final Color backgroundColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 5),
          Center(
            child: Image.asset(
              image,
              height: 175,
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
