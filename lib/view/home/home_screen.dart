import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krishi_vikas/controller/api_repository.dart';
import 'package:krishi_vikas/model/krishi_model.dart';
import 'package:krishi_vikas/view/home/widgets/bottom_nav_bar.dart';
import 'package:krishi_vikas/view/home/widgets/circle_widget.dart';
import 'package:krishi_vikas/view/home/widgets/icons_section.dart';
import 'package:krishi_vikas/view/home/widgets/tractor_section.dart';
import 'package:krishi_vikas/view/utils/const_colors.dart';
import 'package:krishi_vikas/view/utils/const_widget.dart';

class HomeScreen extends StatefulWidget {
  final bool? isHindi;
  final bool? isBengoli;

  const HomeScreen({super.key, this.isHindi = false, this.isBengoli = false});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<KrishiModel> listKrishiModel = [];
  KrishiModel krishiModel = KrishiModel();

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(
          "Krishi Vikas",
          style: GoogleFonts.dmSerifDisplay(),
        ),
        actions: const [Icon(Icons.notifications)],
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: 150.0,
              child: Image.asset("assets/images/image3.JPG"),
            ),
            IconsSection(
                isHindi: widget.isHindi!, isBengoli: widget.isBengoli!),
            TractorSection()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Future<void> getData() async {
    listKrishiModel = await fetchData();
  }
}
