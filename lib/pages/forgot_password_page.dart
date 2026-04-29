import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app_colors.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Şifrəni bərpa et',
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
        ),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.lock_reset, size: 80, color: AppColors.red),
            const SizedBox(height: 24),
            const Text(
              'Şifrənizi unutmusunuz?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Narahat olmayın! E-poçt ünvanınızı daxil edin və sizə şifrəni yeniləmək üçün keçid göndərəcəyik.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: AppColors.grey),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-poçt',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Burada parol sıfırlama məntiqi ola bilər.
                // İndilik ana səhifəyə və ya geri qayıtsın:
                context.pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Bərpa linkini göndər',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text(
                'Giriş səhifəsinə qayıt',
                style: TextStyle(color: AppColors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
