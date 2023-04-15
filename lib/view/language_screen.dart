import 'package:flutter/material.dart';
import 'package:krishi_vikas/view/utils/const_colors.dart';
import 'package:krishi_vikas/view/utils/const_widget.dart';
import 'package:krishi_vikas/view/widget/language_container.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    kheight50,
                    kheight50,
                    const Text(
                      "Select Your Language",
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 20.0),
                    ),
                    kheight20,
                    kheight20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        LanguageContainer(
                          letter: "E",
                          langInEnglish: "english",
                          language: "English",
                        ),
                        LanguageContainer(
                          letter: "ব",
                          langInEnglish: "bengali",
                          language: "বাংলা",
                          isBengoli: true,
                        ),
                      ],
                    ),
                    kheight20,
                    kheight20,
                    const LanguageContainer(
                      langInEnglish: "hindi",
                      language: "हिंदी",
                      letter: "ह",
                      isHindi: true,
                    ),
                    kheight20
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    color: primaryColor,
                    child: const Text(
                      "Welcome to Krishi Vikas Udyog",
                      style: TextStyle(
                          color:kwhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
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
