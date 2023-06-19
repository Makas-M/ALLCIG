import 'package:flutter/material.dart';
import 'dart:math' as math;

class RaioParalelo extends StatefulWidget {
  const RaioParalelo({super.key});

  @override
  State<StatefulWidget> createState() => Calculadora();
}

class Calculadora extends State<RaioParalelo> {
  final latg = TextEditingController();
  final latm = TextEditingController();
  final lats = TextEditingController();

  final raio = TextEditingController();
  final d = double;

  String saida1 = "";
  
  //Caululo da latitude
  void latitude() {
    double R = (double.parse(raio.text));
    double latitude = (double.parse(latg.text) +
        double.parse(latm.text) / 60 +
        double.parse(lats.text) / 3600);
    double result = latitude;

    //calucular o raio do paralelo
    double d = R * math.cos(result) ;
    setState(() {
      saida1 = "$d";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raio do Paralelo'),
        backgroundColor: Colors.cyan,
      ),
      body: Form(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Stack(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.center,
                  )
                ],
              ),

              Container(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 20),
                    const Text("Latitude do Paralelo: "),
                    SizedBox(
                      width: 40,
                      height: 30,
                      child: TextFormField(
                        controller: latg,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Não pode estar vazio";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(hintText: "G"),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Text('°'),
                    const Divider(),
                    SizedBox(
                      width: 40,
                      height: 30,
                      child: TextFormField(
                        controller: latm,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Não pode estar vazio";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "M",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Text("'"),
                    SizedBox(
                      width: 40,
                      height: 30,
                      child: TextFormField(
                        controller: lats,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Não pode estar vazio";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "S",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Text('"'),
                  ],
                ),
                
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text("Raio da Terra"),
                  TextFormField(
                    controller: lats,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Não pode estar vazio";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "S",
                        ),
                        keyboardType: TextInputType.number,
                  )
                ]
                
              ),
              
              const Divider(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: latitude,
                    child: Column(
                      children: const <Widget>[Text('Converter')],
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 40.0,
              ),
              //Resultados
              SizedBox(
                height: 50.0,
                width: 300,
                child: Center(
                  child: Text(
                    ("Graus Decimais: $saida1"),
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
