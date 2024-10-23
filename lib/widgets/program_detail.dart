import 'package:flutter/material.dart';

class ProgramDetail extends StatelessWidget {
  final String title;

  ProgramDetail(this.title);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network('https://example.com/program.jpg'), // Замените на реальную ссылку
          Text('Описание программы...'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Здесь можно добавить логику оформления заявки
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('Заявка оформлена, в скором времени мы с вами свяжемся.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Оформить заявку'),
        ),
      ],
    );
  }
}
