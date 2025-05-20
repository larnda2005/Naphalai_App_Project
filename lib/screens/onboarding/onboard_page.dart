import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2),
            SizedBox(
              height: 500,
              child: PageView.builder(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: AnimatedDot(isActive: _selectedIndex == index),
                ),
              ),
            ),
            Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {},
              child: Text("Get Started".toUpperCase()),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 20 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.blueAccent : Colors.grey,
        borderRadius: BorderRadius.circular(12),
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
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(text, style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
      ],
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "illustration": "assets/images/onboarding/undraw_artist-at-work_yos7.svg",
    "title": "title",
    "text": "text",
  },
  {
    "illustration": "assets/images/onboarding/undraw_cool-girl-avatar_fifz.svg",
    "title": "idk",
    "text": "text",
  },
  {
    "illustration": "assets/images/onboarding/undraw_online-review_08y6.svg",
    "title": "title",
    "text": "text",
  },
];
