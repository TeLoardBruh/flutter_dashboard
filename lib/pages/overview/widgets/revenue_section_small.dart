import 'package:dashboard/constants/style.dart';
import 'package:dashboard/pages/overview/widgets/bar_widget.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter/material.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12,
            )
          ],
          border: Border.all(color: light, width: 5)),
      child: Column(
        children: [
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  fontWeight: FontWeight.bold,
                  color: lightGrey,
                ),
                Container(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                ),
              ],
            ),
          ),
          Container(
            width: 260,
            height: 1,
            color: lightGrey,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(
                      title: "Today's revenue",
                      amount: "30",
                    ),
                    RevenueInfo(
                      title: "Last week",
                      amount: "260",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    RevenueInfo(
                      title: "Last 30 days",
                      amount: "3000",
                    ),
                    RevenueInfo(
                      title: "Last 3 months",
                      amount: "5000",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
