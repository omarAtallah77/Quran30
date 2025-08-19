import 'package:flutter/material.dart';
import 'package:quran30/models/reciterModel.dart';
import 'package:quran30/widgets/recitercard.dart';

class Reciterscardviews extends StatelessWidget {
  final List<ReciterModel> data;
  const Reciterscardviews({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Recitercard(model: data[index]); // ✅ Correct
      },
      itemCount: data.length,
    );
  }
}
