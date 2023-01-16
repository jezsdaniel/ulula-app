import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/app.dart';
import 'package:ulula/bootstrap.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await bootstrap(() => const App());
}
