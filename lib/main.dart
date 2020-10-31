import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivsemo/bloc/blocs.dart';
import 'package:vivsemo/pages/home_page.dart';

import 'model/models.dart';

void main() {
  Api vivsemoApiClient = ProtobufApi("http://10.0.2.2:8080");
  runApp(MyApp(
    vivsemoApiClient: vivsemoApiClient,
  ));
}

class MyApp extends StatelessWidget {
  final Api vivsemoApiClient;

  const MyApp({Key key, this.vivsemoApiClient})
      : assert(vivsemoApiClient != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotoBloc(apiClient: this.vivsemoApiClient),
      child: new MaterialApp(
        title: "Vivsemo",
        theme: new ThemeData(
          primaryColor: Colors.green.shade400,
          accentColor: Colors.green.shade900,
          primaryIconTheme: IconThemeData(color: Colors.green),
          primaryTextTheme:
              TextTheme(headline1: TextStyle(color: Colors.green)),
          textTheme: TextTheme(headline1: TextStyle(color: Colors.green)),
        ),
        home: new HomePage(),
      ),
    );
  }
}
