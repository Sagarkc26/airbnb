import 'package:airbnb/pages/finish.dart';
import 'package:flutter/material.dart';

class Continue extends StatelessWidget {
  const Continue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/image2.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.37,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        "Find your Favourite Hotel to Stay",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.052,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2B2E4A),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) {
                                  return Finish();
                                },
                              ));
                            },
                            child: const Text("Continue")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
