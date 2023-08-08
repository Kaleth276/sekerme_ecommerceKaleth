import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sekerme_ecommerceKaleth/app/presentation/views/login/widgets/login_divider.dart';
import 'package:sekerme_ecommerceKaleth/app/presentation/views/register/register_view.dart';
import 'package:sekerme_ecommerceKaleth/app/presentation/widgets/links_common_widgets.dart';

import '../../widgets/form_text_field.dart';



class LoginView extends StatelessWidget {

  static const String name = 'login_view';
  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();

   LoginView({super.key});

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
                  alignment: Alignment.topCenter,
                  width: 180,
                ),
                Text('login',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 20,),


                 FormTextField(
                  labelText: 'Email',
                  hintText: 'Ingrese correo',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                  controller: _emailAddress,

                ),
                const SizedBox(height: 20,),

                 FormTextField(
                  labelText: 'password',
                  hintText: 'Ingrese contraseña',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: false,
                  controller: _visiblePassword,

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
                  onTab: (){
                    print('Email Adress: ${_emailAddress.text}');
                    print('Password: ${_visiblePassword.text}');
                  },

                ),
                const SizedBox(height: 20,),

                const LoginDivider(),
                const SizedBox(height: 20,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySocialButton(
                        OnTap: (){},
                        imagePath: 'assets/icons/facebook.png'
                    ),
                    const SizedBox(width: 20,),
                    MySocialButton(
                        OnTap: (){},
                        imagePath: 'assets/icons/twitter.png'
                    ),
                    const SizedBox(width: 20,),
                    MySocialButton(
                        OnTap: (){},
                        imagePath: 'assets/icons/google.png'
                    ),

                  ],

                ),
                const SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context)=> const RegisterView()
                          ),
                          );
                        },
                            child:  Text('Sing Up',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                        ),
                      ],
                    ),
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
