import 'dart:async';

import 'package:flutter/material.dart';

import 'core/flutter_rust_bridge_generated/ffi.dart'
    if (dart.library.html) 'core/flutter_rust_bridge_generated/ffi_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'education system',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'education system'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

extension<L, R> on (FutureOr<L>, FutureOr<R>) {
  // A convenience method enabled by Dart 3, which will be useful later.
  Future<(L, R)> join() async {
    final fut =
        await Future.wait([Future.value(this.$1), Future.value(this.$2)]);
    return (fut[0] as L, fut[1] as R);
  }
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Platform> platform;
  late Future<bool> isRelease;

  @override
  void initState() {
    super.initState();
    platform = api.platform();
    isRelease = api.rustReleaseMode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("You're running on"),
            FutureBuilder(
              future: (platform, isRelease).join(),
              builder: (context, snap) {
                final style = Theme.of(context).textTheme.headlineMedium;
                if (snap.error != null) {
                  debugPrint(snap.error.toString());
                  return Tooltip(
                    message: snap.error.toString(),
                    child: Text('Unknown OS', style: style),
                  );
                }

                // Guard return here, the data is not ready yet.
                final data = snap.data;
                if (data == null) return const CircularProgressIndicator();

                final (platform, release) = data;
                final releaseText = release ? 'Release' : 'Debug';

                final text = switch (platform) {
                  Platform.Android => 'Android',
                  Platform.Ios => 'iOS',
                  Platform.MacApple => 'MacOS with Apple Silicon',
                  Platform.MacIntel => 'MacOS',
                  Platform.Windows => 'Windows',
                  Platform.Unix => 'Unix',
                  Platform.Wasm => 'the Web',
                  Platform.Unknown => 'Unknown OS',
                };
                return Text('$text ($releaseText)', style: style);
              },
            )
          ],
        ),
      ),
    );
  }
}
