import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_app/providers/FruitProvider.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fruitProvider = Provider.of<FruitProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Basket Page'),
        ),
        body: ListView(
            children: fruitProvider.fruits.map((e) {
          return e.addToCart == true
              ? ListTile(
                  title: Text(e.fName),
                  subtitle: Text(e.fDesc),
                  trailing: IconButton(
                      icon: e.addToCart == false
                          ? const Icon(
                              Icons.shopping_bag,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                      onPressed: () {
                        fruitProvider.cartOperation(e);
                      }),
                )
              : Container();
        }).toList()));
  }
}
