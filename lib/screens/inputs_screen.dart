import 'package:fl_components/screens/screens.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'David Adolfo',
      'last_name': 'Garcia Giron',
      'email': 'sagitaforever64@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs & Forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                // FIRST NAME
                CustomInputField(
                  labelText: 'First Name',
                  hintText: "Enter First Name",
                  helperText: "Only Letters",
                  //icon: Icons.assignment_ind_outlined,
                  suffixIcon: Icons.group_outlined,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                // LAST NAME
                CustomInputField(
                  labelText: 'Last Name',
                  hintText: "Enter Last Name",
                  helperText: "Only Letters",
                  //icon: Icons.assignment_ind_rounded,
                  suffixIcon: Icons.groups_rounded,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                // EMAIL
                CustomInputField(
                  labelText: 'E-mail',
                  hintText: "Enter your E-mail",
                  helperText: "Format: asdasd@asdasd.asd",
                  //icon: Icons.mail,
                  suffixIcon: Icons.mode_edit_outline_rounded,
                  keyBoardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                // PASSWORD
                CustomInputField(
                  labelText: 'Password',
                  hintText: "Enter your Password",
                  helperText: "Format: A - a, 1 - 2, & - #",
                  //icon: Icons.password,
                  suffixIcon: Icons.lock,
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                // SCROLL ROLES
                DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Superuser',
                        child: Text('Superuser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr. Developer',
                        child: Text('Jr. Developer'),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: const Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }

                    //* imprimir valores del formulario
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
