import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/123075482?s=400&u=8bdbc7aba65c24065e77ad7799fc84c48d1b2b50&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  const [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text ("manabr singh"),
                  accountEmail: Text("manbar.haciweb@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
    ),

    ),
              ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                color: Colors.white,),
              title: Text("Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white),),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,),
              title: Text("Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white),),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                color: Colors.white,),
              title: Text("Email",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white),),

            ),

          ],
        ),
      ),
    );
  }
}
