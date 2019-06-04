import 'package:cartbloc/models/product.model.dart';

class ProductRepository {
  List<Product> _products = new List<Product>();

  ProductRepository() {
    _products.add(new Product(
      title: "Apple AirPods",
      price: 999,
      brand: "Apple",
      image: "assets/airpods.png",
    ));

    _products.add(new Product(
      title: "iMac 27 - 5K",
      price: 17999,
      brand: "Apple",
      image: "assets/imac.png",
    ));

    _products.add(new Product(
      title: "iPad Pro 12",
      price: 7999,
      brand: "Apple",
      image: "assets/ipad.png",
    ));

    _products.add(new Product(
      title: "iPhone XR",
      price: 3999,
      brand: "Apple",
      image: "assets/iphone.png",
    ));

    _products.add(new Product(
      title: "Macbook Pro 13",
      price: 12999,
      brand: "Apple",
      image: "assets/macbook.png",
    ));

    _products.add(new Product(
      title: "MacMini",
      price: 7999,
      brand: "Apple",
      image: "assets/macmini.png",
    ));

    _products.add(new Product(
      title: "Apple Watch Series 4",
      price: 1999,
      brand: "Apple",
      image: "assets/watch.png",
    ));
  }

  List<Product> getAll() {
    return _products;
  }
}
