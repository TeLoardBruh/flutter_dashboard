// ignore_for_file: prefer_const_constructors

import 'package:dashboard/constants/style.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Example without a datasource
class CustomTable extends StatelessWidget {
  final String? actionName;
  const CustomTable({Key? key, this.actionName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Available Drivers",
                color: lightGrey,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              // ignore: prefer_const_literals_to_create_immutables
              columns: [
                DataColumn2(
                  label: Text("Name"),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        DataCell(CustomText(text: "Rax")),
                        DataCell(CustomText(text: "Phnom Penh")),
                        DataCell(Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomText(
                              text: "4.$index",
                            )
                          ],
                        )),
                        DataCell(Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: active, width: .5),
                              color: light,
                              borderRadius: BorderRadius.circular(20)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: CustomText(
                            text: actionName!,
                            color: active.withOpacity(.7),
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                      ]))),
        ],
      ),
    );
  }
}
