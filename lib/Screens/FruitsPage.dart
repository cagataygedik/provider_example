import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_app/providers/FruitProvider.dart';
import 'BasketPage.dart';

class FruitsListPage extends StatelessWidget {
  const FruitsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fruitProvider = Provider.of<FruitProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BasketPage()));
            },
          )
        ],
      ),
      body: ListView(
        children: fruitProvider.fruits.map((e) {
          return ListTile(
            title: Text(e.fName),
            subtitle: Text(e.fDesc),
            trailing: IconButton(
                icon: e.addToCart == false
                    ? const Icon(
                        Icons.shopping_bag,
                        color: Colors.black,
                      )
                    : const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  fruitProvider.cartOperation(e);
                }),
          );
        }).toList(),
      ),
    );
  }
}
