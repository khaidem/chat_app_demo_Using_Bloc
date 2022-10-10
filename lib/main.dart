import 'package:auto_router/router/app.router.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final appRouter = AppRouter();
  runApp(MyApp(
    appRouter: appRouter,
  ));
}
