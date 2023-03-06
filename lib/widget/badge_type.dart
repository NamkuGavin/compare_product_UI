import 'package:compare_product_ui/shared/shared_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTypeWidget extends StatelessWidget {
  final String text;
  final Color color;
  const CategoryTypeWidget({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Text(text,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400, fontSize: 11, color: Colors.white),
            textAlign: TextAlign.center),
      ),
    );
  }
}
