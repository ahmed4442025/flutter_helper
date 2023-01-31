import 'package:flutter/material.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/tost_manager.dart';
import 'package:flutter_helper/shared_pref/data/shared_generator.dart';
import 'package:flutter_helper/shared_pref/data/shared_types.dart';
import 'package:flutter_helper/shared_pref/view/shared_view_model.dart';
import 'package:flutter/services.dart';

class SharedPrefView extends StatefulWidget {
  const SharedPrefView({Key? key}) : super(key: key);

  @override
  State<SharedPrefView> createState() => _SharedPrefViewState();
}

class _SharedPrefViewState extends State<SharedPrefView> {
  void reFresh() {
    if (mounted) setState(() {});
  }

  late final SharedViewModel _model;

  @override
  void initState() {
    super.initState();
    _model = SharedViewModel(reFresh);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: _model.addVar,
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (c, i) => oneRow(_model.listVars[i], i),
                itemCount: _model.listVars.length),
          ),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: TextButton(
                    onPressed: () => _model.generate(context),
                    child: const Text(
                      "Generate",
                      style: TextStyle(color: Colors.white),
                    ))),
          )
        ],
      ),
    );
  }

  Widget oneRow(SharedRowData data, int index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.amber, width: .3),
            // color: Colors.grey.withOpacity(.2) ,
          ),
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Text("${index + 1} -  Key : "),
              SizedBox(
                  width: 200,
                  height: 35,
                  child: TextField(onChanged: (s) => _model.editTextAt(index, s))),
              const SizedBox(width: 10),
              const Text("type : "),
              SizedBox(
                width: 100,
                child: Center(
                  child: DropdownButton<SharedType>(
                      value: _model.listVars[index].type,
                      items: SharedType.values
                          .map((value) => DropdownMenuItem<SharedType>(
                                value: value,
                                child: Center(
                                    child: Text(value.toString().split(".")[1])),
                              ))
                          .toList(),
                      onChanged: (vv) {
                        _model.editTypeAt(index, vv ?? SharedType.string);
                      }),
                ),
              )
            ],
          ),
        ),
      );
}

class DialogSharedResWidget extends StatelessWidget {
  final String msg;

  DialogSharedResWidget({Key? key, required this.msg}) : super(key: key);

  late final TextEditingController _controller = TextEditingController(text: msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          IconButton(onPressed: copy, icon: const Icon(Icons.copy)),
          Expanded(
            child: SizedBox(
                height: 500,
                child: TextField(
                  controller: _controller,
                  maxLines: 100000,
                )),
          ),
        ],
      ),
    );
  }

  void copy() async  {
  await Clipboard.setData(ClipboardData(text: msg));
  ToastManager.success("copied to clipboard");
}
}
