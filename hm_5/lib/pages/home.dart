import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;
  Color heartColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$count',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = count + 1;
                  });
                },
                child: const Text(
                  'سبح',
                  style: TextStyle(fontSize: 60),
                )),
            InkWell(
              onTap: () {
                setState(() {
                  if (heartColor == Colors.red) {
                    heartColor = Colors.black;
                  } else {
                    heartColor = Colors.red;
                  }
                });
              },
              child: Icon(
                Icons.favorite,
                size: 100,
                color: heartColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
