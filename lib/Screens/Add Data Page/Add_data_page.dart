import 'dart:io';

import 'package:finel_ex/Screens/Home%20Page/Components/app_bar_method.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/globel.dart';
import 'Components/input_Method.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({super.key});

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        text: 'Add Data Page',
        isIcon: false,
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                XFile? img =
                    await imagePicker.pickImage(source: ImageSource.gallery);
                setState(() {
                  mainList[tempIndex]['image'] = File(img!.path);
                });
              },
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  image: DecorationImage(
                    image: (mainList[tempIndex]['image'] != null)
                        ? FileImage(mainList[tempIndex]['image'])
                        : NetworkImage(image),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            inputBoxMethod(
                labelText: 'Name', controller: mainList[tempIndex]['name']),
            const SizedBox(
              height: 10,
            ),
            inputBoxMethod(
                labelText: 'GR-ID', controller: mainList[tempIndex]['grid']),
            const SizedBox(
              height: 10,
            ),
            inputBoxMethod(
                labelText: 'standard',
                controller: mainList[tempIndex]['standard']),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
