import 'package:flutter/material.dart';
import 'package:github_action_flow_test/screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Sample APP"), backgroundColor: Colors.blueAccent),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text("This is screen 2"),
          const Icon(Icons.celebration),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen1()),
                );
              },
              child: const Text("Go Back"))
        ],
      )),
    );
  }
}
