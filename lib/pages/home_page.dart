import 'package:flutter/material.dart';
import 'package:vivsemo/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new TopBar(),
      body: Text("VivSemo"),
      bottomNavigationBar: ControlBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
    );
  }
}
