
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/portfolio/values.dart';
import 'package:portfolio/widget/textstyle.dart';
import 'package:url_launcher/url_launcher.dart';
class MySkillScreen extends StatefulWidget {
  static const skillScreen= '/skill_list';
  const MySkillScreen({super.key});



  @override
  State<MySkillScreen> createState() => _MySkillScreenState();
}

class _MySkillScreenState extends State<MySkillScreen> {
  static void _launchURL(String url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  static List<Widget> _createButtons(int len) {
    List<Widget> btns = [];
    var names = Values.links.keys.toList();
    for (int i = 0; i < len; i++) {
      btns.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ), backgroundColor: Colors.white,
              fixedSize: const Size(550, 50),
            ),
            onPressed: () => _launchURL(Values.links.values.toList()[i]),
            child: Text(
              names[i],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }
    return btns;
  }

  final List<Widget> buttons = _createButtons(
    Values.links.keys.length,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Skill'),
        actions: const [
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Icon(Icons.more_vert),

                ],
              )


          ),
        ],

      ),
      drawer: Drawer(
        backgroundColor: Colors.teal[500],
        child: ListView(

          children:  [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.transparent
              ),
              currentAccountPicture: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              accountName:  Text('Md Sharif Hossain'), accountEmail: Text('sharifdu44@gmail.com'),

            ),
            ListTile(
              title: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, MySkillScreen.skillScreen);


                },
                child: const Row(
                  children: [
                    Text('Project List', style: TextStyle(fontSize: 20, color: Colors.white),),



                  ],
                ),
              ),
              trailing: const Icon(FontAwesomeIcons.diagramProject),
            )

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: const ClipOval(
              child: Image(image: AssetImage('assets/images/profile.png'),
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SelectableText(
            Values.name,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SelectableText(
            Values.designation,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image(image: NetworkImage('https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png'),
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Flutter', style: othersTextStyle,),
                ],
              ),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image(image: NetworkImage('https://dwglogo.com/wp-content/uploads/2018/03/Dart_logo.png'),
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Dart', style: othersTextStyle,),
                ],
              ),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSKJCNaNUeMFBN-OQijlZbhGt1vwGwLw0xI_Xqjyd_VA&s'),
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Java', style: othersTextStyle,),
                ],
              ),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image(image: NetworkImage('https://static-00.iconduck.com/assets.00/spring-icon-256x256-2efvkvky.png'),
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Spring Boot', style: othersTextStyle,),
                ],
              ),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image(image: NetworkImage('https://p7.hiclipart.com/preview/263/506/483/oracle-database-oracle-corporation-postgresql-relational-database-management-system-oracle-logo-thumbnail.jpg'),
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Oracle & MySQL', style: othersTextStyle,),
                ],
              ),
            ),

          ),



        ],
      ),

    );
  }
}
