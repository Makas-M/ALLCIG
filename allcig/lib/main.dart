import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AllCIG',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

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
                    backgroundColor: Colors.cyan,
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
                  topLeft: Radius.circular(100)
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
  // ignore: non_constant_identifier_names
  itemDashboard(String title, IconData iconData, Color Backgroud) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5,

        )
      ] 
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Backgroud,
            shape: BoxShape.circle
          ),
          child: Icon(iconData, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );
}