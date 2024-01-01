import 'package:flutter/material.dart';
import 'package:sports_streaming/pages/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF15AA3D),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF15AA3D),
            primary: const Color(0xFF15AA3D)),
        useMaterial3: true,
      ),
      home: const RootScrean(),
    );
  }
}
