import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../providers/auth/signup_provider.dart';
import 'custom_textfield.dart';

class PoliceForm extends StatelessWidget {
  const PoliceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextfield(
          lableText: "Police Station Name",
          //don't add (context, listen: false) when calling provider methods for property values.
          //add (listen: false) only when calling provider methods within a function.
          controller: Provider.of<SignUpProvider>(context).nameController,
        ),
        const SizedBox(
          height: 14,
        ),
        CustomTextfield(
          lableText: "Police Station Address",
          controller: Provider.of<SignUpProvider>(context).addressController,
        ),
        const SizedBox(
          height: 14,
        ),
        CustomTextfield(
          lableText: "Police Station Email",
          controller: Provider.of<SignUpProvider>(context).emailController,
        ),
        const SizedBox(
          height: 14,
        ),
        CustomTextfield(
          lableText: "Password",
          isObsecure: true,
          controller: Provider.of<SignUpProvider>(context).passwordController,
        ),
      ],
    );
  }
}
