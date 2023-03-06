import 'package:compare_product_ui/dummy/pilihanProduct_detail_model.dart';
import 'package:compare_product_ui/shared/shared_code.dart';
import 'package:compare_product_ui/widget/pilihan_product_detail.dart';
import 'package:flutter/material.dart';

class PilihanProductTable extends StatefulWidget {
  const PilihanProductTable({Key? key}) : super(key: key);

  @override
  State<PilihanProductTable> createState() => _PilihanProductTableState();
}

class _PilihanProductTableState extends State<PilihanProductTable> {
  List<PilihanProductDetailModel> listModel = [
    PilihanProductDetailModel(title: '1,536.27', subtitle: '01 Feb 2023'),
    PilihanProductDetailModel(title: '114.83', subtitle: '01 Feb 2023'),
    PilihanProductDetailModel(title: '114.83', subtitle: '01 Feb 2023'),
    PilihanProductDetailModel(title: '114.83', subtitle: '01 Feb 2023'),
    PilihanProductDetailModel(title: '114.83', subtitle: '01 Feb 2023'),
  ];

  Widget _buildTable() {
    Widget cont = const Text("No Data");
    if (listModel.isNotEmpty) {
      List<Widget> widgets = [];
      listModel.asMap().forEach((index, _) {
        widgets.add(tableBody(index));
      });
      cont = Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widgets,
        ),
      );
    }
    return Container(child: cont);
  }

  Widget tableBody(int index) {
    return Column(
      children: [
        PilihanProductDetailWidget(
          colorBorder: SharedCode.colorBox1Border,
          color: SharedCode.colorBox1,
          title: listModel[index].title.toString(),
          subtitle: listModel[index].subtitle.toString(),
        ),
        PilihanProductDetailWidget(
          colorBorder: SharedCode.colorBox2Border,
          color: SharedCode.colorBox2,
          title: listModel[index].title.toString(),
          subtitle: '',
        ),
        PilihanProductDetailWidget(
          colorBorder: SharedCode.colorBox3Border,
          color: SharedCode.colorBox3,
          title: listModel[index].title.toString(),
          subtitle: '',
        ),
        PilihanProductDetailWidget(
          colorBorder: SharedCode.colorBox4Border,
          color: SharedCode.colorBox4,
          title: listModel[index].title.toString(),
          subtitle: '',
        ),
        PilihanProductDetailWidget(
          colorBorder: SharedCode.colorBox5Border,
          color: SharedCode.colorBox5,
          title: listModel[index].title.toString(),
          subtitle: '',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTable();
  }
}
