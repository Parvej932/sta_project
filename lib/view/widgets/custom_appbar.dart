import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar ({
  String? title,
  List<Widget>? action,
  Widget? isLeading,
  required BuildContext context,
  Color? backgroundColor,
}) {
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: 0,
    centerTitle: true,
    automaticallyImplyLeading: true,
    leading: isLeading?? IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_circle_left_rounded)),
    title: title!= null? Text(title): null,
    actions: action,
  );
}