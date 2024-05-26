import 'package:flutter/material.dart';

import 'global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            final cartItem = cart[index];

            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(cartItem['imageUrl'] as String),
              ),
              title: Text(
                cartItem['title'] as String,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text("Size: ${cartItem['size'].toString()}"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
              ),
            );
          }),
    );
  }
}
