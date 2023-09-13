import 'package:flutter/material.dart';

class SelectHourWidget extends StatefulWidget {

  const SelectHourWidget({super.key});

  @override
  State<SelectHourWidget> createState() => _SelectHourWidgetState();
}

class _SelectHourWidgetState extends State<SelectHourWidget> {

  List<String> hourList = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];
  late int selectedHour;

  String hourData = "";

  @override
  void initState() {
    selectedHour = 0;
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
                  itemCount: hourList.length,
                  itemBuilder: (context, index) => Text(
                    hourList[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  onPageChanged: (value) {
                    setState(() {
                      selectedHour = value;
                    });

                    hourData = hourList[selectedHour];
                  },
                ),
              ),

              const SizedBox(height: 12),
              const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black, size: 18)
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "hours",
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