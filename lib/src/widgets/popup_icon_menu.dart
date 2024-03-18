import 'package:flutter/material.dart';

import '../../lab_clinicas_core.dart';

final class PopupIconMenu extends StatelessWidget {
  const PopupIconMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 64),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border:
              Border.fromBorderSide(BorderSide(color: orangeColor, width: 2)),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.more_horiz_rounded, color: lightOrangeColor),
      ),
    );
  }
}
