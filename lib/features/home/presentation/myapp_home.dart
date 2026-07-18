import 'package:flutter/material.dart';
import 'package:flutter_template/core/widgets/custom_floating_button.dart';
import 'package:flutter_template/core/widgets/myapp_bottom_nav.dart';
import 'package:flutter_template/features/home/presentation/myapp_bar.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // App Bar
      appBar: MyAppBar(title: widget.title, leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          // Handle menu button press
        },
      ), actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Handle search button press
          },
        ),
      ]),

      // Page Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      // Floating Action Button.
      floatingActionButton: CustomFloatingButton(onPressed: _incrementCounter),

      // Bottom Navigation Bar.
      bottomNavigationBar: const MyAppBottomNav(),
    );
  }
}


