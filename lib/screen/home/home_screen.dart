import 'package:flutter/material.dart';
import 'package:flutter_time_picker/screen/widget/select_hour_widget.dart';
import 'package:flutter_time_picker/screen/widget/select_meridiem_widget.dart';
import 'package:flutter_time_picker/screen/widget/select_minute_widget.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String hour = "";
  String minute = "";
  String meridiem = "";

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Flutter Time Picker", 
            textAlign: TextAlign.center, 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 18, 
              fontWeight: FontWeight.w500,
              height: 1.5
            )
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.redAccent,
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Select Time",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.5
                  ),
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: SelectHourWidget(),
                    ),
                    SizedBox(width: 12),
                    Flexible(
                      child: SelectMinuteWidget(),
                    ),
                    SizedBox(width: 12),
                    Flexible(
                      child: SelectMeridiemWidget(),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: const Text("Set Time", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}