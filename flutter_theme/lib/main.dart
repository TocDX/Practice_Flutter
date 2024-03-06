import 'package:flutter/material.dart';

void main() {
   runApp(
      MaterialApp(
       home: const HomeWidget(),
      theme: customTheme
     ),
   );
 }

final customTheme =  ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
textTheme: TextTheme(
bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
),
useMaterial3: true,
);

 
 class HomeWidget extends StatefulWidget {
   const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;

   @override
   Widget build(BuildContext context) {
     final textTheme = customTheme.textTheme;
     return Scaffold(
       appBar: AppBar(
         title: const Text('Flutter theme'),
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text('Press Count',style: textTheme.bodyMedium,),
             Text('$count',style: textTheme.titleLarge,),
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState((){
             count++;
           });
         },
       ),
     );
   }
}