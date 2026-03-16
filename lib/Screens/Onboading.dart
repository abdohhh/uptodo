import 'package:flutter/material.dart';
import 'package:uptodo/generated/l10n.dart';

class Onboading extends StatefulWidget {
  const Onboading({super.key});

  @override
  State<Onboading> createState() => _OnboadingState();
}

class _OnboadingState extends State<Onboading> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(onPressed: () {}, child: Text(S.of(context).skip)),
            const Text('Onboading Screen'),
          ],
        ),
      ),
    );
  }
}
