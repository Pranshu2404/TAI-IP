import 'package:disco_flash/home.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Torch App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeFlash(),
    );
  }
}
