import 'package:flutter/material.dart';

class SelectMinuteWidget extends StatefulWidget {

  const SelectMinuteWidget({super.key});

  @override
  State<SelectMinuteWidget> createState() => _SelectMinuteWidgetState();
}

class _SelectMinuteWidgetState extends State<SelectMinuteWidget> {

  List<String> minuteList = ["05", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55", "00"];
  late int selectedMinute;

  @override
  void initState() {
    selectedMinute = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: const EdgeInsetsDirectional.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.keyboard_arrow_up_rounded, color: Colors.black, size: 18),
              const SizedBox(height: 12),

              SizedBox(
                height: 25, width: 25,
                child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: minuteList.length,
                  itemBuilder: (context, index) => Text(
                    minuteList[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  onPageChanged: (value) => setState(() {
                    selectedMinute = value;
                  }),
                ),
              ),

              const SizedBox(height: 12),
              const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black, size: 18)
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "minutes",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}