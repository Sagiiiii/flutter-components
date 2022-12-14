import 'package:fl_components/widgets/widgets.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? detail;

  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (detail != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(
                  right: 20, top: 10, bottom: 10, left: 20),
              child: Text(detail ?? 'No tiene detalle la imagen'),
            )
        ],
      ),
    );
  }
}
