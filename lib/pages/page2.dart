import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/counter.dart';

/// The screen of the second page.
class Page2 extends HookConsumerWidget {
  /// Creates a [Page2Screen].
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(counterProvider);
    // final value = ref.watch(sampleProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('page2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to home page'),
            ),
            Image.asset(
              'assets/img/wataru.png',
              width: 200,
            ),
            Text(
              'Hello, I\'m Wataru!',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(value.toString()),
              // child: Text(value.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
