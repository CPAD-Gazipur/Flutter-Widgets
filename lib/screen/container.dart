import 'package:flutter/material.dart';

class ContainerDesign extends StatelessWidget {
  final bool isTabView;
  const ContainerDesign({required this.isTabView,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isTabView ? null : AppBar(
        title: const Text('Container Design'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(
                        4.0,
                        4.0,
                      ),
                    )
                  ]),
              transform: Matrix4.rotationZ(0.2),
              child: const Center(
                child: Text(
                  'Hello Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Container Design',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Here I have used Container for design the box. Also use BoxDecoration, BoxBorder, BoxShadow, BoxRadius & Transform.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
