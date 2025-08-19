import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  //final ValueChanged<String> onChanged = ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: controller,
        //onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Search reciters...",
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, color: Colors.grey),
                  onPressed: () {
                    controller.clear();
                  },
                )
              : null,
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
