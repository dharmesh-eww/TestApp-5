import 'package:flutter/material.dart';
abstract final class AppTheme{
 static const canvas=Color(0xFFFFF9F0),surface=Color(0xFFFFFFFF),secondary=Color(0xFFF1EFF8),ink=Color(0xFF332D40),muted=Color(0xFF746D80),primary=Color(0xFF6557B8),gold=Color(0xFFD6B66D),coral=Color(0xFFE9A18E),sky=Color(0xFFE4F1F5),line=Color(0xFFE9E4EC);
 static const pagePadding=20.0,radius=20.0;
 static ThemeData get light=>ThemeData(useMaterial3:true,brightness:Brightness.light,scaffoldBackgroundColor:canvas,
 colorScheme:ColorScheme.fromSeed(seedColor:primary,brightness:Brightness.light,surface:canvas),
 textTheme:const TextTheme(headlineLarge:TextStyle(color:ink,fontSize:32,height:1.1,fontWeight:FontWeight.w700),headlineMedium:TextStyle(color:ink,fontSize:25,height:1.15,fontWeight:FontWeight.w700),titleLarge:TextStyle(color:ink,fontSize:19,fontWeight:FontWeight.w700),titleMedium:TextStyle(color:ink,fontSize:15,fontWeight:FontWeight.w700),bodyLarge:TextStyle(color:ink,fontSize:15,height:1.55),bodyMedium:TextStyle(color:muted,fontSize:13,height:1.45)),
 appBarTheme:const AppBarTheme(backgroundColor:canvas,foregroundColor:ink,elevation:0),cardTheme:CardThemeData(color:surface,elevation:0,shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(radius),side:const BorderSide(color:line))),
 navigationBarTheme:const NavigationBarThemeData(backgroundColor:surface,indicatorColor:secondary),
 inputDecorationTheme:InputDecorationTheme(filled:true,fillColor:surface,border:OutlineInputBorder(borderRadius:BorderRadius.circular(14),borderSide:const BorderSide(color:line))));
}
abstract final class AppMotion{static const page=Duration(milliseconds:220);}
