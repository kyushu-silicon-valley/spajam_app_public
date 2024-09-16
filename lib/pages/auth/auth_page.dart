import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/large_button.dart';
import '../../l10n/l10n.dart';
import 'auth_page_controller.dart';
import 'components/auth_text_field.dart';
import 'components/password_field.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSignUp = useState(false);

    final userNameController = useTextEditingController();
    final mailAddressController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isSignUp.value ? L10n.of(context)!.signUp : L10n.of(context)!.signIn,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              if (isSignUp.value)
                AuthTextField(
                  controller: userNameController,
                  hintText: L10n.of(context)!.userName,
                ),
              AuthTextField(
                controller: mailAddressController,
                hintText: L10n.of(context)!.mailAddress,
              ),
              PasswordField(
                controller: passwordController,
              ),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: () {
                  isSignUp.value = !isSignUp.value;
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(L10n.of(context)!.signUp),
                ),
              ),
              const SizedBox(height: 16),
              LargeButton(
                onPressed: () async {
                  if (passwordController.text.trim().isEmpty ||
                      mailAddressController.text.trim().isEmpty) {
                    return;
                  }
                  if (isSignUp.value) {
                    if (userNameController.text.trim().isEmpty) {
                      return;
                    }
                    await ref.read(authPageNotifierProvider.notifier).signUp(
                          email: mailAddressController.text.trim(),
                          password: passwordController.text.trim(),
                          userName: userNameController.text.trim(),
                        );
                  } else {
                    await ref.read(authPageNotifierProvider.notifier).signIn(
                          email: mailAddressController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                  }
                },
                text: isSignUp.value
                    ? L10n.of(context)!.signUp
                    : L10n.of(context)!.signIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
