import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_with_dio/api/routes.dart';
import 'package:flutter_with_dio/models/data.dart';

class ApiProvider {

  /// Voir plus de méthodes dans le Readme de dio sur pub.dev
 var dio = Dio();

 /// Avoir un objet json
  Future<List<Data>> getDataJson() async {
    var url = Routes.route;
    final Response response = await dio.get(url);

    /**
     * A la pace de la condition if, c'est aussi possible de traiter la réponse dans un try catch
     **/
    if(response.statusCode == 200) {
      /// l'objet json a bien été obtenu
      ///traitement

      List res = response.data;
      List<Data> list = res.isNotEmpty ? res.toList().map((m) => Data.fromJson(m)).toList() : [];

      return list;
    }else {
      /// l'objet json n'a pas été obtenu
      /// autre traitement en fonction du type d'erreur
      return [];
    }

  }

  /// Evoyer un objet Json
  void postDataJson(Map<String, dynamic> map) async {
    var url = Routes.route;

    //  Response response = await dio.post(url, data: map, options: Options(headers: {"Authorization": "Bearer $token"}));
    Response response  = await dio.post(url, data: map);

    /**
     * A la pace de la condition if, c'est aussi possible de le faire dans un try catch
     **/
    if(response.statusCode == 200) {
      /// l'objet json a bien été obtenu
      ///traitement
    }else {
      /// l'objet json n'a pas été obtenu
      /// autre traitement en fonction du type d'erreur
    }

  }
}