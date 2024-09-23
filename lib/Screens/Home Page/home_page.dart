import 'package:flutter/material.dart';

import '../../model/model_list.dart';
import '../../utils/globel.dart';
import 'Components/app_bar_method.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: appBarMethod(
        text: 'Home Page',
        isIcon: false,
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: mainList.length,
          itemBuilder: (context, index) {
            tempIndex = index;
            return Card(
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        detailList.add(mainList[index]);
                        Navigator.of(context).pushNamed('/Detail');
                      },
                      icon: const Icon(Icons.ad_units_outlined),
                    ),
                    IconButton(
                      onPressed: () {
                        detailList.removeLast();
                      },
                      icon: const Icon(Icons.delete),
                    )
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: (mainList[index]['image'] != null)
                      ? FileImage(mainList[index]['image'])
                      : NetworkImage(image),
                ),
                title: Text(mainList[index]['name'].text),
                subtitle: Text(mainList[index]['grid'].text),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mainList.add({
            'name': TextEditingController(),
            'grid': TextEditingController(),
            'standard': TextEditingController(),
            'image': imageFile
          });
          Navigator.of(context).pushReplacementNamed('/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
