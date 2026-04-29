import 'package:flutter/material.dart';
import 'app_router.g.dart'; // Generated file

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'My App', routerConfig: AppRouter.router);
  }
}
