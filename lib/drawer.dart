import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            onTap: () {
              Navigator.pop(context); //fecha menu
            },
          ),

          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.abc),
            title: Text('Contato'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
