import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'loader/lab_clinicas_loader.dart';
import 'theme/lab_clinicas_theme.dart';

final class LabClinicasCoreConfig extends StatelessWidget {
  final ApplicationBindings? bindings;
  final List<FlutterGetItPageRouter>? routes;
  final List<FlutterGetItPageBuilder>? pageBuilders;
  final List<FlutterGetItModule>? modules;
  final String title;
  final VoidCallback? onInit;

  const LabClinicasCoreConfig({
    super.key,
    this.bindings,
    this.routes,
    this.pageBuilders,
    this.modules,
    this.title = '',
    this.onInit,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      builder: (_, routes, flutterGetItNavObserver) => AsyncStateBuilder(
        loader: LabClinicasLoader(),
        builder: (navigatorObserver) => _AppBuilder(
          title: title,
          navigatorObserver: navigatorObserver,
          routes: routes,
          flutterGetItNavObserver: flutterGetItNavObserver,
          onInit: onInit,
        ),
      ),
      bindings: bindings,
      modules: [...modules ?? const []],
      pages: [...routes ?? const [], ...pageBuilders ?? const []],
      debugMode: kDebugMode,
    );
  }
}

final class _AppBuilder extends StatelessWidget {
  final VoidCallback? onInit;
  final String title;
  final AsyncNavigatorObserver navigatorObserver;
  final Map<String, Widget Function(BuildContext)> routes;
  final NavigatorObserver flutterGetItNavObserver;

  const _AppBuilder({
    required this.title,
    required this.navigatorObserver,
    required this.routes,
    required this.flutterGetItNavObserver,
    this.onInit,
  });

  @override
  Widget build(BuildContext context) {
    onInit?.call();

    return MaterialApp(
      routes: routes,
      navigatorObservers: [flutterGetItNavObserver, navigatorObserver],
      title: title,
      theme: theme,
      darkTheme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
