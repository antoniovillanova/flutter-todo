import 'package:flutter/material.dart';

class TodoItemCard extends StatelessWidget {
  final String title;
  const TodoItemCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
     elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(title)),
            Checkbox(value: true, shape: const CircleBorder(),onChanged: (value){}),
          ],
        ),
      ),
    );
  }
}
