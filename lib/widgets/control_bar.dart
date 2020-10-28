import 'package:flutter/material.dart';

class ControlBar extends StatelessWidget {
  const ControlBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <IconButton>[
          new IconButton(
            icon: Icon(Icons.home),
            onPressed: null,
          ),
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          new IconButton(
            icon: Icon(Icons.add_box),
            onPressed: null,
          ),
          new IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
          ),
          new IconButton(
            icon: Icon(Icons.notifications),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
