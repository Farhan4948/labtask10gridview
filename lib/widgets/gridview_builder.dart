import 'package:flutter/material.dart';
import '../classes/grid_icons.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = GridIcons().getIconList();

    return GridView.builder(
      itemCount: 20,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        print('Building item $index'); // debug print
        return Card(
          color: Colors.lightGreen.shade50,
          child: InkWell(
            onTap: () {
              print('Tapped on Row $index');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconList[index],
                  size: 48.0,
                  color: Colors.lightGreen,
                ),
                const Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
