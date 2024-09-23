import 'dart:io';

import 'package:flutter/material.dart';

class ModelClass {
  late TextEditingController txtName, txtGrid, txtStandard;

  ModelClass({
    required this.txtName,
    required this.txtGrid,
    required this.txtStandard,
  });

  factory ModelClass.formMap(m1) {
    return ModelClass(
      txtName: m1['name'],
      txtGrid: m1['grid'],
      txtStandard: m1['standard'],
    );
  }
}
