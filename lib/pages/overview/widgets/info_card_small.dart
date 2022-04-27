import 'package:dashboard/constants/style.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final VoidCallback onTap;
  const InfoCardSmall(
      {Key? key,
      this.title,
      this.value,
      this.topColor,
      this.isActive = false,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border:
                  Border.all(color: isActive! ? active : lightGrey, width: .5)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomText(
              text: title!,
              size: 24,
              fontWeight: FontWeight.w300,
              color: isActive! ? active : lightGrey,
            ),
            CustomText(
              text: value!,
              size: 24,
              fontWeight: FontWeight.bold,
              color: isActive! ? active : lightGrey,
            ),
          ]),
        ),
      ),
    );
  }
}
