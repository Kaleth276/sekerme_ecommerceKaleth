import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerceKaleth/app/presentation/widgets/form_text_field.dart';
import 'package:sekerme_ecommerceKaleth/app/presentation/widgets/my_button_form.dart';

class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Logo
                SvgPicture.asset('assets/images/MyMarca.svg',
                  colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn
                  ),
                ),
                Text('login',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 20,),


                const FormTextField(
                  labelText: 'Email',
                  hintText: 'Ingrese correo',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,

                ),
                const SizedBox(height: 20,),

                const FormTextField(
                  labelText: 'password',
                  hintText: 'Ingrese contraseña',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: false,

                ),
                 Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){},
                            child: Text('¿olvido contraseña?',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary
                              ),
                            ),

                        )






                      ],
               ),
              ),
                const SizedBox(height: 20,),

                MyButtonForm(
                    text: 'login',
                    onTab: (){}
                ),





                //Form
                //Button
                //TextButton
              ],
            ),
          ),
        )
      ),
     );
  }
}
