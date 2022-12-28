import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonDropDown extends StatefulWidget {
  final String stateDropDownValue;
  final  List<DropdownMenuItem<String>>? item;
  final Function(String?)? onChanged;
  final Widget? header;
  const CommonDropDown({super.key,  required this.stateDropDownValue, required this.item, required this.onChanged, this.header,}) ;



  @override
  State<CommonDropDown> createState() => _CommonDropDownState();
}

class _CommonDropDownState extends State<CommonDropDown> {
  static const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
      child: Column(

        children: [
          Align(alignment: Alignment.topLeft, child: widget.header),
          const SizedBox(
            height: 5,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              value: widget.stateDropDownValue,
              buttonDecoration:  BoxDecoration(
                color: const Color(0xFFEBEBEB),
                borderRadius: BorderRadius.circular(10.0),


              ),
              isExpanded: true,
              items: widget.item/*list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList()*/,

              onChanged: widget.onChanged,
              buttonHeight: 50,
              itemHeight: 40,

            ),
          ),
        ],
      ),
    );
  }
}
