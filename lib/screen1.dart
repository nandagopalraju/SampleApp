import 'package:flutter/material.dart';
import 'package:github_action_flow_test/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Sample APP"), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 50,),
          const Text("This is Screen 1"),
          const Text("Click here to navigate to screen 2"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen2()),
              );
            },
            child: const Text("Here"),
          ),
        ]),
      ),
    );
  }
}
