import 'dart:convert';

import 'package:apenaum/model/conselhoModel.dart';
import 'package:dio/dio.dart';

class ConselhoRepositoy {
  final dio = Dio();
  Future<ConselhoModel> getUsers() async {
    final response = await dio.get('https://api.adviceslip.com/advice');
    if (response.statusCode == 200) {
      var decode = json.decode(response.data);
      return ConselhoModel.fromJson(decode['slip']);
    }
    return ConselhoModel();
  }
}
