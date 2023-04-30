import 'package:flutter/material.dart';

class OnboardingIndocator extends StatefulWidget {
  const OnboardingIndocator({super.key});

  @override
  State<OnboardingIndocator> createState() => _OnboardingIndocatorState();
}

class _OnboardingIndocatorState extends State<OnboardingIndocator> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          alignment: Alignment.centerRight,
          child: const Text('Skip',
              style: TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: const [
              MakePage(
                image: 'assets/uno.png',
                title: 'Sail on a Cruise',
              ),
              MakePage(
                image: 'assets/dos.png',
                title: 'Fly High',
                reverse: true,
              ),
              MakePage(
                image: 'assets/tres.png',
                title: 'An experience in a Cabin',
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _builIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.orange.withOpacity(0.6),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  List<Widget> _builIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}

class MakePage extends StatelessWidget {
  final String image;
  final String title;
  final bool? reverse;

  const MakePage({
    super.key,
    required this.image,
    required this.title,
    this.reverse = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        !reverse!
            ? Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Image.asset(
                        image,
                        height: 320,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Image.asset(
                        image,
                        height: 300,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
