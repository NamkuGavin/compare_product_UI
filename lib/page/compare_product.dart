import 'package:compare_product_ui/dummy/pilihanProduct_detail_model.dart';
import 'package:compare_product_ui/shared/shared_code.dart';
import 'package:compare_product_ui/widget/appbar_widget.dart';
import 'package:compare_product_ui/widget/badge_type.dart';
import 'package:compare_product_ui/widget/pilihan_product_detail.dart';
import 'package:compare_product_ui/widget/product_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CompareProductUI extends StatefulWidget {
  const CompareProductUI({Key? key}) : super(key: key);

  @override
  State<CompareProductUI> createState() => _CompareProductUIState();
}

class _CompareProductUIState extends State<CompareProductUI> {
  List<PilihanProductDetailModel> itemsloop = [
    PilihanProductDetailModel(
        colorBorder: SharedCode.colorBox1Border, color: SharedCode.colorBox1),
    PilihanProductDetailModel(
        colorBorder: SharedCode.colorBox2Border, color: SharedCode.colorBox2),
    PilihanProductDetailModel(
        colorBorder: SharedCode.colorBox3Border, color: SharedCode.colorBox3),
    PilihanProductDetailModel(
        colorBorder: SharedCode.colorBox4Border, color: SharedCode.colorBox4),
    PilihanProductDetailModel(
        colorBorder: SharedCode.colorBox5Border, color: SharedCode.colorBox5),
  ];

  List<String> items = [
    "Indonesia Govy FR47",
    "Indonesia Govy FR35",
    "Indonesia Govy FR12",
    "Indonesia Govy FR57",
    "Indonesia Govy FR34",
    "Indonesia Govy FR79",
    "Indonesia Govy FR45",
    "Indonesia Govy FR23",
    "Indonesia Govy FR89",
    "Indonesia Govy FR43",
    "Indonesia Govy FR86",
    "Indonesia Govy FR10",
  ];

  Widget buildloop() {
    Widget cont = const Text("No Data");
    if (itemsloop.isNotEmpty) {
      List<Widget> widgets = [];
      itemsloop.asMap().forEach((index, _) {
        widgets.add(bodyLoop(index));
      });
      cont = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widgets,
      );
    }
    return Container(child: cont);
  }

  bodyLoop(int index) {
    return SizedBox(
      width: 200,
      height: 1000,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ProductHeaderUI(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                text: 'Obligasi Negara Th. 2006 Seri FR0037',
                row: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CategoryTypeWidget(
                        text: "Bond", color: SharedCode.colorCategory1),
                  ],
                ),
                textButton: 'Change Bond',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "AUM",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Center(
                  child: Text(
                    "1,536.27",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    '01, Feb 2023',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: const Color(0xFF515772)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "NAV/Unit",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Center(
                  child: Text(
                    "1,536.27",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    '01, Feb 2023',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: const Color(0xFF515772)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "Total Return (%)",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Center(
                  child: Text(
                    "2.73",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Container(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "CAGR (%)",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Center(
                  child: Text(
                    "2.73",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Container(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "Downside Risk (%)",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Center(
                  child: Text(
                    "2.80",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Container(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "Sharpe Ratio",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Center(
                  child: Text(
                    "8.93",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Container(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "Scoring",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Center(
                  child: RatingBar(
                    itemSize: 18,
                    ignoreGestures: true,
                    initialRating: 3,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full: Icon(Icons.star, color: Colors.yellow.shade800),
                      half:
                          Icon(Icons.star_half, color: Colors.yellow.shade800),
                      empty: Icon(Icons.star_border,
                          color: Colors.yellow.shade800),
                    ),
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                subtitle: Container(),
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: itemsloop[index].colorBorder!,
                color: itemsloop[index].color!,
                title: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top Holdings",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'As of 31 Dec 2022',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color(0xFF515772)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          items[index],
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(
        title: 'Compare Product',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildloop(),
              // headerProductUI(),
              // const SizedBox(height: 20),
              // bodyPilihanProduct(),
            ],
          ),
        ),
      ),
    );
  }

  // headerProductUI() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       ProductHeaderUI(
  //         colorBorder: SharedCode.colorBox2Border,
  //         color: SharedCode.colorBox2,
  //         text: 'Ashmore Dana Obligasi Nusantara',
  //         row: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: const [
  //             CategoryTypeWidget(
  //                 text: "Fixed Income", color: SharedCode.colorCategory1),
  //             CategoryTypeWidget(text: "ESG", color: SharedCode.colorCategory2),
  //             CategoryTypeWidget(text: "SHA", color: SharedCode.colorCategory3),
  //           ],
  //         ),
  //         textButton: 'Change Mutual Fund Product',
  //       ),
  //       ProductHeaderUI(
  //         colorBorder: SharedCode.colorBox3Border,
  //         color: SharedCode.colorBox3,
  //         text: 'Ashmore Dana Progressif Nusantara',
  //         row: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: const [
  //             CategoryTypeWidget(
  //                 text: "Fixed Income", color: SharedCode.colorCategory1),
  //             CategoryTypeWidget(text: "ESG", color: SharedCode.colorCategory2),
  //             CategoryTypeWidget(text: "SHA", color: SharedCode.colorCategory3),
  //           ],
  //         ),
  //         textButton: 'Change Mutual Fund Product',
  //       ),
  //       ProductHeaderUI(
  //         colorBorder: SharedCode.colorBox4Border,
  //         color: SharedCode.colorBox4,
  //         text: 'IDR Money Market Fund',
  //         row: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: const [
  //             CategoryTypeWidget(
  //                 text: "Money Market", color: SharedCode.colorCategory1),
  //           ],
  //         ),
  //         textButton: 'Change Unit Link',
  //       ),
  //       ProductHeaderUI(
  //         colorBorder: SharedCode.colorBox5Border,
  //         color: SharedCode.colorBox5,
  //         text: 'IDX Small-Mid Cap Composite',
  //         row: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: const [
  //             CategoryTypeWidget(
  //                 text: "Benchmark", color: SharedCode.colorCategory1),
  //           ],
  //         ),
  //         textButton: 'Change Benchmark',
  //       ),
  //     ],
  //   );
  // }
}
