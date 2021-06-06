import 'package:flutter/material.dart';

import 'package:flutter_components/src/providers/config_app.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list()
    );
    
  }

  Widget _list() {

    // print(configAppProvider.options);
    // configAppProvider.loadData().then((value) => print(value));

    return FutureBuilder(
      future: configAppProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listItems(snapshot.data),
        );

      },
    );
  
  }
  
  List<Widget> _listItems(List<dynamic>? data){
    
    final List<Widget> options = [];

    data?.forEach((item){
      final widgetTemp = Column(children: [
        ListTile(title: Text(item.text),)
      ]);
      options.add(widgetTemp);
    });
    return options;

  }
}
