import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: product.id,
          );
        },
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.fill,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Center(
              child: Text(
                product.title,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                product.toggleFavoritStatus();
              },
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
