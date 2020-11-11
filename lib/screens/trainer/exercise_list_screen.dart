import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/trainer/exercise_list_constaint.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ExerciseListScreen extends StatefulWidget {
  final List<Map<String, String>> selected;
  final Function(List<Map<String, String>>, int) notifyParent;
  final int index;
  const ExerciseListScreen(
      {Key key, this.selected, this.notifyParent, this.index})
      : super(key: key);

  @override
  _ExerciseListScreenState createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {
  Widget exerciseItem(Map<String, String> item) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item['image']),
                      fit: BoxFit.contain,
                    ),
                    border: Border.all(color: MainColors.kLight),
                  )),
              Text(
                item['name'],
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          Checkbox(
            onChanged: (bool isCheck) {
              setState(() {});
              item.putIfAbsent("set", () => "3 x 8-10 | 10kg");
              if (isCheck)
                widget.selected.add(item);
              else {
                widget.selected.remove(item);
              }
              widget.notifyParent(widget.selected, widget.index);
            },
            value: widget.selected.contains(item),
          ),
        ],
      ),
    );
  }

  List<Widget> listExercise() {
    List<Widget> list = [];
    for (var item in exerciseList) {
      list.add(exerciseItem(item));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return UserScreenBackButton(
        title: "Exercise List",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedInputSearch(
              hintText: "Find By Name",
              icon: Icons.search,
              width: size.width * 0.9,
              height: 40,
            ),
            // Container(
            //   padding: EdgeInsets.only(bottom: 8),
            //   child: Text(
            //     "a-z",
            //     style: const TextStyle(
            //         color: const Color(0xffc3cbce),
            //         fontWeight: FontWeight.w700,
            //         fontFamily: "Noto Sans"),
            //   ),
            // ),
            //List_View_Demo(),
            Expanded(
              // child: SingleChildScrollView(
              child: new ListView.builder(
                  itemCount: listExercise().length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return listExercise()[index];
                  }),
            ),
            Center(
              child: RoundedButton(
                text: "Confirm",
                press: () {
                  Navigator.pop(context);
                },
              ),
            )
            // ),
          ],
        ));
  }
}
