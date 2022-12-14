import 'package:fl_components/screens/screens.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash Bros',
    'Final Fantasy',
    'Dota 2',
    'LOL',
    'DBS Z',
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          //...options.map((e) => Text('Hola Mundo')).toList()
          //ListTile(
          //  title: Text('Hola Mundo'),
          //),
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
