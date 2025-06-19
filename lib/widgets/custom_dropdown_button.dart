import 'package:flutter/material.dart';

class CustomDropdownButtonClass extends StatelessWidget {
  final List<String> values;
  final double width;
  const CustomDropdownButtonClass({super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        value: values.first,
        items: values.map((e) {
          return DropdownMenuItem(value: e, child: Text(e));
        }).toList(),
        onChanged: (_) {},
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
