import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_sharp)),
            iconTheme: const IconThemeData(color: Colors.black54),
            elevation: 0,
            backgroundColor: Colors.grey[50],
            title: const Text(
              "Burj-Khalifa",
              style: TextStyle(color: Colors.black54),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Container(child: const Center(child: Text("Location"))),
              Container(child: const Center(child: Text("Review"))),
              Container(child: const Center(child: Text("Guide"))),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.all(5.0),
          indicatorColor: Colors.red[300],
          tabs: const [
            Tab(
              child: Text(
                "Location",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            Tab(
              child: Text(
                "Review",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            Tab(
              child: Text(
                "Guide",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
