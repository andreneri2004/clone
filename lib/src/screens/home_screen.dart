import 'package:flutter/material.dart';
import 'package:clone_app_basic/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackGround(),
          SafeArea(
            child: _HomeBody(),
          ),
        ],
      ),
      bottomNavigationBar: const CustomButtomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PageTitle(),
          SizedBox(height: 10),
          CardTable()
        ],

      ),
    );
  }
}
