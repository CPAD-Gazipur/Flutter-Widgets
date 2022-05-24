import 'package:flutter/material.dart';
import 'package:flutter_widgets/components/app_drawer.dart';
import 'package:flutter_widgets/screen/container.dart';
import 'package:flutter_widgets/screen/friendly_chat.dart';
import 'package:flutter_widgets/components/home_screen.dart';
import 'package:flutter_widgets/screen/random_words.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      animationDuration: const Duration(milliseconds: 500),
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Material App',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.grey,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.confirmation_num_outlined),
                  text: 'Container',
                ),
                Tab(
                  icon: Icon(Icons.radar_outlined),
                  text: 'Random',
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'Chat',
                ),
              ],
            )),
        drawer: appDrawer(context),
        body: const TabBarView(
          children: [
            HomeScreen(
              isTabView: true,
            ),
            ContainerDesign(
              isTabView: true,
            ),
            RandomWords(
              isTabView: true,
            ),
            FriendlyChat(
              isTabView: true,
            ),
          ],
        ),
      ),
    );
  }
}
