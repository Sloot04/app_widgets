import 'package:flutter/material.dart';
import 'package:curso_udemy/src/providers/menu_provider.dart';
import 'package:curso_udemy/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    if (data != null) {
      data.forEach((element) {
        final widgetTemp = ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pushNamed(context, element['ruta']);
          },
        );

        opciones..add(widgetTemp)..add(Divider());
      });
    } else {
      opciones.add(Text('No anda'));
    }
    return opciones;
  }
}
