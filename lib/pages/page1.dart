import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The screen of the first page.
class Page1 extends StatelessWidget {
  /// Creates a [Page1Screen].
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('page1')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/page2'),
                child: const Text('Go to page 2'),
              ),
            ],
          ),
        ),
      );
}
