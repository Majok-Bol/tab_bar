import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TopNavigationBar(),
    );
  }
}
class TopNavigationBar extends StatelessWidget{
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 3, child:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade500,
        bottom: TabBar(tabs: [
          Tab(child: Text('Status',style: TextStyle(color: Colors.white),),),
          Tab(child: Text('Calls',style: TextStyle(color: Colors.white),),),
          Tab(child: Text('Chats',style: TextStyle(color: Colors.white),),),
        ]),
      ),
      body:TabBarView(children:[
        Center(child: Text('Status Screen'),),
        Center(child: Text('Calls Screen'),),
        Center(child: Text('Chats Screen'),),
      ]),
    ));
  }
}