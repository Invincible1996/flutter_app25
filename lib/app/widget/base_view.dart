///
/// @date: 2021/10/9 14:25
/// @author: kevin
/// @description: dart
///
///
import 'package:flutter/material.dart';

/// @create at 2021/10/9 14:28
/// @create by kevin
/// @desc  页面加载状态
enum PageState {
  busy,
  idle,
  empty,
  error,
}

class BaseView extends StatelessWidget {
  final Widget child;
  final PageState pageState;

  const BaseView({
    Key? key,
    required this.child,
    required this.pageState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    switch (pageState) {
      case PageState.idle:
        return child;
      case PageState.busy:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case PageState.error:
        return const Text('error!');
      case PageState.empty:
        return const Text('empty!');
      default:
        return child;
    }
  }
}
