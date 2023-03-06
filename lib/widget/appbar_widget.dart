import 'package:compare_product_ui/shared/shared_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppbarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButton(
        color: SharedCode.primaryColor,
      ),
      title: Text(title,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: SharedCode.primaryColor,
              fontSize: 16)),
      backgroundColor: Colors.white,
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          color: SharedCode.primaryColor,
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
