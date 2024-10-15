import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String image;
  const ProductPage({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Center(
            child: Image(
              image: NetworkImage(image),
            ),
          ),
        ],
      ),
    );
  }
}
