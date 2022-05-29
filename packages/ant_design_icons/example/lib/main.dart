import 'package:ant_design_icons/ant_design_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ant Deisgn Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ant Design Icons'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 60,
          childAspectRatio: 1,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        children: [
          AntDesignIcons.filled.accountBook.svg(),
          AntDesignIcons.outlined.accountBook.svg(),
          AntDesignIcons.twoTone.accountBook.svg(),
        ],
      ),
    );
  }
}
