import 'dart:convert';
import 'dart:math';
import 'package:apenaum/model/conselhoModel.dart';
import 'package:apenaum/repository/conselhoRepository.dart';
import 'package:apenaum/widget/widgetText.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var conselhoModel = ConselhoModel();
  getUsers() async {
    var result = await ConselhoRepositoy().getUsers();
    conselhoModel = result;
    setState(() {});
  }

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treino'),
      ),
      body: Column(
        children: [
          WidgetText(
            conselho: conselhoModel,
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
