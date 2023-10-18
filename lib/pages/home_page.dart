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
                  ListView.builder(
                    itemCount: state.Unis.length,
                    prototypeItem: ListTile(
                      title: Text(state.Unis.first),
                    ),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.Unis[index]),
                      );
                    },
                  ),
                  TextFormField(),
                  DropdownMenuExample(
                    list: state.countries,
                  )
                ]),
              );
            }));
  }
}
