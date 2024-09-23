import 'dart:io';

import 'package:finel_ex/model/model_class.dart';
import 'package:finel_ex/utils/globel.dart';
import 'package:flutter/cupertino.dart';

List modelList = [
  {
    'name': TextEditingController(),
    'grid': TextEditingController(),
    'standard': TextEditingController(),
  }
];

List<ModelClass> standardList = modelList
    .map(
      (e) => ModelClass.formMap(e),
    )
    .toList();
