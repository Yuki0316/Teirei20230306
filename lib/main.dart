import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teirei0306/video_player_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.sawarabiMinchoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFF00F610),
        appBar: AppBar(
          title: Text(
            'The 虎舞竜',
            style: GoogleFonts.kaiseiDecol(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.red,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.purple
            ])),
          ),
        ),
        body: VideoPlayerPage(),
      ),
    );
  }
}
