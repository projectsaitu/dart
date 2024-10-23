import 'package:flutter/material.dart';
import '../models/program.dart';

class ProgramDetailPage extends StatelessWidget {
  final Program program;

  ProgramDetailPage({required this.program});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(program.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(program.imageUrl),
            SizedBox(height: 16.0),
            Text(
              program.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Здесь будет логика оформления заказа
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Заказ оформлен'),
                    content: Text('Ваш заказ успешно оформлен. Мы с вами свяжемся.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('ОК'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Заказать'),
            ),
          ],
        ),
      ),
    );
  }
}
