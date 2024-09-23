import 'package:flutter/material.dart';

import '../../../utils/globel.dart';

AppBar appBarMethod({
  required String text,
  required bool isIcon,
  required BuildContext context,
}) {
  return AppBar(
    leading: (isIcon)
        ? IconButton(
            onPressed: () {
              detailList.removeLast();
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          )
        : null,
    backgroundColor: Colors.blueAccent,
    title: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
