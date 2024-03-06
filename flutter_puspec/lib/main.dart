import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
const assetImagePath = 'assets/images/';
const bannerImage = '$assetImagePath/banner.png';
void main() {
  runApp(
      const MaterialApp(
        home: Myapp(),
      )
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter에서 로컬 데이터 활용하기'),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(bannerImage),
    );
  }
}



// class Myapp extends StatelessWidget {
//   const Myapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter에서 외부 라이브러리 사용하기'),
//       ),
//       body: const Body(),
//     );
//   }
// }
// // 라이브러리는 pub.dev를 사용
// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  RandomWords();
//   }
// }
//
// class RandomWords extends StatelessWidget {
//   const RandomWords({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//    final wordList = generateWordPairs().take(5).toList();
//    final widgets = wordList.map((word) => Text(word.asCamelCase, style: TextStyle(fontSize: 32),),).toList();
//    return Column(
//       children: widgets,
//     );
//   }
// }
//
//
