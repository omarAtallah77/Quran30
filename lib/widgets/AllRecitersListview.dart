import 'package:flutter/material.dart';
import 'package:quran30/models/reciterModel.dart';
import 'package:quran30/widgets/reciterscardViews.dart';

import '../services/getAllReciters.dart';

class Allreciterslistview extends StatefulWidget {
  const Allreciterslistview({super.key});

  @override
  State<Allreciterslistview> createState() => _AllreciterslistviewState();
}

class _AllreciterslistviewState extends State<Allreciterslistview> {
  late Future<List<ReciterModel>> future;

  @override
  void initState() {
    super.initState();
    future = RecitersService().getallReciters();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ReciterModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return const Center(child: Text('⚠️ Something went wrong.'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          // ✅ Build the scroll view only when data is ready
          return Reciterscardviews(data: snapshot.data!);
        } else {
          return const Center(child: Text('No reciters found'));
        }
      },
    );
  }
}
