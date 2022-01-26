import 'package:flutter/material.dart';
import 'package:goose_ui/goose_ui.dart';

class CodeWrapper extends StatelessWidget {
  final String title;
  final Widget? child;
  final List<Widget>? children;
  final double? height;
  final TextSpan codeBlock;
  const CodeWrapper({
    Key? key,
    required this.title,
    this.child,
    this.height,
    required this.codeBlock,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _child = child ??
        Column(children: children ?? [], mainAxisSize: MainAxisSize.min);
    if (height != null) {
      _child = SizedBox(
        height: height,
        child: _child,
      );
    }
    return GRawCard(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Colors.black26),
      ),
      title: Text(title),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: _child,
          ),
          ExpansionTile(
            title: const Text('code'),
            children: [
              SelectableText.rich(codeBlock),
            ],
          ),
        ],
      ),
    );
  }
}
