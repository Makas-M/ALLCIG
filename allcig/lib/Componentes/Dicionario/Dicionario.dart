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
    Item(title: 'Azimute', content: 'Medida angular horizontal entre uma direcção de referência, geralmente o norte, e um ponto específico em um plano horizontal.'),
    Item(title: 'Batimetria', content: 'Levantamento topográfico subaquático que envolve a medição e o mapeamento da profundidade dos corpos de água, como oceanos, lagos e rios.'),
    Item(title: 'Datum', content: 'Conjunto de parâmetros que define a posição e orientação de um elipsoide de referência em relação à Terra real. É usado como base para determinar coordenadas geográficas e altitudes.'),
    Item(title: 'Elipsoide', content: 'Modelo matemático da forma da Terra, que assume a forma de um elipsoide oblato, ou seja, um esferoide achatado nos polos e alongado no equador.'),
    Item(title: 'Escala', content: 'Relação matemática entre as dimensões reais do terreno e as dimensões representadas no mapa.'),
    Item(title: 'Geóide', content: 'Superfície equipotencial do campo gravitacional terrestre que melhor se ajusta ao nível médio dos oceanos em todo o planeta. É usado como referência para medir altitudes e representa a forma "real" da Terra, levando em conta as irregularidades topográficas.'),
    Item(title: 'Georreferenciamento', content: 'Processo de associar coordenadas geodésicas a objectos, imagens ou dados geoespaciais. É usado para garantir a precisão e a consistência dos dados geográficos.'),
    Item(title: 'Gravimetria', content: 'Medição do campo gravitacional da Terra para estudar a distribuição de massa dentro do planeta. A gravimetria é usada para determinar a forma e a densidade da Terra.'),
    Item(title: 'Jusante', content: 'Refere-se à direção do fluxo de água rio abaixo, ou seja, na direção em que o rio segue em direção à sua foz ou deságue. Jusante é o oposto de montante.'),
    Item(title: 'Maré', content: 'Movimento regular e periódico da água do mar causado principalmente pela atração gravitacional da Lua e, em menor grau, do Sol.'),
    Item(title: 'Montante', content: 'Refere-se à direção do fluxo de água rio acima, ou seja, na direção contrária ao curso do rio, em direção à nascente ou à fonte do rio. Montante é o oposto de jusante.'),    
    Item(title: 'Nivelamento', content: 'Processo de medição de altitudes relativas entre pontos na superfície da Terra, utilizando um nível de precisão. É usado para criar perfis de terreno e estabelecer referências altimétricas.'),
    Item(title: 'Parcelamento', content: 'Processo de dividir uma área de terra em lotes menores para fins de planejamento urbano, projeto de estradas, construção de edifícios, entre outros.'),
    Item(title: 'Raster', content: 'Formato de dados geoespaciais que representa informações como uma grade de células ou pixels. É frequentemente usado para representar imagens de satélite ou modelos de terreno.'),
    Item(title: 'Toponímia', content: 'Estudo e a representação dos nomes de lugares em um mapa. A toponímia envolve a identificação, classificação e padronização dos nomes geográficos.'),    
    Item(title: 'Triangulação', content: 'Método de levantamento geodésico que envolve a medição de ângulos e distâncias entre pontos para determinar suas coordenadas geodésicas.'),
    Item(title: 'Vetor', content: 'Formato de dados geoespaciais que representa informações como pontos, linhas ou polígonos. É usado para representar objetos geográficos discretos, como estradas, rios, edifícios e áreas.'),
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
