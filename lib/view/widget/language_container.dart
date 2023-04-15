import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krishi_vikas/view/home/home_screen.dart';
import 'package:krishi_vikas/view/utils/const_colors.dart';

class LanguageContainer extends StatelessWidget {
  final String letter;
  final String language;
  final String langInEnglish;
  final bool? isBengoli;
  final bool? isHindi;
  const LanguageContainer(
      {super.key,
      required this.letter,
      required this.language,
      required this.langInEnglish, this.isBengoli=false, this.isHindi=false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>  HomeScreen(isBengoli: isBengoli,isHindi: isHindi),
        ));
      },
      child: Container(
        width: 160.0,
        height: 160.0,
        decoration: const BoxDecoration(color:kwhiteColor, boxShadow: [
          BoxShadow(color: kgreyColor, spreadRadius: 0.5, blurRadius: 1.0)
        ]),
        child: Column(
          children: [
            Text(letter,
                style: GoogleFonts.ptSerif(
                  textStyle: const TextStyle(
                      color: fontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 80.0),
                )),
            Text(
              language,
              style: const TextStyle(
                  color: kblackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            Text(
              langInEnglish,
              style: const TextStyle(color:kblackColor, fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}
