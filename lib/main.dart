import 'package:flutter/material.dart';
import 'package:flutter_time_picker/screen/home/home_screen.dart';

void main(){

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FlutterTimePicker());
}

class FlutterTimePicker extends StatelessWidget {
  const FlutterTimePicker({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}