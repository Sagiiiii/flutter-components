import 'package:fl_components/screens/screens.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://pm1.narvii.com/6240/a181d0bc7f397909ddefcf4a88e7196cf8bcbc56_hq.jpg',
            detail: 'Bijuu de una cola - ICHIBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://images6.alphacoders.com/547/547587.jpg',
            detail: 'Bijuu de dos colas - NIBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://static.wikia.nocookie.net/naruto/images/6/67/Sanbi.png/revision/latest?cb=20170121154147&path-prefix=fr',
            detail: 'Bijuu de tres colas - SANBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://static.wikia.nocookie.net/naruto/images/4/42/Roshi_y_el_Cuatro_Colas.jpg/revision/latest?cb=20111207132902&path-prefix=es',
            detail: 'Bijuu de cuatro colas - YONBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://images5.alphacoders.com/547/547585.jpg',
            detail: 'Bijuu de cinco colas - GOBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/originals/c6/f0/d6/c6f0d67038fffeb4901d007371f88fa1.jpg',
            detail: 'Bijuu de seis colas - ROKUBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/originals/ed/15/82/ed15821c3c75d6f0b7810bb028f73d55.jpg',
            detail: 'Bijuu de siete colas - NANABI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://static.wikia.nocookie.net/narutoshippudenlatinobeta/images/1/17/Hachibi.png/revision/latest?cb=20100129023822&path-prefix=es',
            detail: 'Bijuu de ocho colas - HACHIBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://i1.wp.com/www.senpai.com.mx/wp-content/uploads/2020/10/Naruto_-Todo-lo-que-sabemos-sobre-la-transformacio%CC%81n-suicida-del-Nueve-Colas-2.jpg?fit=1280%2C720&ssl=1',
            detail: 'Bijuu de nueve colas - KYÜBI',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://sm.ign.com/ign_latam/screenshot/default/naruto1_me3w.jpg',
            detail: null,
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
