import 'package:flutter_chat_craft/res/strings.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ConversationLogic extends GetxController
    with GetSingleTickerProviderStateMixin {
  String appText = StrRes.chatCraft;
  final refreshController = RefreshController(initialRefresh: false);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onRefresh() async {
    var list = [];
    try {
      // list = await _request(0);
      // this.list..assignAll(list);
      // print("fetch onRefresh ${this.list.length}");
      //
      // if (null == list || list.isEmpty || list.length < _pageSize) {
      //   refreshController.loadNoData();
      // }
      Future.delayed(Duration(seconds: 3),(){
        refreshController.loadNoData();
      });
    } finally {
      refreshController.refreshCompleted();
    }
  }

  void onLoading() async {
    var list = [];
    try {
      // list = await _request(this.list.length);
      // this.list..addAll(list);
      // print("fetch onLoading ${this.list.length}");
      Future.delayed(Duration(seconds: 3),(){
        // refreshController.loadNoData();
        refreshController.loadComplete();
      });
    } finally {
      // if (null == list || list.isEmpty || list.length < _pageSize) {
      //   refreshController.loadNoData();
      // } else {
      //   refreshController.loadComplete();
      // }
    }
  }

  /// Determine the top.
  bool isPinned(int index) {
    return false;
  }
}
