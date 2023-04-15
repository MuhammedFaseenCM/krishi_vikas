import 'package:flutter/material.dart';
import 'package:krishi_vikas/model/krishi_model.dart';
import 'package:krishi_vikas/view/utils/const_colors.dart';

import 'package:krishi_vikas/view/utils/const_widget.dart';

class CircleWidget extends StatelessWidget {
  final KrishiModel krishiModel;
  final bool? isEnglish;
  final bool? isbengoli;
  final bool? isHindi;

  const CircleWidget(
      {super.key,
      required this.krishiModel,
      this.isEnglish = false,
      this.isbengoli = false,
      this.isHindi = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: kwhiteColor,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 193, 187, 187),
                    spreadRadius: 1.0,
                    blurRadius: 1.0)
              ]),
          child: Image.network(
            krishiModel.icon!,
            width: 10.0,
            height: 10.0,
          ),
        ),
        kheight20,
        Text(
          getLanguage(),
          style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  String getLanguage() {
    if (isHindi == true) {
      return krishiModel.hindi!;
    } else if (isbengoli == true) {
      return krishiModel.bengali!;
    } else {
      return krishiModel.category!;
    }
  }
}
