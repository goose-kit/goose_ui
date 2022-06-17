import 'dart:math';

import 'package:flutter/material.dart';
import 'package:goose_ui/goose_ui.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../gen/code_segments.dart';
import '../widgets/playbox.dart';
class AvatarView extends StatelessWidget {
  const AvatarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetView(
      title: '头像',
      desc: '头像展示',
      children:[
        PlayBox(
          title: '头像',
          desc: '头像有三种尺寸，两种形状可选。',
          codes: CodeSegments.buttonType(context),
          children: [
            // BEGIN buttonType#1
            ...ASize.values
                .map((e) => AAvatar(
              icon: Icons.person_outline_sharp,
              circleShape: false,
              size: e,
            ))
                .toList(),
            const SizedBox(
              height: 10,
            ),
            ...ASize.values
                .map((e) => AAvatar(
              icon: Icons.person_outline_sharp,
              circleShape: true,
              size: e,
            ))
                .toList()
            // END
          ],
        ),
        PlayBox(
          title: '类型',
          desc: '头支持三种类型：图片、Icon 以及字符，其中 Icon 和字符型可以自定义图标颜色及背景色。',
          codes: CodeSegments.buttonType(context),
          children: [
            const AAvatar(
              icon: Icons.person_outline_sharp,
              circleShape: true,
            ),
            const AAvatar(
              alt: 'U',
              circleShape: true,
            ),
            const AAvatar(
              alt: 'USER',
              circleShape: true,
            ),
            const AAvatar(
              src:
              'https://cdn.pixabay.com/photo/2022/04/30/15/56/dandelion-7165893_960_720.jpg',
              circleShape: true,
            ),
            AAvatar(
              alt: 'U',
              circleShape: true,
              backgroundColor: Colors.orange.shade100,
              color: Colors.amber,
            ),
            AAvatar(
              icon: Icons.person_outline_sharp,
              circleShape: true,
              backgroundColor: Colors.green.shade400,
              color: Colors.cyanAccent,
            ),
          ],
        ),
        PlayBox(
          title: '徽标',
          desc: '通常用于消息提示。',
          codes: CodeSegments.buttonType(context),
          children: const [
            AAvatar(
              alt: 'U',
              circleShape: false,
              badge: true,
              badgedNum: 1,
            ),
            AAvatar(
              icon: Icons.person_outline_sharp,
              circleShape: false,
              badge: true,
            ),
          ],
        ),
        PlayBox(
          title: '字符大小',
          desc:
          '对于字符型的头像，当字符串较长时，字体大小可以根据头像宽度自动调整。也可使用 gap 来设置字符距离左右两侧边界单位像素。',
          codes: CodeSegments.buttonType(context),
          children: [
            AAvatar(
              alt: avatarCharacters[index],
              backgroundColor: avatarColors[index],
              gap: gaps[gapIndex].toDouble(),
              circleShape: true,
            ),
            const SizedBox(
              width: 20,
            ),
            AButton(
              onPressed: () {
                setState(() {
                  index = (++index) % 5;
                });
              },
              child: const Text('ChangeUser'),
            ),
            AButton(
              onPressed: () {
                setState(() {
                  gapIndex = (++gapIndex) % 5;
                });
              },
              child: const Text('ChangeGap'),
            )
          ],
        ),
      ]
    );
  }
}
