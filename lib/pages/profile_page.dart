import 'package:flutter/material.dart';
import '../widgets/order_history.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Профиль')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Имя пользователя', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Номер: 123-456-7890', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('История заказов', style: TextStyle(fontSize: 20)),
            Expanded(child: OrderHistory()), // Вставляем виджет истории заказов
          ],
        ),
      ),
    );
  }
}
