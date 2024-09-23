import 'package:finel_ex/Screens/Home%20Page/home_page.dart';
import 'package:flutter/material.dart';

import '../Screens/Add Data Page/Add_data_page.dart';
import '../Screens/Detail Page/detail_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const HomePage(),
  '/add': (context) => const AddDataPage(),
  '/Detail': (context) => const DetailPage(),
};
