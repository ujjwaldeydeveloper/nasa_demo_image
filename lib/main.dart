import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_image_demo/injection_container.dart';
import 'package:nasa_image_demo/presentation/bloc/remote_image_bloc.dart';
import 'presentation/bloc/remote_image_event.dart';
import 'presentation/home_page.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initalizeDependencyInjection();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<RemoteImageBloc>(
        create: (context) => s1()..add(GetImage()),
        child: const HomePage(),
      ),
    ),
  );
}
