import 'package:flutter/material.dart';

class FriendlyChat extends StatelessWidget {
  final bool isTabView;
  const FriendlyChat({required this.isTabView,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isTabView ? null : AppBar(
        title: const Text('Friendly Chat'),
      ),
      body: const Center(
        child: Text('Chat'),
      ),
    );
  }
}
