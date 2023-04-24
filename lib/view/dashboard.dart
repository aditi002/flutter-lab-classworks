import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_lab/app.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
              
              Navigator.pushNamed(context, '/nameRoute');
              },
              child: const Text('Change Name'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
              
              Navigator.pushNamed(context, '/areaRoute');
              },
              child: const Text('Area of circle'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
              
                Navigator.pushNamed(context, '/siRoute');
              },
              child: const Text('Simple Interest'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                  Navigator.pushNamed(context, '/arithmeticRoute');
              },
              child: const Text('Arithmetic'),
            ),
          ],
        ),
      ),
    );
  }
}