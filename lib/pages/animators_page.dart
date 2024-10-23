import 'package:flutter/material.dart';
import '../models/program.dart';
import '../pages/program_detail_page.dart';

class AnimatorsPage extends StatelessWidget {
  final List<Program> programs = [
    Program(
      id: 1,
      name: 'Аниматор 1',
      description: 'Описание аниматора 1',
      imageUrl: 'http://example.com/animator1.jpg',
    ),
    Program(
      id: 2,
      name: 'Аниматор 2',
      description: 'Описание аниматора 2',
      imageUrl: 'http://example.com/animator2.jpg',
    ),
    // Добавьте другие программы
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Аниматоры')),
      body: ListView.builder(
        itemCount: programs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(programs[index].name),
            leading: Image.network(programs[index].imageUrl, width: 50, height: 50, fit: BoxFit.cover),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgramDetailPage(program: programs[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
