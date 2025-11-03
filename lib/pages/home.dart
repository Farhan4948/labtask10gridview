import 'package:flutter/material.dart';
import '../widgets/gridview_builder.dart'; // make sure file name matches

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: const SafeArea(
        child: GridViewBuilderWidget(), // your GridView widget
      ),
    );
  }
}
