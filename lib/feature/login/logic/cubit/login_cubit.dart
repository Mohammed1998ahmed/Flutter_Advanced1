import 'package:advancedflutter/core/helper/extension.dart';
import 'package:advancedflutter/core/helper/shared_phreferance.dart';
import 'package:advancedflutter/core/networking/constansts.dart';
import 'package:advancedflutter/core/networking/dio_Service.dart';
import 'package:advancedflutter/core/router/routes.dart';
import 'package:advancedflutter/feature/login/data/login_model.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_sign_in/github_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit getObject(context) => BlocProvider.of(context);
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassWord = TextEditingController();

  Login_Model? login_model;
  void post_Login(
      {required String email,
      required String passWord,
      required BuildContext context}) {
    emit(LoginLoading());
    print(email.toString() + "mmmmm" + passWord.toString());
    FormData formData =
        FormData.fromMap({"email": email, "password": passWord});

    DioService()
        .postRequest(
      Constants.loginPath,
      data: formData,
    )
        .then((value) {
      login_model = Login_Model.fromJson(value.data);
      print(login_model!.message.toString());
      if (login_model!.status == true) {
        context.pushNamed(Routes.home_page);
        SharedPreferencesService()
            .setString(key: "token", value: login_model!.data!.token!);
      }
      emit(LoginSueccs());
    }).catchError((onError) {
      print(onError.toString());
      emit(LoginError());
    });
  }

  createUserWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential> signInWithGitHub(
      {required BuildContext context}) async {
    // Create a GitHubSignIn instance
    final GitHubSignIn gitHubSignIn = GitHubSignIn(
        clientId: "Ov23li7aJUq5G3Atv11M",
        clientSecret: "e3e7dae31fa7337f0789337d1dd8456322bb4126",
        redirectUrl: 'https://my-project.firebaseapp.com/__/auth/handler');

    // Trigger the sign-in flow
    final result = await gitHubSignIn.signIn(context);

    // Create a credential from the access token
    final githubAuthCredential = GithubAuthProvider.credential(result.token!);

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance
        .signInWithCredential(githubAuthCredential);
  }

  void verifyPhoneNumber1({required String? phoneNumber}) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber!,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void signInWithPhone(String phoneNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        print("Error: ${e.message}");
      },
      codeSent: (String verificationId, int? resendToken) {
        print("Verification ID: $verificationId");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP(String verificationId, String smsCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
