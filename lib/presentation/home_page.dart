import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_image_demo/presentation/bloc/remote_image_state.dart';

import 'bloc/remote_image_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteImageBloc, RemoteImageState>(
        builder: (context, state) {
      // if (state is RemoteImageLoaded) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Astronomy Picture of the Day'),
        ),
        body: _buildWidget(state),
      );
    });
  }

  Widget _buildWidget(RemoteImageState state) {
    if (state is RemoteImageInitial) {
      return const Center(
        child: Text('RemoteImageInitial state'),
      );
    }

    if (state is RemoteImageLoading) {
      return const Center(
        child: CircularProgressIndicator(backgroundColor: Colors.grey),
      );
    }
    if (state is RemoteImageError) {
      return Center(
        child: Text('${state.message}'),
      );
    }

    if (state is RemoteImageLoaded) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Fetching latest pic of the day',
                ),
              ),
            ),
            CachedNetworkImage(
              imageUrl: '${state.imageEntity.url}',
              placeholder: (context, url) =>
                  const CircularProgressIndicator(backgroundColor: Colors.red),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
          ],
        ),
      );
    }

    return const Center(
      child: Text('Something went wrong'),
    );
  }
}
