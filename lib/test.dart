import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();
  static const double _height = 120;
  double _top = 0;
  double _topList = _height;
  double _offsetA = 0;
  double _offsetB = 0;
  double _savedA = 0;
  double _savedB = 0;
  bool _tookA = false;
  bool _tookB = false;
  final bool _fadeContainer = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(listener);
  }

  void listener() {
    double offset = _controller.offset;

    _topList = _height - offset;
    if (_topList < 0) _topList = 0;

    if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
      _tookB = false;
      if (!_tookA) {
        _tookA = true;
        _offsetA = offset;
      }

      var difference = offset - _offsetA;
      _top = _savedB - difference;
      if (_top <= -_height) _top = -_height;
      _savedA = _top;
    } else if (_controller.position.userScrollDirection ==
        ScrollDirection.forward) {
      _tookA = false;
      if (!_tookB) {
        _tookB = true;
        _offsetB = offset;
      }

      var difference = offset - _offsetB;
      _top = _savedA - difference;
      if (_top >= 0) _top = 0;
      _savedB = _top;
    }

    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _topList,
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildListView(),
          ),
          Positioned(
            top: _top,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: _fadeContainer ? 1 + (_top / _height) : 1,
              child: _buildContainer(title: "ContainerA", color: Colors.red),
            ),
          ),
          // Positioned(
          //   bottom: -_height - _top,
          //   left: 0,
          //   right: 0,
          //   child: Opacity(
          //     opacity: _fadeContainer ? (-_top / _height) : 1,
          //     child: _buildContainer(title: "ContainerB", color: Colors.teal),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      controller: _controller,
      padding: EdgeInsets.only(bottom: _height + 16),
      itemCount: 160,
      itemBuilder: (_, i) => ListTile(
          title: Text(
        "Item $i",
        style: TextStyle(color: Colors.white),
      )),
    );
  }

  Widget _buildContainer({required String title, required Color color}) {
    return Container(
      height: _height,
      color: color,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(fontSize: 32, color: Colors.white),
      ),
    );
  }
}
