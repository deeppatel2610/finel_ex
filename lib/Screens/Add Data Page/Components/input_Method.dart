import 'package:flutter/material.dart';

TextField inputBoxMethod({required String labelText,required controller}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: labelText,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
    ),
  );
}
