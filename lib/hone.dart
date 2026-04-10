import 'package:flutter/material.dart';

class Hone extends StatelessWidget {
  const Hone({super.key});

  Widget padding() {
    return Padding(padding: EdgeInsets.all(16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("mohsen")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(color: Colors.blue, width: 40, height: 40),
                  padding(),
                  Expanded(
                    child: Container(
                      color: Colors.cyanAccent,
                      height: 40,
                      width: 40,
                    ),
                  ),
                  padding(),
                  Container(color: Colors.cyanAccent, height: 40, width: 40),
                ],
              ),
              padding(),
              MyRow(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget padding() {
  return Padding(padding: EdgeInsets.all(16));
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                mycontainar(),

                padding(),
                mycontainar(),
                padding(),
                Container(color: Colors.cyanAccent, height: 20, width: 20),
                Divider(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 27, 219, 17),
                      radius: 100,
                      child: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.deepPurple,
                          ),
                          Container(height: 60, width: 60, color: Colors.brown),
                          Container(
                            height: 40,
                            width: 40,
                            color: const Color.fromARGB(255, 214, 9, 9),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
                Text('End of the Line'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Container mycontainar() =>
      Container(color: Colors.blueAccent, width: 40, height: 40);
}
