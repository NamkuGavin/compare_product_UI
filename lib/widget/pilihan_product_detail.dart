import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PilihanProductDetailWidget extends StatelessWidget {
  final Color colorBorder;
  final Color color;
  final Widget title;
  final Widget subtitle;
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
      padding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: color,
          border: Border.all(
            color: colorBorder,
          ),
        ),
        child: Padding(
          padding: subtitle != Container()
              ? const EdgeInsets.symmetric(vertical: 8)
              : const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              title,
              subtitle != Container() ? subtitle : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
