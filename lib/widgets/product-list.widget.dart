import 'package:cartbloc/models/product.model.dart';
import 'package:cartbloc/repositories/product.repository.dart';
import 'package:flutter/material.dart';

import 'product-card.widget.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductRepository _repository = new ProductRepository();
    List<Product> _products = _repository.getAll();

    return Container(
      child: new ListView.builder(
          itemCount: _products.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return ProductCard(product: _products[index]);
          }),
    );
  }
}
