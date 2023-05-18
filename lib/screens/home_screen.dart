import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final Future<List<WebtoonModel>> webtoons = ApiService().getTodayToons();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text("오늘의 웹툰",
            style: TextStyle(
              fontSize: 24,
            )),
      ),
      body:FutureBuilder(
        future: webtoons,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return Text("There is data");
          }
          return const Center(
            child:CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
