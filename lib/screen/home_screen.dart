import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../components/star_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeSecondary,
      appBar: AppBar(
        backgroundColor: themeSecondary,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Text("STARGAZERS", style: textTitlePrimary.copyWith(fontSize: 28)),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: highlightTertiary),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: highlightTertiary),
            onPressed: () {},
          ),
          ClipOval(
            child: Container(
              width: 28,
              height: 28,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/Suisei.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'EXPLORE OUR GALAXY!',
                    style: textTitleSecondary,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: StarCard(
                  imagePath: 'assets/images/Sun.jpg',
                  title: 'THE SUN',
                  description:
                      'The Sun is the star at the center of the Solar System, It is a massive, nearly perfect sphere of hot plasma, heated to incandescence by nuclear fusion reactions in its core',
                ),
              ),
              const Center(
                child: StarCard(
                  imagePath: 'assets/images/Moon.jpg',
                  title: 'THE MOON',
                  description:
                      'The Moon is Earth only natural satellite. It orbits at an average distance of 384,400 km, about 30 times the diameter of Earth.',
                ),
              ),
              const Center(
                child: StarCard(
                  imagePath: 'assets/images/Earth.jpg',
                  title: 'THE EARTH',
                  description:
                      'Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being an ocean world, the only one in the Solar System sustaining liquid surface water. ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Source:https://www.youtube.com/watch?v=uia0EbMU1xs&t=18s