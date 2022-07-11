import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_with_dio/api/api_provider.dart';
import 'package:flutter_with_dio/models/data.dart';

class DataView extends StatefulWidget {
  DataView();

  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {

  @override
  void initState() {
    super.initState();
  }

  Future<List<Data>> fetchData() async {
    return await ApiProvider().getDataJson();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Data>>(
        initialData: const [],
        stream: Stream.periodic(const Duration(seconds: 1)).asyncMap((i) => fetchData()),
        builder: (context, snapshot) =>
        !snapshot.data!.isNotEmpty
            ? const Center(child: CircularProgressIndicator(),)
            : ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) =>
            const Divider(),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: TextButton(
                  onPressed: () {},
                child: Text(snapshot.data![index].id!.toString()),),
                title: Text(snapshot.data![index].title!),
              );
            }
        ),
      )
    );
  }
  }
