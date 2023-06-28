
import 'package:flutter/material.dart';

import 'Componentes/Calculadora/Calculadora.dart';
import 'Componentes/Coordenadas/Coordenadas.dart';
import 'Componentes/Dicionario/Dicionario.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50)
              )
            ),
            child: Column(
              children: [
                const SizedBox( height: 30),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('allCIG', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white
                  )),
                  subtitle: Text('Gire o Mundo', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white54
                  )),
                  trailing: const CircleAvatar(
                    radius: 30,
                    //colocar imagem do usuario nesse ponto
                    backgroundColor: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50)
                )
              ),
              child:GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: <Widget> [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),  
                    child: InkWell(
                      onTap: () async {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Calculadora(),
                          ),
                        );
                      },
                      splashColor: Colors.cyan,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(Icons.calculate, size: 70.0, color: Colors.cyan),
                            Text(
                              'Calculadora',
                              style: TextStyle(fontSize: 17.5),
                            )
                          ],
                        ),
                      ),
                    ), 
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),  
                    child: InkWell(
                      onTap: () async {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Calculadora(),
                          ),
                        );
                      },
                      splashColor: Colors.cyan,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(Icons.book, size: 70.0, color: Colors.cyan),
                            Text(
                              'Biblioteca',
                              style: TextStyle(fontSize: 17.5),
                            )
                          ],
                    
                        ),
                      ),
                    ), 
                  ),
                  Card(
                  elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),  
                  child: InkWell(
                    onTap: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Dicionario(),
                        ),
                      );
                    },
                    splashColor: Colors.grey,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(Icons.abc_outlined, size: 70.0, color: Colors.cyan),
                          Text(
                            'Dicionário',
                            style: TextStyle(fontSize: 17.5),
                          )
                        ],              
                      ),
                    ),
                  ), 
                ),
            Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),  
                  child: InkWell(
                    onTap: () async {
              
                Navigator.of(context).push(
                   MaterialPageRoute(
                      builder: (context) => Dicionario(),
                    ),
                  );
                },
                splashColor: Colors.grey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.quiz_rounded, size: 70.0, color: Colors.cyan),
                      
                      Text(
                        'QUIZ',
                        style: TextStyle(fontSize: 17.5),
                      )
                    ],
                    
                  ),
                ),
              ), 
            ),
            Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),  
                  child: InkWell(
                    onTap: () async {
              
                //  Navigator.of(context).push(
                   // MaterialPageRoute(
                     // builder: (context) => Calculadora(),
                   // ),
               //   );
                },
                splashColor: Colors.grey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.chat_bubble_outline_sharp, size: 70.0, color: Colors.cyan),
                      
                      Text(
                        'Discussões',
                        style: TextStyle(fontSize: 17.5),
                      )
                    ],
                    
                  ),
                ),
              ), 
            ),
            Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),  
                  child: InkWell(
                    onTap: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Coordenadas(),
                    ),
                  );
                },
                splashColor: Colors.grey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.map, size: 70.0, color: Colors.cyan),
                      Text(
                        'Coordenadas',
                        style: TextStyle(fontSize: 17.5),
                      )
                    ],
                  ),
                ),
              ), 
            ),
          ]),
            ),
          )
        ],
      ),
    );
  }
}