import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  const TopBar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white60,
      centerTitle: true,
      elevation: 1.0,
      leading: new Icon(Icons.camera_alt),
      title: Text(
        "VivSemo",
        style: TextStyle(color: Colors.green.shade900),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(Icons.send),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
