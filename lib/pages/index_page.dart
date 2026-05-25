import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:turbo/components/google_apple_login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const Spacer(flex: 2),

              // ── Logo placeholder ──────────────────────────────────────
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color(0xFF1E2535),
                  shape: BoxShape.circle,
                ),
                child: const RotatedBox(
                  quarterTurns: -1, 
                  child: Icon(Icons.send, color: Colors.white, size: 36),
                ),
              ),

              const SizedBox(height: 28),

              // ── Başlıq ───────────────────────────────────────────────
              const Text(
                'Xoş gəlmisiniz',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D0D0D),
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Davam etmək üçün daxil olun',
                style: TextStyle(fontSize: 15, color: Color(0xFF8A8A8A)),
              ),

              const Spacer(flex: 2),

              // ── Telefon nömrəsi ilə düyməsi ──────────────────────────
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // TODO: telefon ilə daxil ol
                  },
                  icon: const Icon(
                    Icons.phone_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Telefon nömrəsi ilə',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D0D0D),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12), // Düymələr arası məsafə

              // ── Emaillə daxil ol düyməsi ─────────────────────────────
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: () {
                     context.push('/login');
                    },
                  icon: const Icon(
                    Icons.email_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'E-poçt ünvanı ilə',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E2535), // Loqonun rəngi ilə uyğunlaşdırıldı
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ── "və ya" ayırıcısı ─────────────────────────────────────
              Row(
                children: [
                  const Expanded(
                    child: Divider(color: Color(0xFFE0E0E0), thickness: 1),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'və ya',
                      style: TextStyle(fontSize: 13, color: Color(0xFF8A8A8A)),
                    ),
                  ),
                  const Expanded(
                    child: Divider(color: Color(0xFFE0E0E0), thickness: 1),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ── Google ilə daxil ol ───────────────────────────────────
              GoogleAppleLogin(),


              const SizedBox(height: 28),

              // ── Hesabınız yoxdur? Qeydiyyat ──────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hesabınız yoxdur? ',
                    style: TextStyle(fontSize: 14, color: Color(0xFF8A8A8A)),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push('/register');
                    },
                    child: const Text(
                      'Qeydiyyatdan keçin',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0D0D0D),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(flex: 2),

              // ── 使用 Şərtləri & Məxfilik ─────────────────────────
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(fontSize: 12, color: Color(0xFF8A8A8A)),
                    children: [
                      TextSpan(text: 'Davam etməklə '),
                      TextSpan(
                        text: 'İstifadə Şərtləri',
                        style: TextStyle(
                          color: Color(0xFF0D0D0D),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: ' və '),
                      TextSpan(
                        text: 'Məxfilik Siyasəti',
                        style: TextStyle(
                          color: Color(0xFF0D0D0D),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: '-ni qəbul etmiş olursunuz.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}