package com.example.eshop

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.SplashScreen

class MainActivity: FlutterActivity() {
    override fun  provideSplashScreen(): SplashScreen? = SplashView()
}
