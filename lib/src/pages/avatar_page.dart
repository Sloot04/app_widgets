import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk76GYWdZgfnNEgaKiR2W4l4DAyR50LSdeV6YQ77n4qNrNvF-SDbcJbIKJcNK13xA_mjQ&usqp=CAU'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF3hwQnI9FThC3EJd9yvss889T3ld4VJtzY025Ej0NOki6WQgBxZX5Fc4M1lsq89HHsdk&usqp=CAU'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
