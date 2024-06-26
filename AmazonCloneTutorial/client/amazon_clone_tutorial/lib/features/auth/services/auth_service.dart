import 'package:amazon_clone_tutorial/constants/error_handling.dart';
import 'package:amazon_clone_tutorial/constants/global_variables.dart';
import 'package:amazon_clone_tutorial/constants/utils.dart';
import 'package:amazon_clone_tutorial/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  get id => null;


  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
        id: id, 
        name: name, 
        email: email, 
        password: password, 
        address: '', type: '', 
        token: '', 
        // cart: '',
        );

        http.Response res = await http.post(
          Uri.parse('$uri/api/signup/'), 
          body: user.toJson(),
          headers: <String, String>{
            'Content-type': 'application/json; charset=UTF-8',
          }
          );
          httpErrorHandle(
            response: res, 
            context: context, 
            onSuccess: () {
              showSnackBar(context, 'Account created! Login with the same credentials');
            },
          );
    } catch(e) {
      showSnackBar(context, e.toString());
    }
  }

}