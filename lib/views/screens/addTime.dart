import 'package:flutter/material.dart';

class addTime extends StatefulWidget {
  const addTime({Key? key}) : super(key: key);

  @override
  State<addTime> createState() => _addTimeState();
}

TimeOfDay initialTime = TimeOfDay.now();
String selectedTime = "";
TextStyle titailSytyle = const TextStyle(fontSize: 25);

class _addTimeState extends State<addTime> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedTime =
        "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}:${DateTime.now().second}  ${TimeOfDay.now().period.name.toUpperCase()}";
  }

  @override
  Widget build(BuildContext context) {
    _selectTime(BuildContext context) async {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: initialTime,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Color(0xff780000), // <-- SEE HERE
                onPrimary: Color(0xff4f772d), // <-- SEE HERE
                onSurface: Color(0xfff8961e), // <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    foregroundColor:
                        const Color(0xff003049) // button text color
                    ),
              ),
            ),
            child: child!,
          );
        },
      );
      setState(() {
        if (pickedTime != null) {
          selectedTime =
              "${pickedTime.hour} :${pickedTime.minute} :${DateTime.now().second}  ${pickedTime.period.name.toUpperCase()}";
        }
      });
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TIME",
                style: titailSytyle,
              ),
              Text(
                selectedTime,
                style: titailSytyle,
              )
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () async {
                return _selectTime(context);
              },
              child: const Text("Change Date"),
            ),
          ),
        ],
      ),
    );
  }
}
