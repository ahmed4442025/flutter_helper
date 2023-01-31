import 'package:flutter/material.dart';
import 'package:flutter_helper/core/app/extensions.dart';
import 'package:flutter_helper/home/home_view/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewModel _model;

  @override
  void initState() {
    super.initState();
    _model = HomeViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        _buttonBuilder(button: _model.buttons[0]),
        _buttonBuilder(button: _model.buttons[1]),
        _buttonBuilder(button: _model.buttons[2]),
      ],),
    );
  }



  Widget _buttonBuilder({required ButtonInfo button}) => InkWell(
        onTap: button.onTap,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.greenAccent.withOpacity(.5),
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(button.icon),
              const SizedBox(height: 20),
              Text(button.title.orEmpty)
            ],
          ),
        ),
      );
}
