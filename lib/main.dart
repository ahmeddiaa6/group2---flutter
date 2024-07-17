import 'package:flutter/material.dart';
import 'package:project/furniture_screen.dart';
import 'package:provider/provider.dart';

import 'favourite_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: FavouriteProvider()),
                     ],
          child: const FurnitureScreen(),
      ),
    );
  }
}

