import 'package:bloc/bloc.dart';
import 'package:flutter_use_demo/app/routes/navigator_util.dart';
import 'package:flutter_use_demo/bean/common/btn_info.dart';
import 'package:flutter_use_demo/bean/common/tree_info.dart';
import 'package:flutter_use_demo/views/dialog/smart/smart_dialog.dart';

part 'example_state.dart';

class ExampleCubit extends Cubit<ExampleState> {
  ExampleCubit() : super(ExampleState().init());

  ///跳转到功能模块
  void toFun(context, tag) {
    switch (tag) {
      case 'cubit':
        NavigatorUtil.goCounterPage(context);
        break;
      case 'testLayout':
        // NavigatorUtil.goTestLayoutPage(context);
      SmartDialog.instance.show();
        break;
    }
  }
}
