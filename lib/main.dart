import 'package:flutter/material.dart';
import 'package:schooll_website/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'School Website',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      
    );
  }
}
