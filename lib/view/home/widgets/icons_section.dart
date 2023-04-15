import 'package:flutter/material.dart';
import 'package:krishi_vikas/controller/api_repository.dart';
import 'package:krishi_vikas/model/krishi_model.dart';
import 'package:krishi_vikas/view/home/widgets/circle_widget.dart';

class IconsSection extends StatefulWidget {
  final bool isHindi;
  final bool isBengoli;

  const IconsSection(
      {super.key, required this.isHindi, required this.isBengoli});

  @override
  State<IconsSection> createState() => _IconsSectionState();
}

class _IconsSectionState extends State<IconsSection> {
  List<KrishiModel> listKrishiModel = [];
  KrishiModel krishiModel = KrishiModel();
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Something went wrong!"),
            );
          }
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              krishiModel = listKrishiModel[index];
              return CircleWidget(
                krishiModel: krishiModel,
                isHindi: widget.isHindi,
                isbengoli: widget.isBengoli,
              );
            },
            itemCount: listKrishiModel.length,
          );
        },
      ),
    );
  }

  Future<void> getData() async {
    listKrishiModel = await fetchData();
  }
}
