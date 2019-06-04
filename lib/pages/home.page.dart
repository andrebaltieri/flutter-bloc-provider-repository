import 'package:cartbloc/blocs/cart.bloc.dart';
import 'package:cartbloc/pages/cart.page.dart';
import 'package:cartbloc/widgets/product-list.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = Provider.of<CartBloc>(context);

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: ProductList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.shopping_cart),
            Text(
              cartBloc.products.length.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final CartBloc cartBloc = Provider.of<CartBloc>(context);

//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             cartBloc.counter.toString(),
//             style: TextStyle(fontSize: 36),
//           ),
//           Increment(),
//           Decrement(),
//         ],
//       ),
//     );
//   }
// }
