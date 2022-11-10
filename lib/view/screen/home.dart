import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/MainController/controllerpatient.dart';
import '../../core/constant/color.dart';
import '../widget/Specialization/WidgetSpecialzationGridview.dart';
import '../widget/dept/ListDepthome.dart';
import '../widget/drawer/navigation_drawer.dart';

class home extends StatefulWidget {
  const home({
    Key? key,
  }) : super(key: key);

  @override
  _home createState() => _home();
}

class _home extends State<home> {

  @override
  Widget build(BuildContext context) {
    TextEditingController? _searchController;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        endDrawer: NavigationDrawerWidget(),
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          foregroundColor: ColorApp.nexpurple,
          title: TextFormField(
            textAlign: TextAlign.right,
            controller: _searchController,
            decoration: InputDecoration(
              enabled: false,
              hintText: "اختر القسم الخاص بك",
              hintStyle: TextStyle(fontSize: 15),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),

              suffixIcon: Icon(
                Icons.search_rounded,
                color: ColorApp.nexpurple,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          backgroundColor: ColorApp.white,
          elevation: 100.0,
          shadowColor: ColorApp.nexpurple,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: ColorApp.white,
            child: ListView(children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
              SizedBox(height: 20),
              ListDepthome(),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Container(
                  height: 600,
                  width: 200,
                  child: GetBuilder<MainController>(builder: (context) {
                    return Container(
                        height: 800,
                        width: 200,
                         child:
                         SpecializationWidgetGridView()
                        );
                  }),
                ),
              )


            ]),
          ),
        ),
      ),
    );
  }
}
