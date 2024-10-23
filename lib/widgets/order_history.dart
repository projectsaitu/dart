import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Здесь вы можете получить реальные данные из вашей базы данных

    // Пример с фейковыми данными
    final orders = [
      {'date': '2024-10-01', 'details': 'Заказ 1'},
      {'date': '2024-10-15', 'details': 'Заказ 2'},
    ];

    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(orders[1]['details']!),
          subtitle: Text(orders[1]['date']!),
        );
      },
    );
  }
}
