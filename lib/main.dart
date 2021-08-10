import 'package:flutter/material.dart';
import 'package:noteapp/helper/note_provider.dart';
import 'package:noteapp/screen/note_edit_screen.dart';
import 'package:noteapp/screen/note_list_screen.dart';
import 'package:noteapp/screen/note_view_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: NoteProvider(),

      child: MaterialApp(
        title: "My Notes",
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/':(context)=> NoteListScreen(),
          NoteViewScreen.route: (context)=>NoteViewScreen(),
          NoteEditeScreen.route: (context)=>NoteEditeScreen()
        },
      ),
    );
  }
}

