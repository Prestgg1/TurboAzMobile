import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleAppleLogin extends StatelessWidget {
  const GoogleAppleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ── Google ilə daxil ol ───────────────────────────────────
        SizedBox(
          width: double.infinity,
          height: 56,
          child: OutlinedButton(
            onPressed: () {
              // TODO: Google sign-in
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xFFE0E0E0), width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              backgroundColor: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 22,
                  height: 22,
                  child: SvgPicture.asset(
                    'assets/icons/google.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Google ilə daxil ol',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0D0D0D),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 14),

        // ── Apple ilə daxil ol ────────────────────────────────────
        SizedBox(
          width: double.infinity,
          height: 56,
          child: OutlinedButton(
            onPressed: () {
              // TODO: Apple sign-in
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xFFE0E0E0), width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              backgroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.apple, size: 24, color: Color(0xFF0D0D0D)),
                SizedBox(width: 10),
                Text(
                  'Apple ilə daxil ol',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0D0D0D),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
