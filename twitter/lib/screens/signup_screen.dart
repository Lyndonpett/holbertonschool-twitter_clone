import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmController;
  final _formKey = GlobalKey<FormState>();

  @override
  initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
  }

  @override
  dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Sign Up'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        CustomEntryField(
                          hint: 'Enter name',
                          controller: _nameController,
                          context: context,
                        ),
                        CustomEntryField(
                          hint: 'Enter email',
                          controller: _emailController,
                          context: context,
                        ),
                        CustomEntryField(
                          hint: 'Enter password',
                          controller: _passwordController,
                          isPassword: true,
                          context: context,
                        ),
                        CustomEntryField(
                          hint: 'Confirm Password',
                          controller: _confirmController,
                          isPassword: true,
                          context: context,
                        ),
                        const SizedBox(height: 30),
                        CustomFlatButton(
                          onPressed: () {},
                          label: 'Sign up',
                        ),
                      ],
                    )))));
  }
}
