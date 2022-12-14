import 'package:fl_components/screens/screens.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stand Lee"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 197, 159, 20),
              child: Text(
                'SL',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              "https://as01.epimg.net/meristation/imagenes/2021/12/29/noticias/1640799553_911125_1640799649_noticia_normal.jpg"),
        ),
      ),
    );
  }
}
