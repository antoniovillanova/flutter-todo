import 'package:flutter/material.dart';

class TodoListPageContent extends StatelessWidget {
  const TodoListPageContent({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => Text('Item $index'),
        separatorBuilder: (context, index) => const SizedBox(height: 20.0),
        itemCount: 1,);
  }
}