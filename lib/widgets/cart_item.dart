import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(
    this.id,
    this.title,
    this.quantity,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: FittedBox(
              child: Text('Rs $price'),
            ),
          ),
        ),
        title: Text('$title'),
        subtitle: Text('Total: ${(price * quantity)}'),
        trailing: Text('$quantity X'),
      ),
    );
  }
}
