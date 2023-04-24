import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AreaView extends StatefulWidget {
  const AreaView({super.key});

  @override
  State<AreaView> createState() => _CircleViewState();
}

class _CircleViewState extends State<AreaView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}