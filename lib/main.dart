import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:waehrungsrechner/gui/ansicht/home/home_viev.dart';

import 'data/models/models.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeView());
  }
}
