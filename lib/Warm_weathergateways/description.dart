import 'package:airbnb/Warm_weathergateways/Reviews.dart';
import 'package:flutter/material.dart';

class WarmweatherDetails extends StatefulWidget {
  final Map map;
  const WarmweatherDetails({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  State<WarmweatherDetails> createState() => _WarmweatherDetailsState();
}

class _WarmweatherDetailsState extends State<WarmweatherDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black54),
        backgroundColor: Colors.grey[50],
        title: const Text(
          "Warm-weather Gateways",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: ScrollConfiguration(
        behavior: Mybehaviour(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.map['image']),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.map['name'],
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.055,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff457b9d),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {},
                          child: const Text("View Map")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Destinations",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Reviews(),
                              ));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.65,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          widget.map['destination1image']),
                                      fit: BoxFit.cover)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.black.withOpacity(0.7),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        widget.map['destination1title'],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.map['destination2image']),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      widget.map['destinations2title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Do",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.map['destination1image']),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      widget.map['destination1title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.map['destination2image']),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      widget.map['destinations2title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Stay",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.map['destination1image']),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      widget.map['destination1title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.map['destination2image']),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      widget.map['destinations2title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Eat",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.map['destination1image']),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      widget.map['destination1title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.map['destination2image']),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      widget.map['destinations2title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Mybehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
