import 'package:flutter/material.dart';

class NameView extends StatefulWidget {
  const NameView({super.key});

  @override
  State<NameView> createState() => _ChangeNameViewState();
}

class _ChangeNameViewState extends State<NameView> {
  String initialName = "ADITI";

  void _changeName() {
  setState(() {
    var name = 'Chalisay';
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Name'),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
                _changeName;
            },
            child: const Text(
              'Change Name',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

