import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(StatefulWidgetExample('Some Fun'));
}

/*
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();

  class _FavoriteWidgetState extends State<FavoriteWidget> {
    bool _isFavorited = true;
    int _favoriteCount = 41;

    // ···

    @override
    Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
            ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
    }
    void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
    }
  }

}*/

class StatefulWidgetExample extends StatefulWidget {
  final String _appBarTitle;
  const StatefulWidgetExample(this._appBarTitle, {super.key});

  @override
  State<StatefulWidgetExample> createState() => _StatefulWidgetExampleState(_appBarTitle);
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  final String _appBarTitle;

  int _counter = 0;
  _StatefulWidgetExampleState(this._appBarTitle);

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this._appBarTitle)),
      body: Center(
        child: Text('Button tapped $_counter time${ _counter == 1 ? '' : 's'}.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
