import 'package:flutter/material.dart';

class Item {
  String title;
  String content;

  Item({required this.title, required this.content});
}

class Dicionario extends StatefulWidget {
  @override
  _DicionarioState createState() => _DicionarioState();
}

class _DicionarioState extends State<Dicionario> {
  final List<Item>  _items = [
    Item(
      title: 'Azimute', 
      content: 'Azimute é a medida angular horizontal entre uma direcção de referência, geralmente o norte, e um ponto específico em um plano horizontal.'),
    Item(title: 'Datum', content: 'É um conjunto de parâmetros que define a posição e orientação de um elipsoide de referência em relação à Terra real. É usado como base para determinar coordenadas geográficas e altitudes.'),
    Item(title: 'Geóide', content: 'É uma superfície equipotencial do campo gravitacional terrestre que melhor se ajusta ao nível médio dos oceanos em todo o planeta. É usado como referência para medir altitudes e representa a forma "real" da Terra, levando em conta as irregularidades topográficas.'),
    Item(title: 'Georreferenciamento', content: 'É o processo de associar coordenadas geodésicas a objectos, imagens ou dados geoespaciais. É usado para garantir a precisão e a consistência dos dados geográficos.'),
    Item(title: 'Triangulação', content: 'É um método de levantamento geodésico que envolve a medição de ângulos e distâncias entre pontos para determinar suas coordenadas geodésicas.'),
    Item(title: 'Item 3', content: 'Conteúdo do Item 3'),
    Item(title: 'Item 3', content: 'Conteúdo do Item 3'),
    Item(title: 'Item 3', content: 'Conteúdo do Item 3'),
    Item(title: 'Item 3', content: 'Conteúdo do Item 3'),
  ];

  final List<bool> _itemExpandedList = List<bool>.generate(20, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicionario'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ExpansionPanelList(
            expandedHeaderPadding: const EdgeInsets.all(0),
            elevation: 1,
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                _itemExpandedList[index] = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text(_items[index].title),
                  );
                },
                body: ListTile(
                  title: Text(_items[index].content),
                ),
                isExpanded: _itemExpandedList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
