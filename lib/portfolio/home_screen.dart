import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/portfolio/project_list.dart';
import 'package:portfolio/portfolio/skills_screen.dart';
import 'package:portfolio/portfolio/values.dart';
import 'package:portfolio/widget/textstyle.dart';
import 'package:url_launcher/url_launcher.dart';
class HomeScreen extends StatefulWidget {
  static const homeRoute = '/home_screen';
   HomeScreen({super.key});



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static void _launchURL(String _url) async {
    print(_url);
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
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
            ),


          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Use apps, Maximize the potential of your Business', style: nameStyle, textAlign: TextAlign.center,),
            //Text('Hire Me', style: nameStyle,),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              child: ClipOval(
                child: Image(image: AssetImage('assets/images/profile.png'),
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SelectableText(
              Values.name,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SelectableText(
              Values.designation,
              style: Theme.of(context).textTheme.headline6!.copyWith(
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
                    'https://appopener.com/web/y2nnre6oy'
        
                  ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(FontAwesomeIcons.github, size: 40,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('GitHub', style: othersTextStyle,),
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
                        'https://appopener.com/lk/xjrmsy8gw'
        
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(FontAwesomeIcons.linkedin, size: 40, color: Colors.indigoAccent,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Linkedin', style: othersTextStyle,),
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
                        'https://play.google.com/store/apps/details?id=mia.dam.damhealth&pcampaignid=web_share'
        
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Icon(FontAwesomeIcons.googlePlay, size: 40, color: Colors.green,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('DAM-Health', style: othersTextStyle,),
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
                        'https://play.google.com/store/apps/details?id=co.logicaltriangle.mhealth&pcampaignid=web_share'
        
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: Icon(FontAwesomeIcons.googlePlay, size: 40, color: Colors.green,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('BAN-GDM', style: othersTextStyle,),
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
                        'https://appopener.com/web/lr8etryzk'
        
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Icon(FontAwesomeIcons.whatsapp, size: 40, color: Colors.teal,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('WhatsApp', style: othersTextStyle,),
                      ],
                    )),
              ),
        
            ),
            Padding(padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
        
                    color: Colors.deepOrangeAccent
                ),
                child: InkWell(
                    onTap: () => _launchURL(
                        'https://appopener.com/web/ln5l3um8a'
        
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Icon(FontAwesomeIcons.facebook, size: 40, color: Colors.blue,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Facebook', style: othersTextStyle,),
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
                        'https://appopener.com/web/7lb7ejjdx'
        
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.envelope, size: 40, color: Colors.orangeAccent,),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Email', style: othersTextStyle,),
                      ],
                    )),
              ),
        
            ),
        
        
          ],
        ),
      ),

    );
  }
}
