import 'package:flutter/material.dart';

class ViewsAllCategories extends StatefulWidget {
  final Map map;
  const ViewsAllCategories({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  State<ViewsAllCategories> createState() => _ViewsAllCategoriesState();
}

class _ViewsAllCategoriesState extends State<ViewsAllCategories> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
          child: Card(child: ListTile()),
        ),
      ),
    );
  }
}
