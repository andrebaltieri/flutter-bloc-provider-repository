import 'package:cartbloc/blocs/cart.bloc.dart';
import 'package:cartbloc/models/product.model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final Product product;
  CartItem({@required this.product});

  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = Provider.of<CartBloc>(context);

    return ListTile(
      leading: Image.asset(product.image),
      title: Text(product.title),
      subtitle: Text(product.brand),
      trailing: FlatButton(
        child: Icon(Icons.delete),
        onPressed: () {
          cartBloc.remove(product);
        },
      ),
    );
  }
}
