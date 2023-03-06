import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PilihanProductDetailWidget extends StatelessWidget {
  final Color colorBorder;
  final Color color;
  final String title;
  final String subtitle;
  const PilihanProductDetailWidget(
      {Key? key,
      required this.colorBorder,
      required this.color,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: color,
          border: Border.all(
            color: colorBorder,
          ),
        ),
        child: Padding(
          padding: subtitle != ''
              ? const EdgeInsets.symmetric(vertical: 8)
              : const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              subtitle != ''
                  ? Text(
                      subtitle,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: const Color(0xFF515772)),
                      textAlign: TextAlign.center,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
