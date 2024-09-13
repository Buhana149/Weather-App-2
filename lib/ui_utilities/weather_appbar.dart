import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeatherAppbar extends StatelessWidget implements PreferredSizeWidget{

  const WeatherAppbar({
    super.key,
    
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      
    );
  }
  
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
