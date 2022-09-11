import 'dart:convert';

import 'package:fitpage_stock_scan_parser/domain/homeScreen/model/stock_data.dart';
import 'package:fitpage_stock_scan_parser/presentation/detailsScreen/details_screen.dart';
import 'package:fitpage_stock_scan_parser/presentation/homeScreen/widgets/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootbundle;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<StockData>> readJsonData() async {
    final jsondata = await rootbundle.rootBundle.loadString('assets/data.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => StockData.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        body: FutureBuilder(
          future: readJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(
                child: Text("${data.error}"),
              );
            } else if (data.hasData) {
              var items = data.data as List<StockData>;

              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final _color = items[index].tag.toString();

                  final datas = items[index].criteria.map((e) {
                    return e.text;
                  }).toList();

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            heading: items[index].name.toString(),
                            dataOne: datas,
                            color: _color == 'Bullish' ||
                                    _color == 'Intraday Bullish'
                                ? Colors.green
                                : Colors.red,
                            indicator: items[index].tag.toString(),
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.black,
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index].name.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              items[index].tag.toString(),
                              style: TextStyle(
                                  color: _color == 'Bullish' ||
                                          _color == 'Intraday Bullish'
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const MySeparator(
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
