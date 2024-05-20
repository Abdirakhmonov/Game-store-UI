import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DotContainer extends StatelessWidget {

  int index;
  Color color;

  DotContainer({required this.index, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 0 ? const Color(0XFFC4C4C4) : color,
          ),
        ),
        const Gap(5),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 1 ? const Color(0XFFC4C4C4) : color,
          ),
        ),
        const Gap(5),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 2 ? const Color(0XFFC4C4C4) : color,
          ),
        ),
        const Gap(5),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 3 ? const Color(0XFFC4C4C4) : color,
          ),
        )
      ],
    );
  }
}
