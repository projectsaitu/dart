import 'package:flutter/material.dart';

class CostumeTile extends StatelessWidget {
  final String costumeName;

  CostumeTile(this.costumeName);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(costumeName),
      leading: Icon(Icons.image), // Здесь можно добавить изображение костюма
      onTap: () {
        // Здесь можно открыть подробности о костюме
      },
    );
  }
}
