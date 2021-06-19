import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(padding: EdgeInsets.all(10.0), children: [
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
         SizedBox(
          height: 30.0,
        ),
         _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
         SizedBox(
          height: 30.0,
        ),
         _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
         SizedBox(
          height: 30.0,
        ),
         _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
      ]),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Esto es un subtitulos muy muy muy muy muy muy, muchisimo muy, extremadamente largo.'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Cancelar'),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
            fadeInDuration: Duration(milliseconds: 500),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'),
          ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
