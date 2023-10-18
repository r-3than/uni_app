import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uni_app/state/home_state.dart';

//This is boiler plate code for all providers!
class FlashCardProvider extends StatelessWidget {
  final Widget child;

  const FlashCardProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeState>(
      create: (_) => HomeState(),
      child: child,
    );
  }
}