import 'package:compare_product_ui/page/compare_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Redirect to Job"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CompareProductUI()));
          },
        ),
      ),
    );
  }
}
