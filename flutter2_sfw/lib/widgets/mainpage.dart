import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _cityNameController = TextEditingController();
  final List<Widget> _lstText = new List<Widget>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            children: <Widget>[
              new TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'City Name',
                ),
                controller: _cityNameController,
              ),
              new ButtonBar(
                children: <Widget>[
                  new RaisedButton(
                    onPressed: () {
                      _cityNameController.clear();
                    },
                    child: new Text('Clear'),
                  ),
                  new RaisedButton(
                    child: new Text('Add City'),
                    onPressed: _onAddCityBtnPressed,
                    color: Colors.amber,
                  )
                ],
              ),
             getListViewBuilder()
            ]
        )
        );
  }

  // Provide ListView from ListView.builder
  ListView getListViewBuilder() {
    return new ListView.builder(
      shrinkWrap: true,
      itemCount: _lstText.length,
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      itemBuilder: getListItems,
    );
  }

  // Call back function, will called for each item in the
  Widget getListItems(BuildContext context, int index) {
    return _lstText[index];
  }

  _onAddCityBtnPressed() {
    setState(() {
      _lstText
          .add(
          new Text("${_lstText.length + 1} ${_cityNameController.text}",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontWeight:FontWeight.bold),));
      _cityNameController.clear();
    });
  }
}
