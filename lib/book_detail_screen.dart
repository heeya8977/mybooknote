import 'package:flutter/material.dart';
import 'book.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('저자: ${book.author}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('설명:', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text(book.description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
