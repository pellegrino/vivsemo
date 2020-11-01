import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivsemo/bloc/blocs.dart';
import 'package:vivsemo/model/models.dart';

class PhotoList extends StatefulWidget {
  @override
  _PhotoListState createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  PhotoBloc _photoBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _photoBloc = BlocProvider.of<PhotoBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(builder: (context, state) {
      if (state is PhotoInitial) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is PhotosLoaded) {
        if (state.allPhotosResponse.photos.isEmpty) {
          return Center(
            child: Text("no more photos"),
          );
        }

        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return index >= state.allPhotosResponse.photos.length
                ? BottomLoader()
                : PhotoWidget(photo: state.allPhotosResponse.photos[index]);
          },
          itemCount: state.hasReachedMax
              ? state.allPhotosResponse.photos.length
              : state.allPhotosResponse.photos.length + 1,
          controller: _scrollController,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreshold) {
      _photoBloc.add(GetAllPhotosStarted());
    }
  }
}

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({@required this.photo}) : assert(photo != null);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(photo.url),
      title: Text(photo.title),
      subtitle: Text(photo.description),
    );
  }
}

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: SizedBox(
          height: 33,
          width: 33,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
          ),
        ),
      ),
    );
  }
}
