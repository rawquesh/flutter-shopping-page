import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:oznailsbeauty/constant/style.dart';
import 'package:oznailsbeauty/constant/theme.dart';
import 'package:oznailsbeauty/screens/home/data.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Color(0xff373842),
            padding: EdgeInsets.only(
              top: Get.mediaQuery.padding.top + myFontSize(20),
              bottom: myFontSize(25),
              left: myFontSize(25),
            ),
            child: Row(
              children: [
                Icon(LineIcons.user, color: Colors.white),
                sizedBoxW(8),
                Text("Login/Register", style: ptSansFont().copyWith(color: Colors.white)),
              ],
            ),
          ),
          ListTile(
            leading: Text("Wholesale Registration", style: GoogleFonts.ptSans()),
            onTap: () {},
          ),
          ListTile(
            leading: Text("Sale", style: GoogleFonts.ptSans()),
            onTap: () {},
          ),
          for (final item in drawerData())
            ExpansionTile(
              textColor: themeColor,
              iconColor: themeColor,
              title: Text(
                item.title,
                style: GoogleFonts.ptSans(),
              ),
              children: item.items.map((e) {
                return Container(
                  padding: EdgeInsets.only(left: 5),
                  child: ListTile(
                    onTap: () {},
                    leading: Text(
                      e.title,
                      style: ptSansFont(13.5).copyWith(color: themeColor),
                    ),
                  ),
                );
              }).toList(),
            ),

          // ExpansionPanelList(
          //   elevation: 0,
          //   dividerColor: themeColor,
          //   children: drawerData()
          //       .map(
          //         (_data) => ExpansionPanel(
          //           headerBuilder: (context, isExpanded) {
          //             return ListTile(
          //               leading: Text(_data.title),
          //             );
          //           },
          //           body: Column(
          //             children: _data.items
          //                 .map(
          //                   (e) => ListTile(
          //                     leading: Text(e.title),
          //                   ),
          //                 )
          //                 .toList(),
          //           ),
          //         ),
          //       )
          //       .toList(),
          // )
        ],
      ),
    );
  }
}
