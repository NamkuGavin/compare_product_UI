import 'package:compare_product_ui/shared/shared_code.dart';
import 'package:compare_product_ui/widget/appbar_widget.dart';
import 'package:compare_product_ui/widget/badge_type.dart';
import 'package:compare_product_ui/widget/pilihan_product_table.dart';
import 'package:compare_product_ui/widget/product_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompareProductUI extends StatefulWidget {
  const CompareProductUI({Key? key}) : super(key: key);

  @override
  State<CompareProductUI> createState() => _CompareProductUIState();
}

class _CompareProductUIState extends State<CompareProductUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(
        title: 'Compare Product',
      ),
      body: Column(
        children: [
          headerProductUI(),
          const PilihanProductTable(),
        ],
      ),
    );
  }

  headerProductUI() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProductHeaderUI(
            colorBorder: SharedCode.colorBox1Border,
            color: SharedCode.colorBox1,
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
          ProductHeaderUI(
            colorBorder: SharedCode.colorBox2Border,
            color: SharedCode.colorBox2,
            text: 'Ashmore Dana Obligasi Nusantara',
            row: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CategoryTypeWidget(
                    text: "Fixed Income", color: SharedCode.colorCategory1),
                CategoryTypeWidget(
                    text: "ESG", color: SharedCode.colorCategory2),
                CategoryTypeWidget(
                    text: "SHA", color: SharedCode.colorCategory3),
              ],
            ),
            textButton: 'Change Mutual Fund Product',
          ),
          ProductHeaderUI(
            colorBorder: SharedCode.colorBox3Border,
            color: SharedCode.colorBox3,
            text: 'Ashmore Dana Progressif Nusantara',
            row: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CategoryTypeWidget(
                    text: "Fixed Income", color: SharedCode.colorCategory1),
                CategoryTypeWidget(
                    text: "ESG", color: SharedCode.colorCategory2),
                CategoryTypeWidget(
                    text: "SHA", color: SharedCode.colorCategory3),
              ],
            ),
            textButton: 'Change Mutual Fund Product',
          ),
          ProductHeaderUI(
            colorBorder: SharedCode.colorBox4Border,
            color: SharedCode.colorBox4,
            text: 'IDR Money Market Fund',
            row: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CategoryTypeWidget(
                    text: "Money Market", color: SharedCode.colorCategory1),
              ],
            ),
            textButton: 'Change Unit Link',
          ),
          ProductHeaderUI(
            colorBorder: SharedCode.colorBox5Border,
            color: SharedCode.colorBox5,
            text: 'IDX Small-Mid Cap Composite',
            row: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CategoryTypeWidget(
                    text: "Benchmark", color: SharedCode.colorCategory1),
              ],
            ),
            textButton: 'Change Benchmark',
          ),
        ],
      ),
    );
  }
}
