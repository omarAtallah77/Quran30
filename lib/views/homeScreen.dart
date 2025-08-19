import 'package:flutter/material.dart';

import '../widgets/AllRecitersListview.dart';
import '../widgets/searchbar.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('القراء', style: TextStyle(fontSize: 27)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Searchbar(),
          // ✅ Wrap your ListView widget with SliverToBoxAdapter
          SizedBox(
            height: MediaQuery.of(context).size.height, // or a fixed height
            child: Allreciterslistview(),
          ),
        ],
      ),
    );
  }
}
