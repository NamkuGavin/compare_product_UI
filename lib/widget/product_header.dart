import 'package:compare_product_ui/shared/shared_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductHeaderUI extends StatelessWidget {
  final Color colorBorder;
  final Color color;
  final String text;
  final String textButton;
  final Widget row;
  const ProductHeaderUI(
      {Key? key,
      required this.colorBorder,
      required this.color,
      required this.text,
      required this.row,
      required this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          height: 215,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: color,
            border: Border.all(
              color: colorBorder,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFD9D9D9),
                    radius: 35,
                  ),
                ),
                Expanded(
                    child: Text(
                  text,
                  textAlign: TextAlign.center,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: row,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 0),
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      side: const BorderSide(
                          width: 1, color: SharedCode.primaryColor),
                      backgroundColor: Colors.white,
                      foregroundColor: SharedCode.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                    ),
                    onPressed: () {},
                    child: Text(
                      textButton,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400, fontSize: 10),
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
