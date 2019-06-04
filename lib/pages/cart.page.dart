import 'package:cartbloc/blocs/cart.bloc.dart';
import 'package:cartbloc/widgets/cart-item.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = Provider.of<CartBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("${cartBloc.products.length.toString()} itens"),
      ),
      body: Container(
        child: new ListView.builder(
          itemCount: cartBloc.products.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return CartItem(product: cartBloc.products[index]);
          },
        ),
      ),
    );
  }
}
