import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _ConfigAppProvider{

  List<dynamic> options = [];

  _ConfigAppProvider(){
    // loadData();
  }

  Future<List<dynamic>> loadData() async{

    final response = await rootBundle.loadString('data/config.json');
    Map dataMap = json.decode(response);
    options = dataMap['router'];

    return options;
  }

}

final configAppProvider = new _ConfigAppProvider();