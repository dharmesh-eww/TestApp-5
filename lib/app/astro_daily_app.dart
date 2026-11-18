import 'package:flutter/material.dart';
import 'app_shell.dart';
import '../core/theme/app_theme.dart';
import '../core/data/astro_repository.dart';
import '../features/onboarding/presentation/onboarding_screen.dart';
class AstroDailyApp extends StatefulWidget { const AstroDailyApp({super.key}); @override State<AstroDailyApp> createState()=>_AstroDailyAppState(); }
class _AstroDailyAppState extends State<AstroDailyApp>{
 bool? _done;
 @override void initState(){super.initState();_load();}
 Future<void> _load()async{final v=await AstroRepository.instance.setting('onboarded');if(mounted)setState(()=>_done=v=='true');}
 @override Widget build(BuildContext context)=>MaterialApp(title:'AstroDaily',debugShowCheckedModeBanner:false,
 theme:AppTheme.light,darkTheme:AppTheme.light,themeMode:ThemeMode.light,
 home:_done==null?const Scaffold(body:Center(child:CircularProgressIndicator())):_done!?const AppShell():OnboardingScreen(onComplete:()async{await AstroRepository.instance.setSetting('onboarded','true');if(mounted)setState(()=>_done=true);}));
}
