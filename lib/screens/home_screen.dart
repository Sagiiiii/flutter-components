import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MenuOptions = AppRoutes.menuOption;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(
            MenuOptions[i].icon,
            color: AppTheme.primary,
          ),
          title: Text(MenuOptions[i].name),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppTheme.primary,
          ),
          onTap: () {
            //final route = MaterialPageRoute(
            //  builder: (context) => const Listview2Screen(),
            //);
            //Navigator.push(context, route);
            //Navigator.pushNamed(context, '/listview2');
            Navigator.pushNamed(context, MenuOptions[i].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(
          color: Colors.black54,
        ),
        itemCount: MenuOptions.length,
      ),
    );
  }
}
