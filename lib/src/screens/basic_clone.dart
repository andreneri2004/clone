import 'package:flutter/material.dart';

class BasicClone extends StatelessWidget {
  const BasicClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clone Aplicativo Básico'),
        elevation: 0,
      ),
      body: Column(
        children: const [
          Image(
            image: AssetImage('assets/images/rio-amazonas-descubrimiento.jpg'),
            fit: BoxFit.fill,
            height: 250,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Title(),
          ),
          ButtonSection(),
          Content()
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Alguma coisa aqui',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Outra coisa lá gtrrderrt',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        Expanded(child: Container()),
        const Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('41')
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustonButton(icon: Icons.call, nomeButton: 'Call'),
          CustonButton(icon: Icons.route, nomeButton: 'Route'),
          CustonButton(icon: Icons.share, nomeButton: 'Share'),
        ],
      ),
    );
  }
}

class CustonButton extends StatelessWidget {
  final IconData icon;
  final String nomeButton;

  const CustonButton({Key? key, required this.icon, required this.nomeButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => {print('Selecionei $nomeButton')},
          child: Icon(icon, size: 30),
        ),
        Text(
          nomeButton,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. ',
          textAlign: TextAlign.justify),
    );
  }
}
