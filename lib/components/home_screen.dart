import 'package:flutter/material.dart';
import 'package:flutter_widgets/components/elevated_button.dart';
import 'package:flutter_widgets/screen/container.dart';
import 'package:flutter_widgets/screen/friendly_chat.dart';
import 'package:flutter_widgets/screen/random_words.dart';

class HomeScreen extends StatelessWidget {
  final bool isTabView;
  const HomeScreen({required this.isTabView, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isTabView ? null : AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            ElevatedButtonDesign(
              classTitle: ContainerDesign(isTabView: false,),
              title: 'Container Design',
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButtonDesign(
              classTitle: RandomWords(isTabView: false,),
              title: 'Random Words',
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButtonDesign(
              classTitle: FriendlyChat(isTabView: false,),
              title: 'Friendly Chat App',
            ),
          ],
        ),
      ),
    );
  }
}
