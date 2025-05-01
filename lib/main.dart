import 'package:flutter/material.dart';

import 'platform_padding.dart' show platformAwarePadding;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Platform Padding Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(body: PaddingExample()),
    );
  }
}

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Platform-Aware Padding')),
      body: Padding(
        padding: platformAwarePadding(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'This layout adapts its padding based on the platform.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Text('Try running it on mobile vs web/desktop.'),
          ],
        ),
      ),
    );
  }
}
