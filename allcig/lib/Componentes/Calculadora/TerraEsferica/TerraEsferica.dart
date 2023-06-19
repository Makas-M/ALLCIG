import 'package:flutter/material.dart';

import '../Unidades/GMS_to_Dec_Rad.dart';
import 'RaioParalelo.dart';

class TerraEsferica extends StatelessWidget {
  TerraEsferica({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 80,
      color: Colors.cyan[100],
      child: InkWell(
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            child: const Text("Raio do Paralelo", 
            textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),),
          
        ), 
        onTap: () async {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RaioParalelo(),
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
          Text("Distancia entre Dois Meridianos", 
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
          Text("Apartamento", 
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
          Text("Distancia Esferica", 
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
          Text("Azimute Esferico", 
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
          Text("Conversao de Coordenadas Esfericas em cartesianas Tridimensionais", 
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
          Text("Conversao de Coordenadas Cartesianas Tridimensionais em Esfericas", 
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
  ],
);
  }
}
