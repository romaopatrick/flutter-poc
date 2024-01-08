import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookfy',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
            color: Colors.yellow.shade900,
            fontWeight: FontWeight.w600
            )
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple.shade700,
          primary: Colors.deepPurple.shade700,
          ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bookfy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title, style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
