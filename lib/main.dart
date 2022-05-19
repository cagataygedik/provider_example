import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_app/Screens/FruitsPage.dart';
import 'package:provider_test_app/providers/FruitProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FruitProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Test App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const FruitsListPage(),
      ),
    );
  }
}
