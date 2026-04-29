import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to your new app!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/about');
              },
              child: const Text('Go to About Page'),
            ),
          ],
        ),
      ),
    );
  }
}
