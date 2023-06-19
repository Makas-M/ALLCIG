import 'package:flutter/material.dart';

import 'GMS_to_Dec_Rad.dart';

class Unidades extends StatelessWidget {
  Unidades({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 80,
      color: Colors.cyan[100],
      child: InkWell(
        child: const Center(
          child:
          Text("GMS para Dec e Rad", 
            textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ), 
        onTap: () async {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GMSToDECRAD(),
            ),
          );
        },
      )
    ),
    const SizedBox(height: 10),
    Container(
      height: 80,
      color: Colors.cyan[100],
      child: InkWell(
        child: const Center(
          child:
          Text("GMS para metros", 
            textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ), 
        onTap: () async {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GMSToDECRAD(),
            ),
          );
        },
      ),
    ),
  ],
);
  }
}
