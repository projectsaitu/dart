import 'package:flutter/material.dart';
import '../widgets/costume_tile.dart';

class CostumesPage extends StatelessWidget {
  final List<String> boysCostumes = List.generate(20, (index) => 'Костюм для мальчика $index');
  final List<String> girlsCostumes = List.generate(20, (index) => 'Костюм для девочки $index');
  final List<String> teensCostumes = List.generate(20, (index) => 'Костюм для подростка $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Костюмы')),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Для мальчиков'),
            children: boysCostumes.map((costume) => CostumeTile(costume)).toList(),
          ),
          ExpansionTile(
            title: Text('Для девочек'),
            children: girlsCostumes.map((costume) => CostumeTile(costume)).toList(),
          ),
          ExpansionTile(
            title: Text('Для подростков'),
            children: teensCostumes.map((costume) => CostumeTile(costume)).toList(),
          ),
        ],
      ),
    );
  }
}
