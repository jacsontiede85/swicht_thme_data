import 'package:flutter/material.dart';
import 'theme.data.dart';

void main() {
  runApp(MyApp());
}

var theme = darkTheme;
int i=0;




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    changeTheme();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    changeTheme();
  }

  changeTheme() {
    var brightness = WidgetsBinding.instance.window.platformBrightness;
    brightness == Brightness.dark ? theme = darkTheme : theme = lightTheme;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Themes',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Themes"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(i==0)
                theme = darkOrangeTheme;
              else if(i==1)
                theme = darkTheme;
              else
                theme = lightTheme;
              i++;
              if(i==3)
                i=0;
            });
          },
          child: Icon(
              Icons.brightness_4
          ),
        ),
      )
    );
  }
}
