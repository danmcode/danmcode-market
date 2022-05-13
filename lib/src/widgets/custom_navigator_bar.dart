import 'package:danmcode_market/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    return BottomNavigationBar(
      currentIndex: uiProvider.currentIndex,
      onTap: (value) => uiProvider.currentIndex = value,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Carrito',
        ),
      ],
    );
  }
}
