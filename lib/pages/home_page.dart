import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uni_app/state/home_state.dart';
import 'package:uni_app/widgets/base_widget.dart';
import 'package:uni_app/widgets/dropdown_menu.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // do any setup for state
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: BaseWidget<HomeState>(
            state: Provider.of<HomeState>(context),
            builder: (context, state, child) {
              return Scaffold(
                // Create your layout here
                body: Column(children: [
                  //ListView.builder(itemBuilder: itemBuilder)
                  Spacer(),
                  TextFormField(
                    decoration:
                        new InputDecoration.collapsed(hintText: 'Name of Uni'),
                  ),
                  DropdownMenuExample(
                    list: state.countries,
                  )
                ]),
              );
            }));
  }
}
