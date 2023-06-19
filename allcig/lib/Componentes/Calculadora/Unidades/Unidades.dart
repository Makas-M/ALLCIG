import 'package:flutter/material.dart';

import 'GMS_to_Dec_Rad.dart';

class Unidades extends StatelessWidget {
  Unidades({super.key});

 final List<String> items = ['GMS para Dec/Rad', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext context) {
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>const GMSToDECRAD(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Text(item),
      ),
    );
  }
}