import 'package:flutter/material.dart';

class SelectMeridiemWidget extends StatefulWidget {

  const SelectMeridiemWidget({super.key});

  @override
  State<SelectMeridiemWidget> createState() => _SelectMeridiemWidgetState();
}

class _SelectMeridiemWidgetState extends State<SelectMeridiemWidget> {

  List<String> meridiemList = ["AM", "PM"];
  late int selectedMeridiem;

  @override
  void initState() {
    selectedMeridiem = 0;
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
          padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(meridiemList.length, (index) => Padding(
              padding: EdgeInsets.only(bottom: index == 1 ? 0 : 12),
              child: GestureDetector(
                onTap: () => setState(() {
                  selectedMeridiem = index;
                }),
                child: Text(
                  meridiemList[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: index == selectedMeridiem ? Colors.black : Colors.black.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: index == selectedMeridiem ? FontWeight.w500 : FontWeight.w400
                  ),
                ),
              ),
            )),
          )
        ),
        const SizedBox(height: 8),
        Text(
          "meridiem",
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