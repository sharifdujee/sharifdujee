import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/portfolio/project_list.dart';
import 'package:portfolio/portfolio/skills_screen.dart';
import 'package:portfolio/portfolio/values.dart';
import 'package:portfolio/widget/textstyle.dart';
import 'package:url_launcher/url_launcher.dart';
class MyProjectList extends StatefulWidget {
  static const projectList= '/project_list';
  const MyProjectList({super.key});



  @override
  State<MyProjectList> createState() => _MyProjectListState();
}

class _MyProjectListState extends State<MyProjectList> {
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
        title: const Text('Project List'),
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
                  Navigator.pushNamed(context, MyProjectList.projectList);


                },
                child: const Row(
                  children: [
                    Text('Project List', style: TextStyle(fontSize: 20, color: Colors.white),),



                  ],
                ),
              ),
              trailing: const Icon(FontAwesomeIcons.diagramProject),
            ),
            ListTile(
              title: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, MySkillScreen.skillScreen);


                },
                child: const Row(
                  children: [
                    Text('Skills', style: TextStyle(fontSize: 20, color: Colors.white),),



                  ],
                ),
              ),
              trailing: const Icon(FontAwesomeIcons.solidChessKing),
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
              child: InkWell(
                  onTap: () => _launchURL(
                      'https://appopener.com/web/prltjcf4z'

                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 70),
                        child: Icon(FontAwesomeIcons.car),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Car Rental Service', style: othersTextStyle,),
                    ],
                  )),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: InkWell(
                  onTap: () => _launchURL(
                      'https://appopener.com/web/g0vcq583x'

                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.personWalkingLuggage),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Tourist Guide', style: othersTextStyle,),
                    ],
                  )),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: InkWell(
                  onTap: () => _launchURL(
                      'https://appopener.com/web/p8avxwp25'

                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Icon(FontAwesomeIcons.graduationCap),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Online Exam System', style: othersTextStyle,),
                    ],
                  )),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: InkWell(
                  onTap: () => _launchURL(
                      'https://appopener.com/web/7zw7be2gg'

                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Icon(FontAwesomeIcons.school),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(child: Text('IT Training Center Management ', style: othersTextStyle,)),
                    ],
                  )),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: InkWell(
                  onTap: () => _launchURL(
                      'https://appopener.com/web/ur6m2uehu'

                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.disease),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Covid  -Tracker', style: othersTextStyle,),
                    ],
                  )),
            ),

          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(

                  color: Colors.deepOrangeAccent
              ),
              child: InkWell(
                  onTap: () => _launchURL(
                      'https://appopener.com/web/nhblis745'

                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(FontAwesomeIcons.temperatureHalf),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Weather Application', style: othersTextStyle,),
                    ],
                  )),
            ),

          )


        ],
      ),

    );
  }
}
