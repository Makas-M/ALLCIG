import 'package:flutter/material.dart';
import 'Unidades/Unidades.dart';


class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Calculadora CIG'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Unidades'),
                Tab(text: 'Terra Plana'),
                Tab(text: 'Terra Esferica'),
                Tab(text: 'Terra Elipsoidal'),
              ],
            ),
          ),
         body: TabBarView(children: [
            Unidades(),
            Unidades(),
            Unidades(),
            Unidades(),
          ]),
        ),
      );
}
