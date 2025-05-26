import 'package:flutter/material.dart';
import 'package:naphalai_e/screens/authentication/sign_up.dart';
import 'package:naphalai_e/screens/home/home.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: FlutterLogo(size: 72),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Naphalai',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NotoSansLao-Regular',
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Sign in with e-mail'),
              ),
              const SizedBox(height: 32),
              _buildTextField("ຊື່ຜູ້ໃຊ້:", "ຊື່ຜູ້ໃຊ້...", false),
              const SizedBox(height: 16),
              _buildTextField("ລະຫັດຜ່ານ:", "ລະຫັດຜ່ານ...", true),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("ທ່ານລືມລະຫັດຜ່ານຫຼືບໍ່?"),
                ),
              ),
              const SizedBox(height: 8),
              _buildMainButton("ເຂົ້າສູ່ລະບົບ", () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              }),
              const SizedBox(height: 16),
              const Text("ຫຼື ເຂົ້າສູ່ລະບົບດ້ວຍ"),
              const SizedBox(height: 8),
              _buildSocialButtons(),
              const SizedBox(height: 16),
              const Text("ຍັງບໍ່ມີບັນຊີ? ສ້າງເລີຍຕອນນີ້!"),
              const SizedBox(height: 8),
              _buildMainButton("ສ້າງບັນຊີ", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, bool isPassword) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: const Icon(Icons.visibility),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ],
    );
  }

  Widget _buildMainButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFFC4C4),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }

  //Facebook Social button
  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialButton("Facebook", Colors.blue, Icons.facebook),
        const SizedBox(width: 16),
        _socialButton(
          "Google",
          Colors.white,
          Icons.g_mobiledata,
          isGoogle: true,
        ),
      ],
    );
  }

  //Google social button
  Widget _socialButton(
    String label,
    Color color,
    IconData icon, {
    bool isGoogle = false,
  }) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: isGoogle ? Colors.black : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      icon: Icon(icon),
      label: Text(label),
      onPressed: () {},
    );
  }
}
