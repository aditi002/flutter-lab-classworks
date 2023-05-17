import 'package:flutter/material.dart';

class grid_view extends StatelessWidget {
  const grid_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoadImage'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: [

          SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 247, 14, 87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            "1",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
        ),
      )
    ),
    SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 247, 14, 87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            "2",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
        ),
      )
    ),
    SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 247, 14, 87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            "3",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
        ),
      )
    ),
    SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 247, 14, 87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            "4",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
        ),
      )
    ),
        ],
      )
    );
  }
}