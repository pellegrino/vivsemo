import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivsemo/bloc/blocs.dart';
import 'package:vivsemo/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PhotoBloc bloc = BlocProvider.of<PhotoBloc>(context);

    return new Scaffold(
      appBar: new TopBar(),
      body: BlocListener<PhotoBloc, PhotoState>(
        listener: (context, state) {
          if (state is PhotoInitial) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text('success'),
              ),
            );
          }
        },
        child: BlocBuilder<PhotoBloc, PhotoState>(
          builder: (context, state) {
            if (state is PhotoInitial) {
              return Center(child: Text('Press the Button'));
            }

            if (state is PhotosLoaded) {
              return Text(state.allPhotosResponse.toString());
              // load photo gallery
            }
          },
        ),
      ),
      bottomNavigationBar: ControlBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              bloc.add(GetAllPhotosStarted());
            },
            child: Icon(
              Icons.add,
            ),
            elevation: 5.0,
          ),
        ),
      ),
    );
  }
}
