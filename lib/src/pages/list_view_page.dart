import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {

  @override
  _ListViewPageState createState() => _ListViewPageState();

}

class _ListViewPageState extends State<ListViewPage> {

   ScrollController _scrollController = new ScrollController();

   List<int> _items = [];
   int _lastItem = 0;
   bool _isLoading = false;

   @override
   void initState() {
      super.initState();

      _add();

      _scrollController.addListener(() {
         
         if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
            // _add();
            _fetchData();
         }

      });
   }

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(title: Text('Listas')),
         body: _getList(),
      );
   }

   Widget _getList(){
      return ListView.builder(
         controller: _scrollController,
         itemCount: _items.length,
         itemBuilder: (BuildContext context, int index){

            final img = _items[index];

            return FadeInImage(
               placeholder: AssetImage('assets/jar-loading.gif'), 
               image: NetworkImage('https://picsum.photos/id/$img/500/300')
            );

         },
      );
   }

   _add(){
      
      for (var i = 1; i < 10; i++) {
         _lastItem++;
         _items.add(_lastItem);
      }

      setState(() {});
   }

   Future _fetchData(){
      _isLoading = true;
      setState(() {});
   }
}