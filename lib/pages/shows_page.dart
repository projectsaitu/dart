import 'package:flutter/material.dart';
import '../models/program.dart';
import '../pages/program_detail_page.dart';

class ShowsPage extends StatelessWidget {
  final List<Program> shows = [
    Program(
      id: 1,
      name: 'Шоу 1',
      description: 'Описание шоу 1',
      imageUrl: 'http://example.com/show1.jpg',
    ),
    Program(
      id: 2,
      name: 'Шоу 2',
      description: 'Описание шоу 2',
      imageUrl: 'http://example.com/show2.jpg',
    ),
    // Добавьте другие шоу
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Шоу')),
      body: ListView.builder(
        itemCount: shows.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(shows[index].name),
            leading: Image.network(shows[index].imageUrl, width: 50, height: 50, fit: BoxFit.cover),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgramDetailPage(program: shows[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
