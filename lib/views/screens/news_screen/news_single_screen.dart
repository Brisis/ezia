import 'package:flutter/material.dart';

class NewsSingleScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const NewsSingleScreen(),
    );
  }

  const NewsSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
