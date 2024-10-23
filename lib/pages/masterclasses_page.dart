import 'package:flutter/material.dart';
import '../models/program.dart';
import '../pages/program_detail_page.dart';

class MasterclassesPage extends StatelessWidget {
  final List<Program> masterclasses = [
    Program(
      id: 1,
      name: 'Мастер-класс 1',
      description: 'Описание мастер-класса 1',
      imageUrl: 'http://example.com/masterclass1.jpg',
    ),
    Program(
      id: 2,
      name: 'Мастер-класс 2',
      description: 'Описание мастер-класса 2',
      imageUrl: 'http://example.com/masterclass2.jpg',
    ),
    // Добавьте другие мастер-классы
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Мастерклассы')),
      body: ListView.builder(
        itemCount: masterclasses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(masterclasses[index].name),
            leading: Image.network(masterclasses[index].imageUrl, width: 50, height: 50, fit: BoxFit.cover),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgramDetailPage(program: masterclasses[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
