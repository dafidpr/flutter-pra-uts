import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
            icon: LineAwesomeIcons.user,
            text: 'Profile',
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          _drawerItem(
            icon: LineAwesomeIcons.box_open,
            text: 'Portfolio',
            onTap: () {
              Navigator.pushNamed(context, '/portfolio');
            },
          ),
          _drawerItem(
            icon: LineAwesomeIcons.image,
            text: 'Galery',
            onTap: () {
              Navigator.pushNamed(context, '/galery');
            },
          ),
          _drawerItem(
            icon: LineAwesomeIcons.address_book,
            text: 'Contact Us',
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
          _drawerItem(
            icon: LineAwesomeIcons.cog,
            text: 'Setting',
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1628157588553-5eeea00af15c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
          fit: BoxFit.cover),
    ),
    accountName: Text('Dafid Prasetyo'),
    accountEmail: Text('dafid@gmail.com',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11)),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://w0.peakpx.com/wallpaper/163/132/HD-wallpaper-blue-yellow-cubes-yellow-background.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color.fromARGB(255, 100, 100, 100),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              color: Color.fromARGB(255, 100, 100, 100),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
