import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'assets/images/flutter_logo.png',
                  height: 240,
                ),
              ),

              const SizedBox(height: 40),

              // title
              const Text(
                "Let's get started",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 40),

              const Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quia.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Start button
              GestureDetector(
                // onTap:
                //     () => Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => const HomePage()),
                //     ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
