import 'package:cartbloc/blocs/cart.bloc.dart';
import 'package:cartbloc/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartBloc>.value(
          notifier: CartBloc(),
        ),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
