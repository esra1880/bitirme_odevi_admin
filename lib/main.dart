
import 'package:foodiee_admin/provider/product_provider.dart';
import 'package:foodiee_admin/provider/theme_provider.dart';
import 'package:foodiee_admin/screens/DashboardScreen.dart';
import 'package:foodiee_admin/screens/editorUploadProduct.dart';
import 'package:foodiee_admin/screens/search_screen.dart';
import 'package:foodiee_admin/screens/splash_screen.dart';
import 'package:foodiee_admin/widget/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseApp>
      (future: Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyBzscMXMyZ1BCsARB2HepVfQUVxrqoWvPw',
          appId: '1:311781754479:android:9a84c5526d05bfd2866f9a',
          messagingSenderId: '311781754479',
          projectId: 'foodiee-4662d',
          storageBucket: 'foodiee-4662d.appspot.com',
        )
    ),
        builder: (context, snapshot){
          if(snapshot.connectionState== ConnectionState.waiting){
            return const MaterialApp(

                home:Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
            );
          }
          else if(snapshot.hasError){
            return  MaterialApp(

                home:Scaffold(
                  body: Center(
                    child: SelectableText(snapshot.error.toString()),
                  ),
                )
            );

          }
          return MultiProvider(providers: [
            ChangeNotifierProvider(create: (_){
              return ThemeProvider();
            }),
            ChangeNotifierProvider(create: (_){
              return ProductProvider();
            }),


          ],
            child: Consumer<ThemeProvider>(builder: (context, themeProvider, child){
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'FOODİE ',


                //    home:const LoginScreen(),
                home:const SplashScreen(),
                routes: {
                  DashboardScreen.routName:(context)=> const DashboardScreen(),
                  OrderScreen.routName: (context) => const OrderScreen(),
                  SearchScreen.routName: (context) => const SearchScreen(),
                  EditorUploadProductScreen.routName: (context) => const EditorUploadProductScreen(),
                },
              );


            }),

          );
        }
    );
  }
}

