import 'package:flutter/material.dart';
import 'package:flutter5_gridlist/model/city.dart';
import 'package:flutter5_gridlist/widget/mygridview.dart';

class HomePage extends StatelessWidget {
  final List<City> _allCities = City.allCities();

  HomePage() {}
  final GlobalKey scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: scaffoldKey,
        appBar: new AppBar(
          title: new Text(
            "Cites around world",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait)
      return ListView.builder(
        itemCount: _allCities.length,
        itemBuilder: _getListItemUI,
        padding: EdgeInsets.all(0.0),
      );
    else
      return new MyGridView(allCities: _allCities);
  }

  Widget _getListItemUI(BuildContext context, int index,
      {double imgwidth: 100.0}) {
    return new Card(
        child: new Column(
      children: <Widget>[
        new ListTile(
          leading: new Image.asset(
            "assets/" + _allCities[index].image,
            fit: BoxFit.fitHeight,
            width: imgwidth,
          ),
          title: new Text(
            _allCities[index].name,
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_allCities[index].country,
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal)),
                new Text('Population: ${_allCities[index].population}',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal)),
              ]),
          onTap: () {
            _showSnackBar(context, _allCities[index]);
          },
        )
      ],
    ));
  }

  _showSnackBar(BuildContext context, City item) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("${item.name} is a city in ${item.country}"),
      backgroundColor: Colors.amber,
    );

    Scaffold.of(context).showSnackBar(objSnackbar);
  }
}
