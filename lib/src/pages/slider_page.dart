import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
          padding: EdgeInsetsDirectional.only(top: 50.0),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckBox(),
              _crearSwit(),
              Expanded(
                child: _crearImagen(),
              ),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (bool? valor) {
        if (valor != null) {
          setState(() {
            _bloquearCheck = valor;
          });
        }
      },
    );
  }

  Widget _crearSwit() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (bool? valor) {
        if (valor != null) {
          setState(() {
            _bloquearCheck = valor;
          });
        }
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/71/67/59/716759befb533ecfc06ca1ce502ac0c5.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
