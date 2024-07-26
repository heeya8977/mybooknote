import 'package:flutter/material.dart';
import 'book.dart';
import 'book_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '독서 노트',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookShelfScreen(),
    );
  }
}

class BookShelfScreen extends StatelessWidget {
  final List<Book> books = [
    Book(title: '책1', author: '저자1', description: '책1의 설명'),
    Book(title: '책2', author: '저자2', description: '책2의 설명'),
    Book(title: '책3', author: '저자3', description: '책3의 설명'),
    // 더 많은 책 정보를 추가하세요.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('책장'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bookshelf.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: books.length,
            itemBuilder: (ctx, i) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => BookDetailScreen(book: books[i]),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 120,
                width: 80,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    books[i].title,
                    style: TextStyle(
                      color: Colors.transparent,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
