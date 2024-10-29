import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screen/home_screen.dart';


class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: highlightTertiary),
          onPressed: () {
           Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Text(
            'This page is in development',
            style: textTitlePrimary,
                    ),
          ),
        const SizedBox(height: 50,),
        const Spacer(),
        ],
      ),
    );
  }
}