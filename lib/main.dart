import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.grey),
        fontFamily: 'ATLA',
      ),
      debugShowCheckedModeBanner: false,
      home: const Homework(),
    );
  }
}

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Homework 1")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(padding: const EdgeInsets.all(20), child: Body()),
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: .min,
      mainAxisAlignment: .center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              color: Colors.amberAccent,
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Image.asset('assets/images/air.png', height: 80, width: 80),
                  const SizedBox(height: 8),
                  Text("Air", style: theme.textTheme.titleMedium?.copyWith()),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Image.asset('assets/images/water.png', height: 80, width: 80),
                  const SizedBox(height: 8),
                  Text("Water", style: theme.textTheme.titleMedium?.copyWith()),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              color: Colors.lightGreen,
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Image.asset('assets/images/earth.png', height: 80, width: 80),
                  const SizedBox(height: 8),
                  Text("Earth", style: theme.textTheme.titleMedium?.copyWith()),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.redAccent,
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Image.asset('assets/images/fire.png', height: 80, width: 80),
                  const SizedBox(height: 8),
                  Text("Fire", style: theme.textTheme.titleMedium?.copyWith()),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
