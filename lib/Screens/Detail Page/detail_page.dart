import 'package:finel_ex/Screens/Home%20Page/Components/app_bar_method.dart';
import 'package:finel_ex/utils/globel.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        text: 'Detail Page',
        isIcon: true,
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: FileImage(detailList[0]['image']),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Name : ${detailList[0]['name'].text}',
                style: TextStyle(fontSize: 20, letterSpacing: 1),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'GR-ID : ${detailList[0]['grid'].text}',
                style: TextStyle(fontSize: 20, letterSpacing: 1),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Standard : ${detailList[0]['standard'].text}',
                style: TextStyle(fontSize: 20, letterSpacing: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
