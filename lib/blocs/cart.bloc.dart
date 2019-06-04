import 'package:cartbloc/models/product.model.dart';
import 'package:flutter/material.dart';

class CartBloc extends ChangeNotifier {
  List<Product> products = new List<Product>();

  add(Product product) {
    products.add(product);
    notifyListeners();
  }

  remove(Product product) {
    products.remove(product);
    notifyListeners();
  }
}
