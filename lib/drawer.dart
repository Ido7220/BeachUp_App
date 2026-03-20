import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/utilidades.dart';

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
            title: Text('Recursos'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.abc),
            title: Text('Coomo funicona'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.abc),
            title: Text('Planos'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.local_activity),
            title: Text('Localização'),
          ),

          SizedBox(height: 150),

          Row(
            children: [
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      navigatorPush(context, LoginScreen());
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: const Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
