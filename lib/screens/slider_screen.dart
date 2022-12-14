import 'package:fl_components/screens/screens.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliders && Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 500,
            activeColor: AppTheme.primary,
            //divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
            // for disabled check box
            // onChanged: null
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider Joker"),
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            }),
          ),
          Switch.adaptive(
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider Joker"),
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/originals/66/e9/bf/66e9bf7dd5ce369f8e85fec15acd691a.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
