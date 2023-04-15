import 'package:airbnb/Categories/viewsall.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Map<String, dynamic>> _ClistItem = [
    {
      "name": "Museum",
      "image": "https://images.pexels.com/photos/69903/pexels-photo-69903.jpeg"
    },
    {
      "name": "Car Rental",
      "image":
          "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1283&q=80"
    },
    {
      "name": "Mountain",
      "image":
          "https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80"
    },
    {
      "name": "Plane",
      "image":
          "https://as1.ftcdn.net/v2/jpg/00/01/47/28/1000_F_1472821_kMjcU0El8NkcU0k7zNtlVTU0Fl8W2l.jpg"
    },
    {
      "name": "Museum",
      "image": "https://images.pexels.com/photos/69903/pexels-photo-69903.jpeg"
    },
    {
      "name": "Car Rental",
      "image":
          "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1283&q=80"
    },
    {
      "name": "Mountain",
      "image":
          "https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80"
    },
    {
      "name": "Plane",
      "image":
          "https://as1.ftcdn.net/v2/jpg/00/01/47/28/1000_F_1472821_kMjcU0El8NkcU0k7zNtlVTU0Fl8W2l.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Categories",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ViewsAllCategories(map: _ClistItem[]),
                ));
              },
              child: const Text(
                "View all",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Please select what category of trip you want",
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.115,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _ClistItem.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.015,
                    right: MediaQuery.of(context).size.width * 0.015),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.066,
                      width: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:
                                  NetworkImage('${_ClistItem[index]["image"]}'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      child: FittedBox(
                        child: Text(
                          "${_ClistItem[index]['name']}",
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
