import 'package:flutter/foundation.dart';
import 'package:sekerme_ecommerceKaleth/app/presentation/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerceKaleth/app/presentation/widgets/my_button_form.dart';

class ForgotPasswordView extends StatelessWidget {

    static const String name = 'forgot_password_view';
    final _emailAddress = TextEditingController();
   ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                SvgPicture.asset('assets/images/LOGOUNAS.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,BlendMode.srcIn
                ),
                alignment:Alignment.topCenter,
                width:180,
                ),
                Text('Recuperar contraseña',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary
                ),
                ),
                const SizedBox(height: 20,),
                FormTextField(
                    labelText: 'Email',
                    hintText: 'ingresa el correo electronico',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _emailAddress
                ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                      text: 'Enviar correo de recuperacion',
                      onTab:(){},
                  )

                ],
              )


          ),
        )
      )
    );
  }
}

