import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //grid view
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/gridviewRoute');
                },
                child: const Text('Grid View'),
              ),
              //card view
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/cardviewRoute');
                },
                child: const Text('Card View'),
              ),
              //picture view
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/pictureRoute');
                },
                child: const Text('Picture View'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/rowcolumnRoute');
                },
                child: const Text('Row and Column'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/mediaqueryRoute');
                },
                child: const Text('Media Query'),
              ),
              //ui
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/uiRoute');
                },
                child: const Text('UI'),
              ),
              //image
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/loadimageRoute');
                },
                child: const Text('Load Image'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/containerRoute');
                },
                child: const Text('container'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/outputRoute');
                },
                child: const Text('Output'),
              ),
              //number generator
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/numberRoute');
                },
                child: const Text('Random Number game'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/columnRoute');
                },
                child: const Text('Column view'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                
                Navigator.pushNamed(context, '/richtextRoute');
                },
                child: const Text('Rich text view'),
              ),
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
      ),
    );
  }
}