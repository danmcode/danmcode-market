import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size query = MediaQuery.of(context).size;
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            height: query.height * 0.3,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                    child: Text('DM'),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Daniel Alexander Muelas Rivera'),
                        Text('danielmuela483@gmail.com'),
                        Text('3108903571'),
                        Text('Desarrollador Móvil'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Menu List
          _DrawerMenu(size: query)
        ],
      ),
    );
  }
}

class _DrawerMenu extends StatelessWidget {
  final Size size;
  const _DrawerMenu({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Menu Items
    List<MenuItems> menuItems = _getMenuItems(context: context);
    return Container(
      height: size.height * 0.7,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemBuilder: (context, index) => ListTile(
          title: menuItems[index].title,
          leading: menuItems[index].leading,
          onTap: () {
            print('tap');
            menuItems[index].onTap;
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuItems.length,
      ),
    );
  }
}

List<MenuItems> _getMenuItems({required BuildContext context}) {
  return [
    MenuItems(
      title: const Text('Editar Perfil'),
      leading: const Icon(Icons.person),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, 'profile');
      },
      context: context,
    ),
    MenuItems(
      title: const Text('Configuración'),
      leading: const Icon(Icons.settings),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, 'configuration');
      },
      context: context,
    ),
    MenuItems(
      title: const Text('Favoritos'),
      leading: const Icon(Icons.favorite),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, 'favorites');
      },
      context: context,
    ),
    MenuItems(
      title: const Text('Mis compras'),
      leading: const Icon(Icons.shopping_bag),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, 'myShopping');
      },
      context: context,
    ),
    MenuItems(
      title: const Text('Cerrar Sesión'),
      leading: const Icon(Icons.logout),
      onTap: () {},
      context: context,
    ),
  ];
}

class MenuItems {
  final BuildContext context;
  final Widget title;
  final Widget leading;
  final void Function() onTap;

  MenuItems({
    required this.title,
    required this.leading,
    required this.onTap,
    required this.context,
  });
}
