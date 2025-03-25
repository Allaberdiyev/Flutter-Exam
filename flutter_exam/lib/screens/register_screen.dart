import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/login_in_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String? _nameError;
  String? _emailError;
  String? _passwordError;
  String? _confirmPasswordError;

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  void _register() {
    _validateFields();
    setState(() {});

    if (_nameError == null &&
        _emailError == null &&
        _passwordError == null &&
        _confirmPasswordError == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (ctx) => LoginInScreen()),
      );
    }
  }

  void _validateFields() {
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    bool isValidEmail = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    ).hasMatch(email);

    _nameError = name.isEmpty ? "Please enter your name" : null;
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
    _confirmPasswordError =
        confirmPassword.isEmpty
            ? "Please confirm your password"
            : (password != confirmPassword ? "Passwords do not match" : null);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            children: [
              google_facebook('Register'),
              30.he,
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textfieldBCGC,
                  hintText: 'Full Name',
                  errorText: _nameError,
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
              20.he,
              TextField(
                controller: _confirmPasswordController,
                obscureText: !_isConfirmPasswordVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textfieldBCGC,
                  hintText: 'Confirm Password',
                  errorText: _confirmPasswordError,
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
                      _isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AppColors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              50.he,
              button(_register, 'Register'),
              40.he,
              Text(
                'Already Have An Account?',
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
                    MaterialPageRoute(builder: (ctx) => LoginInScreen()),
                  );
                },
                child: Text(
                  'LOGIN',
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
              30.he,
            ],
          ),
        ),
      ),
    );
  }
}
