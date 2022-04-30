import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterFormPage extends StatefulWidget {
  const RegisterFormPage({Key? key}) : super(key: key);

  @override
  State<RegisterFormPage> createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  bool _hidePassConfirm = true;
  bool _hidePass = true;

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _storyController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _storyController.dispose();
    _passController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Form'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              validator: _validateName,
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Full Name*',
                hintText: 'What do people call you?',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number*',
                hintText: 'Where can we reach you?',
                helperText: 'Phone format: (XXX)XXX-XXXX',
                prefixIcon: Icon(Icons.call),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter(
                  RegExp(r'^[()\d -]{1, 15}$'),
                  allow: true,
                ),
              ],
              validator: (value) => _validatePhoneNumber(value)
                  ? null
                  : 'Phone number must be entered as (###)###-####',
            ),
            SizedBox(height: 25),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter e mail address',
                icon: Icon(Icons.mail),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: _storyController,
              decoration: InputDecoration(
                labelText: 'Life Story',
                hintText: 'Tell us about your self',
                helperText: 'Keep it short, this is just a demo',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              inputFormatters: [
                LengthLimitingTextInputFormatter(100),
              ],
            ),
            SizedBox(height: 25),
            TextFormField(
              controller: _passController,
              decoration: InputDecoration(
                labelText: 'Password*',
                hintText: 'Enter the password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _hidePass ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                ),
                icon: Icon(Icons.security),
              ),
              obscureText: _hidePass,
              maxLength: 8,
            ),
            SizedBox(height: 25),
            TextFormField(
              controller: _confirmController,
              decoration: InputDecoration(
                labelText: 'Confirm Password*',
                hintText: 'Confirm the password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _hidePassConfirm ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _hidePassConfirm = !_hidePassConfirm;
                    });
                  },
                ),
                icon: Icon(Icons.border_color),
              ),
              obscureText: _hidePassConfirm,
              maxLength: 8,
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: _submitForm,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
              ),
              child: Text('Submit Form'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('Form is valid');
      print('Name: ' + _nameController.text);
      print('Phone: ' + _phoneController.text);
      print('Email: ' + _emailController.text);
      print('Story: ' + _storyController.text);
    }
  }

  String? _validateName(String? value) {
    final _nameExp = RegExp(r'^[A-Za-z ]+$');
    if (value!.isEmpty) {
      return 'Name is required';
    } else if (!_nameExp.hasMatch(value)) {
      return 'Please enter alphabetical characters';
    } else {
      return null;
    }
  }

  bool _validatePhoneNumber(String? input) {
    final _phoneExp = RegExp(r'^\(\d\d\d\)\d\d\d-\d\d\d\d$');
    return _phoneExp.hasMatch(input!);
  }
}
