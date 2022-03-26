import 'package:apenaum/model/conselhoModel.dart';
import 'package:flutter/material.dart';

class WidgetText extends StatefulWidget {
  final ConselhoModel? conselho;
  const WidgetText({Key? key, this.conselho}) : super(key: key);

  @override
  State<WidgetText> createState() => _WidgetTextState();
}

class _WidgetTextState extends State<WidgetText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        
        title: Text(
          widget.conselho!.advice!,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
