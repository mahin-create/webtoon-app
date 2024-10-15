import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webtoon_app/cart_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing cart from CartProvider
    final cart = Provider.of<CartProvider>(context).cart;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite items', // Corrected typo
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[400],
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  cartItem['image']), // Accessing the image from cartItem
            ),
            title: Text(
              cartItem['title'].toString(), // Accessing the title from cartItem
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        },
      ),
    );
  }
}
