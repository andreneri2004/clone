import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.window,
            color: Colors.blue,
            title: 'Geral',
          ),
          _SingleCard(
            icon: Icons.train_sharp,
            color: Colors.purple,
            title: 'Transporte',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.car_crash,
            color: Colors.red,
            title: 'Car',
          ),
          _SingleCard(
            icon: Icons.bus_alert_sharp,
            color: Colors.green,
            title: 'Onibus',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.window,
            color: Colors.blue,
            title: 'Geral',
          ),
          _SingleCard(
            icon: Icons.train_sharp,
            color: Colors.purple,
            title: 'Transporte',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.car_crash,
            color: Colors.red,
            title: 'Car',
          ),
          _SingleCard(
            icon: Icons.bus_alert_sharp,
            color: Colors.green,
            title: 'Onibus',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  _SingleCard(
      {Key? key, required this.icon, required this.color, required this.title})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String title;

  //Trasparência
  final BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color.fromRGBO(62, 66, 107, 0.7));

  @override
  Widget build(BuildContext context) {

    //Avatar(Icone e título)
    final Column column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundColor: color,
          child: Icon(icon, color: Colors.white, size: 40),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            title,
            style: TextStyle(color: color, fontSize: 18),
          ),
        )
      ],
    );

    //Cartão
    return _CardBackGround(
      boxDecoration: boxDecoration,
      child: column,
    );
  }
}

class _CardBackGround extends StatelessWidget {
  final Widget child;
  final BoxDecoration boxDecoration;

  const _CardBackGround(
      {Key? key, required this.child, required this.boxDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          // Componente que coloca um efeito de blur - vai ficar tudo borrado
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: child,
          ),
        ),
      ),
    );
    ;
  }
}
