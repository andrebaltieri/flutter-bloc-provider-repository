import 'package:cartbloc/blocs/cart.bloc.dart';
import 'package:cartbloc/models/product.model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({@required this.product});

  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = Provider.of<CartBloc>(context);

    return Container(
      height: 200,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: AssetImage(product.image),
          fit: BoxFit.fitWidth,
        ),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                product.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              FlatButton(
                child: Icon(Icons.add),
                onPressed: () {
                  cartBloc.add(product);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
