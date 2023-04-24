import 'package:flutter/material.dart';


class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  double principal=0;
  double time =0;
  double rate =0;
  double simpleInterest=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simple Interest Calculator'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Enter Principal Amount'),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    principal = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 10),
              Text('Enter Rate of Interest'),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    rate = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 10),
              Text('Enter Time Period (in years)'),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    time = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                    setState(() {
                      simpleInterest =(principal * time * rate) / 100;
                    });
                  },
                child: Text('Calculate Simple Interest'),
              ),
              SizedBox(height: 10),
              Text('Simple Interest: $simpleInterest'),
            ],
          ),
        ),
      );
  }
}