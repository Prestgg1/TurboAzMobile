import 'package:flutter/material.dart';
import 'package:turbo/components/google_apple_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF0D0D0D), size: 20),
          onPressed: () {
            // context.pop();
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),

              // ── Logo placeholder ──────────────────────────────────────
              const Text(
                'LOGO', // <-- öz logonuzla əvəz edin
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D0D0D),
                  letterSpacing: -1,
                ),
              ),

              const SizedBox(height: 8),

              // ── Alt başlıq ────────────────────────────────────────────
              const Text(
                'Yenidən xoş gəldiniz?',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF8A8A8A),
                ),
              ),

              const SizedBox(height: 32),

              // ── Email sahəsi ──────────────────────────────────────────
              _buildTextField(
                controller: _emailController,
                hint: 'E-poçt',
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 12),

              // ── Şifrə sahəsi ──────────────────────────────────────────
              _buildTextField(
                controller: _passwordController,
                hint: 'Şifrə',
                obscure: !_passwordVisible,
                suffix: IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: const Color(0xFF8A8A8A),
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() => _passwordVisible = !_passwordVisible);
                  },
                ),
              ),

              // ── Şifrəni unut ──────────────────────────────────────────
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: şifrəni unut ekranına keç
                    // context.push('/forgot-password');
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  child: const Text(
                    'Şifrəni unutmusunuz?',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF8A8A8A),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // ── Daxil ol düyməsi ──────────────────────────────────────
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: giriş məntiqi
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE8E8E8),
                    foregroundColor: const Color(0xFF0D0D0D),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'Daxil ol',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ── Apple / Google componentləri buraya ──────────────────

              const Spacer(),

              GoogleAppleLogin(), // <-- öz componentinizi buraya əlavə edin
              const Spacer(),

              // ── Hesab yoxdur? Qeydiyyat ───────────────────────────────
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hesabınız yoxdur? ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF8A8A8A),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // TODO: qeydiyyat ekranına keç
                        // context.push('/register');
                      },
                      child: const Text(
                        'Qeydiyyat',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0D0D0D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Ümumi TextField builder ───────────────────────────────────────────────
  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
    bool obscure = false,
    Widget? suffix,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEAEAEA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscure,
        style: const TextStyle(
          fontSize: 15,
          color: Color(0xFF0D0D0D),
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Color(0xFFAAAAAA),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          suffixIcon: suffix,
        ),
      ),
    );
  }
}