import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/container.dart';
import 'package:flutter_widgets/screen/friendly_chat.dart';
import 'package:flutter_widgets/components/home_screen.dart';
import 'package:flutter_widgets/screen/random_words.dart';

Widget appDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      padding: const EdgeInsets.all(10),
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text('Md. Al-Amin'),
          accountEmail: const Text('amin15-1951@diu.edu.bd'),
          currentAccountPicture: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://yt3.ggpht.com/60YCB44C0ObjtzzcoRSrLcaqQ55FgQj_Q0TQWLinc0dURXnER8_cC8AwtMXZowIxwu88FY_3=s900-c-k-c0x00ffffff-no-rj',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(
                  isTabView: false,
                ),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Container Design'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ContainerDesign(
                  isTabView: false,
                ),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Random Words'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RandomWords(isTabView: false,),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Friendly Chat App'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FriendlyChat(
                  isTabView: false,
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}
