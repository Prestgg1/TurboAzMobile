import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Giriş',
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
            const Text(
              'turbo.az',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.red,
              ),
            ),
            const SizedBox(height: 40),
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                // nömrə tam halda number.phoneNumber vasitəsilə əldə edilir.
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              initialValue: PhoneNumber(isoCode: 'AZ'),
              formatInput: true,
              keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
              inputDecoration: InputDecoration(
                labelText: 'Mobil nömrə',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              errorMessage: 'Düzgün nömrə daxil edin',
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Daxil ol', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                context.push('/register');
              },
              child: const Text(
                'Hesabınız yoxdur? Qeydiyyatdan keçin',
                style: TextStyle(color: AppColors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

