import 'package:flutter/material.dart';
import 'TerraEsferica/TerraEsferica.dart';
import 'Unidades/Unidades.dart';


class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Calculadora CIG'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Unidades'),
                Tab(text: 'Terra Esferica'),
                Tab(text: 'Terra Elipsoidal'),
              ],
            ),
          ),
         body: TabBarView(children: [
            Unidades(),
            TerraEsferica(),
            Unidades(),
            Unidades(),
          ]),
        ),
      );
}
