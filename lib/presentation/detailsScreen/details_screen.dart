import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String heading;
  final List<String?> dataOne;
  final Color color;
  final String indicator;
  const DetailsScreen(
      {Key? key,
      required this.heading,
      required this.dataOne,
      required this.color,
      required this.indicator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Scaffold(
          //backgroundColor: Colors.white,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: 95,
                  width: 500,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(127, 33, 149, 243)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          heading,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          indicator,
                          style: TextStyle(color: color),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ListView.builder(
                    itemCount: dataOne.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dataOne[index].toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
