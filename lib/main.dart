import 'package:flutter/material.dart';

import 'module/presentation/widget/list_handbooks.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HandbookPage(),
    );
  }
}


