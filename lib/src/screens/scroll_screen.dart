import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Colocar um fundo gradiente, já que o scaffold não permite
    const BoxDecoration boxDecoration =   BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]));

    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      //Para rolar as páginas
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: const [Page1(), Page2()],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [_CustomBackgound(), _MainContent()],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () => {},
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098fa), shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Bem vindo!',
                style: TextStyle(fontSize: 30, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class _CustomBackgound extends StatelessWidget {
  const _CustomBackgound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(
          image: AssetImage('assets/images/scroll.png'),
        ));
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('11º', style: textStyle),
          Text('Arábia', style: textStyle),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
