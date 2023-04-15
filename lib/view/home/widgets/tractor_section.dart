import 'package:flutter/cupertino.dart';

import 'package:krishi_vikas/view/utils/const_colors.dart';
import 'package:krishi_vikas/view/utils/const_widget.dart';

class TractorSection extends StatelessWidget {
  const TractorSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: const Text(
            "Tractor",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        kheight20,
        Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("RENT"),
                  Text(
                    "USED",
                    style: TextStyle(color: kgreyColor),
                  ),
                  Text(
                    "NEW",
                    style: TextStyle(color: kgreyColor),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 10.0),
                height: 25.0,
                width: 50.0,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: const Center(
                  child: Text(
                    "View All",
                    maxLines: 1,
                    style: TextStyle(fontSize: 10.0, color: kwhiteColor),
                  ),
                ))
          ],
        ),
        kheight10,
        Row(
          children: [
            Container(
              height: 2.0,
              width: size.width * 0.3,
              color: primaryColor,
            ),
            Container(
              height: 1.0,
              width: size.width * 0.48,
              color: kgreyColor,
            )
          ],
        ),
        kheight20,
        SizedBox(
          width: size.width,
          height: 230.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                width: size.width * 0.6,
                height: 180.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 193, 187, 187),
                          spreadRadius: 1.0,
                          blurRadius: 1.0)
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/images/image2.JPG",
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
