import 'package:flutter/material.dart';
import '../core/theme/app_theme.dart';
import '../features/today/presentation/today_screen.dart';
import '../features/zodiac/presentation/zodiac_screen.dart';
import '../features/saved/presentation/saved_screen.dart';
import '../features/settings/presentation/settings_screen.dart';
import '../features/compatibility/presentation/compatibility_screen.dart';
import '../features/lunar/presentation/lunar_screen.dart';
import '../features/learning/presentation/learning_screen.dart';
import '../features/archive/presentation/archive_screen.dart';
import '../features/search/presentation/search_screen.dart';
class AppShell extends StatefulWidget{const AppShell({super.key});@override State<AppShell> createState()=>_AppShellState();}
class _AppShellState extends State<AppShell>{
 int _index=0;
 late final _pages=<Widget>[const TodayScreen(),const ZodiacScreen(),const ExploreScreen(),const SavedScreen(),const SettingsScreen()];
 @override Widget build(BuildContext context)=>Scaffold(body:SafeArea(child:AnimatedSwitcher(duration:AppMotion.page,child:KeyedSubtree(key:ValueKey(_index),child:_pages[_index]))),
 bottomNavigationBar:NavigationBar(selectedIndex:_index,onDestinationSelected:(v)=>setState(()=>_index=v),destinations:const[
 NavigationDestination(icon:Icon(Icons.wb_sunny_outlined),label:'Today'),NavigationDestination(icon:Icon(Icons.auto_awesome_outlined),label:'Zodiac'),NavigationDestination(icon:Icon(Icons.explore_outlined),label:'Explore'),NavigationDestination(icon:Icon(Icons.bookmark_border),label:'Saved'),NavigationDestination(icon:Icon(Icons.tune),label:'Settings')]));
}
class ExploreScreen extends StatelessWidget{const ExploreScreen({super.key});@override Widget build(BuildContext context)=>ListView(padding:const EdgeInsets.all(20),children:[
 Text('Explore',style:Theme.of(context).textTheme.headlineLarge),const Text('Astrology traditions, explained with curiosity.'),
 _tile(context,'Compatibility','Reflective themes, no scores.',Icons.favorite_outline,const CompatibilityScreen()),
 _tile(context,'Moon calendar','Browse verified lunar events.',Icons.nightlight_outlined,const LunarScreen()),
 _tile(context,'Learning library','Signs, symbols and traditions.',Icons.menu_book_outlined,const LearningScreen()),
 _tile(context,'Search','Find signs, articles and readings.',Icons.search,const SearchScreen()),
 _tile(context,'Reading archive','Browse dated historical readings.',Icons.calendar_month_outlined,const ArchiveScreen()),
 ]);}
 Widget _tile(BuildContext c,String t,String s,IconData i,Widget p)=>Card(child:ListTile(leading:Icon(i,color:AppTheme.primary),title:Text(t),subtitle:Text(s),trailing:const Icon(Icons.chevron_right),onTap:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>p))));
