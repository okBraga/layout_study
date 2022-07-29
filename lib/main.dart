import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final fontSize = 16;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Praia de Piratininga',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Text(
                  'Niterói, Rio de Janeiro',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.amber[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = const Color.fromRGBO(125, 122, 111, 1.0);

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Call'),
        _buildButtonColumn(color, Icons.near_me, 'Route'),
        _buildButtonColumn(color, Icons.share, 'Share'),
      ],
    );

    Column textColumn = Column(
      children: const [
        Text(
          'A praia de Piratininga é porta de entrada da região oceânica de'
          ' Niterói e também a maior praia desta região, sendo na verdade,'
          ' formada pela união de duas outras praias. As praias conhecidas'
          ' como Praião, trecho mais extenso e com ondas mais fortes, e'
          ' Prainha, de menor extensão e com mar calmo, se unem para formar'
          ' a praia de Piratininga, com um total de 2,7 Km de extensão.',
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Como atrações, a praia de Piratininga tem um belo visual, com'
          ' destaque para a chamada Pedra da Baleia, muito usada para'
          ' mergulhos, e outras pedras que dividem as duas praias, e a bela'
          ' vista do Cristo Redentor e do Pão de Açúcar. A praia também é'
          ' repleta de quiosques, que servem petiscos e frutos do mar, e'
          ' frequentada por moradores durante a semana e por pessoas de'
          ' toda a cidade nos fins de semana.',
        ),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout study',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout study'),
          backgroundColor: Colors.grey[800],
          centerTitle: true,
        ),
        body: ListView(children: [
          Image.asset(
            'images/piratininga.jpg',
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          Padding(
            padding: const EdgeInsets.all(32),
            child: textColumn,
          ),
        ]),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
