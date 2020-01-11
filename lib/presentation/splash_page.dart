import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pelican/data/remote/api/api_url.dart';
import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:pelican/data/remote/profile_remote_data_source_impl.dart';
import 'package:pelican/presentation/test_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _makeLogin() {
    final api = ShopperApi(Dio(BaseOptions(
      baseUrl: baseUrlDevelopment,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    )));

    final dataSource = ProfileRemoteDataSourceImpl(api);

    dataSource.login("diego.alvis@pedidosya.com", "123456").then((response) {
      final email = response.profile.email;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TestPage(email: email)));
    }).catchError((error) {
      print(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pelican Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Proof fo concept',
            ),
            RaisedButton(
              color: Colors.orange.shade400,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
              onPressed: _makeLogin,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
