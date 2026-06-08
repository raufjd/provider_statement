import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statement/provider/count_provider.dart';
import 'package:provider_statement/screens/count_example.dart';
import 'provider/count_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  CountExample(),
        )

    );
  }
}

