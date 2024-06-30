import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 1, 52, 82),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Center(
            child: UserAccountsDrawerHeader(
              accountName: const Text('Calculatorapp.com'),
              accountEmail: const Text('Calculator@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/image/avatarone.jpg',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 14, 61, 100),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'assets/image/background.jpg',
                    fit: BoxFit.cover,
                  ).image,
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Exit',
              style: TextStyle(color: Colors.white),
            ),
            leading: const Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 28, 24, 255),
            ),
            onTap: () {
              // Implement exit functionality here
            },
          ),
        ],
      ),
    );
  }
}
