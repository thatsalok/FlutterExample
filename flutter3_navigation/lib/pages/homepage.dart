import 'package:flutter/material.dart';
import 'package:flutter3_navigation/pages/adddatapage.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            widget.title,
            style: new TextStyle(fontSize: 16.0),
          ),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {
                  print("Add button clicked");
                  _onAddCityButtonPressed(context);
                })
          ],
        ),
        body: _getListViewFromBuilder(),


    );

  }

  final List<Text> _lstCities = new List<Text>();

  Widget _getListViewFromBuilder() {
    return ListView.builder(
      itemCount: _lstCities.length,
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: getListItems,
    );
  }

// Call back function, will called for each item in the
  Widget getListItems(BuildContext context, int index) {
    return _lstCities[index];
  }

  // this function would called when add city button pressed

  void _onAddCityButtonPressed(BuildContext context) {
   /*
    Task # 1 and 2

     Navigator
     .push(context, MaterialPageRoute(builder: (context) => AddDataPage()))
        */
   /*
    Task 3 and 4
    */
        Navigator.pushNamed(context,'/adddata' )
        .then((Object result) {
      if (result == null) return;
      setState(() {
        _lstCities.add(new Text(
          "${_lstCities.length + 1} ${result.toString()}",
          textAlign: TextAlign.justify,
          style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 24.0),
        ));
      });
    });
  }


}
