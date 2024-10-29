import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screen/home_screen.dart';
import '../constants/constants.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome to StarGazers",
      body:'StarGazers is an application that combines all the love for the space in one place',

      footer: SizedBox(
        height: 45,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8,
                backgroundColor: highlightSecondary),
            onPressed: () {},
            child: Text(
              "Let's Go",
              style: textButtonTertiary.copyWith(color: themeSecondary),
            ),
          ),
        ),
      ),
      image: Center(
        child: Image.asset('assets/images/gazer.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Explore the space!',
      body:
          'Find all information and discover interesting things that lies outside of the world you have never known before ',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8,
                backgroundColor: highlightSecondary),
            onPressed: () {},
            child: Text(
              "Wait no more",
              style: textButtonTertiary.copyWith(color: themeSecondary),
            ),
          ),
        ),
      ),
      image: Center(
        child: Container(
          width: 200, 
          height: 200, 
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(
                10)),
            image: DecorationImage(
              image: AssetImage('assets/images/star_gazing.jpeg'),
              fit: BoxFit.cover, 
            ),
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Join the community!',
      body:
          'Connect to other star gazers and make our creative community stronger!',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8,
                backgroundColor: highlightSecondary),
            onPressed: () {},
            child: Text(
              "Let's Start",
              style: textButtonTertiary.copyWith(color: themeSecondary),
            ),
          ),
        ),
      ),
      image: Center(
        child: Container(
          width: 200, 
          height: 200, 
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(
                10)),
            image: DecorationImage(
              image: AssetImage('assets/images/star_gazing_group.jpg'),
              fit: BoxFit.cover, 
            ),
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'On Boarding',
          style: textTitleTertiary,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: highlightSecondary,
            activeSize: Size.square(20),
            activeColor: highlightPrimary,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20, color: themePrimary),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20, color: themePrimary),
          ),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25, color: themePrimary),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
   final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
