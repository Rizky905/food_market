part of 'widgets.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (EdgeInsets.fromLTRB(1, 10, 1, 20)),
      width: 350,
      height: 40,
      child: RaisedButton(
        onPressed: () {
          showSearch(context: context, delegate: DataSearch());
        },
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.search,
              color: greyColor,
            ),
            Text(
              'Search food',
              style: greyFontStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final foodss = [
    "sate",
    "ayam",
    "burger",
  ];

  final recentFood = [
    "sate",
    "ayam",
    "burger",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {}

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentFood : foodss;

    return ListView.builder(
      itemBuilder: (contex, index) => ListTile(
        leading: Icon(Icons.list),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
