import 'package:flutter/material.dart';
import 'package:quran30/views/reciterView.dart';

import '../models/reciterModel.dart';

class Recitercard extends StatelessWidget {
  final ReciterModel model;
  const Recitercard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contetx) {
              return Reciterview(reciter: model);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.2),
        ),
        child: ListTile(
          title: Text(
            model.Englishname,
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          subtitle: model.Arabicname.isNotEmpty
              ? Text(model.Arabicname)
              : Text(""),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        ),
      ),
    );
  }
}
