import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late final TextEditingController _emailController;

  @override
  initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Forgot Password'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 150, 0, 25),
                child: Text(
                  'Forgot Password',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text(
                  'Enter your email address below to receive password reset instructions.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey[600]),
                )),
            CustomEntryField(
              hint: 'Enter email',
              controller: _emailController,
              context: context,
            ),
            const SizedBox(height: 20),
            CustomFlatButton(
              onPressed: () {},
              label: 'Submit',
            ),
          ],
        ))));
  }
}
