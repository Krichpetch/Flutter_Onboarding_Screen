import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screen/blank_screen.dart';

class StarCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const StarCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Container(
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 330,
                  height: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: themePrimary,
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  title,
                  style: textTitleTertiary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  description,
                  style: textSubTitle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 25.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: highlightPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlankScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Text("See More", style: textButtonTertiary),
                          const Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: themeSecondary,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
