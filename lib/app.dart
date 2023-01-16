import 'package:flutter/material.dart';

import 'package:ulula/core/theme/theme.dart';
import 'package:ulula/features/account_management/presentation/pages/welcome.dart';
import 'package:ulula/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const WelcomePage(),
    );
  }
}
