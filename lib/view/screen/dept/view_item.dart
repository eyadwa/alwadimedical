import 'package:centerm/view/screen/dept/view_details_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/const.dart';
import '../../../data/datasource/static.dart';
import '../../widget/drawer/navigation_drawer.dart';
import '../../widget/first screen/list_horizontal.dart';
import '../../widget/item/widgetitemviewgreadview.dart';

class ViewItem extends StatelessWidget {
  const ViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: Text(namecenter),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: appbarthem,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorApp.gery,
        child: Column(
          children: [
            SizedBox(height: 10),
            // Expanded(
            //   flex: 1,
            //   child: InkWell(
            //     onTap: () {},
            //     child: ListView.separated(
            //       separatorBuilder: (context, _) => SizedBox(width: 0.1),
            //       scrollDirection: Axis.horizontal,
            //       itemCount: centerlist.length,
            //       itemBuilder: (contxt, index) {
            //         return buildlist(index: index);
            //       },
            //     ),
            //   ),
            // ),
            //  Expanded(
            //   flex: 4,
            //   child:gredviewitem()
            // ),

          ],
        ),
      ),
    );
  }
}
