import 'package:amazon_clone_node/constants/error_handling.dart';
import 'package:amazon_clone_node/constants/global_variables.dart';
import 'package:amazon_clone_node/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../constants/utils.dart';

class AuthService {
  //sign up user
  void signUpUser ({
    required BuildContext context,
    required String email,
    required String name,
    required String password,
    
  }) async{
    try{   
  User  user = User(id: '',email: '', name: '', password: '', address: '', type: '', token: '');
  http.Response res= await  http.post(
    Uri.parse('$uri/api/siginup'),
    body: user.toJson(),
    // use it when we have request from our API
    headers:<String, String>{
      'Content-Type':'application/json; charset=UTF-8'
    
  });
  // whart is the status
    httpErrorHandle(response: res, 
    context: context, 
    onSuccess: (){
      showSnackBar(context, 'Account Has Been Created ! Login with  same createtions');

    });
    }

    // error hanlding
    catch (e){
          showSnackBar(context, e.toString());
    }
  }
}