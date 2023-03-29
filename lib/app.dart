import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:ulula/core/theme/theme.dart';
import 'package:ulula/di/di.dart';
import 'package:ulula/features/account/domain/entity/enums/enums.dart';
import 'package:ulula/features/account/ui/bloc/auth/auth_bloc.dart';
import 'package:ulula/features/account/ui/pages/splash/splash.dart';
import 'package:ulula/features/account/ui/pages/welcome/welcome.dart';
import 'package:ulula/features/main/ui/pages/main.dart';
import 'package:ulula/l10n/l10n.dart';

class App extends StatelessWidget {
  App({super.key});

  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        Injector.instance!.getDependency(),
      ),
      child: MaterialApp(
        theme: appTheme,
        title: 'Ulula',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        navigatorKey: _navigatorKey,
        onGenerateRoute: (_) => SplashPage.route(),
        builder: (context, child) {
          return BlocListener<AuthBloc, AuthState>(
            listenWhen: (previousState, currentState) {
              return previousState.status != currentState.status;
            },
            listener: (context, state) {
              switch (state.status) {
                case AuthStatus.authenticated:
                  FlutterNativeSplash.remove();
                  _navigator.pushAndRemoveUntil<void>(
                    MainPage.route(),
                    (route) => false,
                  );
                  break;
                case AuthStatus.unauthenticated:
                  FlutterNativeSplash.remove();
                  _navigator.pushAndRemoveUntil<void>(
                    WelcomePage.route(),
                    (route) => false,
                  );
                  break;
                case AuthStatus.unknown:
                  break;
              }
            },
            child: child,
          );
        },
      ),
    );
  }
}
