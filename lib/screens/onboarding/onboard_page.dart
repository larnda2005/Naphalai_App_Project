import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naphalai_e/screens/authentication/sign_in.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            //! PageView
            SizedBox(
              height: 500,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                itemCount: demoData.length,
                itemBuilder: (context, index) {
                  return OnBoardContent(
                    illustration: demoData[index]["illustration"],
                    title: demoData[index]["title"],
                    text: demoData[index]["text"],
                  );
                },
              ),
            ),
            const Spacer(flex: 2),
            //! Animated Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoData.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(6),
                  child: AnimatedDot(isActive: _selectedIndex == index),
                ),
              ),
            ),
            const SizedBox(height: 24),
            //! Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Color(0xFFFFC4C4),
                  ),
                  onPressed: () {
                    if (_selectedIndex < demoData.length - 1) {
                      _pageController.animateToPage(
                        _selectedIndex + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    _selectedIndex == demoData.length - 1
                        ? "ເລີ່ມເລີຍ!"
                        : "ຕໍ່ໄປ",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

//! Animated Dot
class AnimatedDot extends StatelessWidget {
  const AnimatedDot({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 10 : 6,
      width: isActive ? 18 : 6,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFFFC4C4) : Colors.grey,
        borderRadius: BorderRadius.circular(28),
      ),
    );
  }
}

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.illustration,
    required this.title,
    required this.text,
  });

  final String illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: SvgPicture.asset(illustration),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.only(right: 24, left: 24),
          child: Text(
            text,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "illustration": "assets/images/onboarding/undraw_artist-at-work_yos7.svg",
    "title": "ສຳຫລວດ",
    "text": "Discover new content and artists.",
  },
  {
    "illustration": "assets/images/onboarding/undraw_cool-girl-avatar_fifz.svg",
    "title": "ສັ່ງຊື້",
    "text": "Follow your favorite creators and get inspired.",
  },
  {
    "illustration": "assets/images/onboarding/undraw_online-review_08y6.svg",
    "title": "ເລີ່ມໄດ້ເລີຍ",
    "text":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
  },
];
