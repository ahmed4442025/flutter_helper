import 'package:flutter/material.dart';
import 'package:flutter_helper/temp/views/temp_test_view_model.dart';

class TempTestView extends StatefulWidget {
  const TempTestView({Key? key}) : super(key: key);

  @override
  State<TempTestView> createState() => _TempTestViewState();
}

class _TempTestViewState extends State<TempTestView> {
  late final TempTestViewModel _model;

  void reFresh() {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _model = TempTestViewModel(reFresh);
    _model.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fab(),
      body: ListView(
        children: const [
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }

  FloatingActionButton fab() => FloatingActionButton(onPressed: _model.test);
}
