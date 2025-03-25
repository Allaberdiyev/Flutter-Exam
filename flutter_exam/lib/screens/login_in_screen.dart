import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/home_screen.dart';
import 'package:flutter_exam/screens/register_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginInScreen extends StatefulWidget {
  const LoginInScreen({super.key});

  @override
  State<LoginInScreen> createState() => _LoginInScreenState();
}

class _LoginInScreenState extends State<LoginInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailError;
  String? _passwordError;
  bool _isPasswordVisible = false;

  void _login() {
    _validateFields();
    setState(() {});

    if (_emailError == null && _passwordError == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (ctx) => HomeScreen()),
      );
    }
  }

  void _validateFields() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    bool isValidEmail = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    ).hasMatch(email);

    _emailError =
        email.isEmpty
            ? "Please enter your email"
            : (!isValidEmail ? "Invalid email format" : null);

    _passwordError =
        password.isEmpty
            ? "Please enter a password"
            : (password.length < 6
                ? "Password must be at least 6 characters"
                : null);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          children: [
            google_facebook('Log In'),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textfieldBCGC,
                hintText: 'Enter Email',
                errorText: _emailError,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            20.he,
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textfieldBCGC,
                hintText: 'Password',
                errorText: _passwordError,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                contentPadding: EdgeInsets.all(20),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forget Password? ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  letterSpacing: 0,
                  color: AppColors.blue3,
                ),
              ),
            ),
            40.he,
            button(_login, 'Login'),
            70.he,
            Text(
              'Don`t Have An Account?',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.black,
                letterSpacing: 0,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => RegisterScreen()),
                );
              },
              child: Text(
                'REGISTER',
                style: TextStyle(
                  color: AppColors.blue2,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 3,
                  fontSize: 15.sp,
                ),
              ),
            ),
            Container(
              width: 28.w,
              height: 1.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                gradient: LinearGradient(
                  colors: [AppColors.blue2, AppColors.blue3],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
