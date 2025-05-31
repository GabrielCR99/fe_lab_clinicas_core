import 'package:flutter/material.dart';

base class LabClinicasAppBar extends AppBar {
  LabClinicasAppBar({
    super.key,
    super.elevation = 4,
    super.toolbarHeight = 72,
    super.backgroundColor = Colors.transparent,
    super.actions,
  }) : super(
         flexibleSpace: Container(
           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(
             color: Colors.white,
             boxShadow: [
               BoxShadow(
                 color: Colors.black.withValues(alpha: 0.5),
                 offset: const Offset(0, 1),
                 blurRadius: 4,
               ),
             ],
           ),
           child: Padding(
             padding: const EdgeInsets.only(left: 64),
             child: Image.asset('assets/images/logo_horizontal.png'),
           ),
         ),
       );
}
