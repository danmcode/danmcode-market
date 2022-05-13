import 'package:danmcode_market/src/providers/providers.dart';
import 'package:danmcode_market/src/themes/light_theme.dart';
import 'package:danmcode_market/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(context: context),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: const _HomeBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: LightTheme.danmcodeGreen,
        elevation: 0,
        onPressed: () {
          Navigator.pushNamed(context, 'search');
        },
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  AppBar _customAppBar({
    required BuildContext context,
  }) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/damncode-logo.png',
            width: 80,
          ),
          const SizedBox(width: 8),
          Text(
            'Market',
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    switch (uiProvider.currentIndex) {
      case 0:
        return const Products();
      case 1:
        return const ShoppingCar();
      default:
        return const Products();
    }
  }
}
