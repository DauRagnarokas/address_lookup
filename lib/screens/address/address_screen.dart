import 'package:flutter/material.dart';
import 'package:flutterassignment/models/address.dart';
import 'package:flutterassignment/models/field_props.dart';
import 'package:flutterassignment/styles/main_theme.dart';
import 'package:flutterassignment/widgets/unfocus.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../address_display_screen.dart';
import 'country_field.dart';

part 'submit_button.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Registered Address'),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.keyboard_arrow_left),
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(4),
              child: LinearProgressIndicator(
                value: 0.5,
              ),
            ),
          ),
          body: const AddressForm()),
    );
  }
}

class AddressForm extends StatefulWidget {
  const AddressForm({super.key});

  @override
  AddressFormState createState() => AddressFormState();
}

class AddressFormState extends State<AddressForm> {
  final formKey = GlobalKey<FormState>();
  late final List<FieldProps> fieldsProps;
  final ValueNotifier<bool> isSubmitEnabled = ValueNotifier(false);
  late final FormGroup form;

  @override
  void initState() {
    fieldsProps = [
      FieldProps(
        name: 'country',
        label: 'Country*',
        formControl:
            FormControl<String>(value: '', validators: [Validators.required]),
      ),
      FieldProps(
        name: 'prefecture',
        label: 'Prefecture',
        formControl: FormControl<String>(value: ''),
      ),
      FieldProps(
        name: 'municipality',
        label: 'Municipality*',
        formControl: FormControl<String>(value: '', validators: [Validators.required]),
      ),
      FieldProps(
        name: 'street_address',
        label: 'Street address (subarea - block - house)*',
        formControl: FormControl<String>(value: '', validators: [
          Validators.required,
          Validators.pattern(
            RegExp(r'^[^-]+?-[^-]+?-[^-]+?-[^-]+?$'),
          )
        ]),
      ),
      FieldProps(
        name: 'apartment',
        label: 'Apartment, suite, unit',
        formControl:
            FormControl<String>(value: '', validators: [Validators.required]),
      ),
    ];
    form = fb.group(
      {for (final e in fieldsProps) e.name: e.formControl},
    );
    super.initState();
  }

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: () => form,
      builder: (context, form, child) => ReactiveFormConsumer(
        builder: (context, formGroup, child) {
          final fieldsCount = fieldsProps.length;
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const Text(
                          'Please enter information as written on your ID document'),
                      const SizedBox(height: 16),
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List<Widget>.generate(
                            fieldsCount,
                            (index) => index == 0
                                ? CountryField(fieldProps: fieldsProps[index])
                                : ReactiveTextField(
                                    formControlName: fieldsProps[index].name,
                                    textInputAction: index == fieldsCount - 1
                                        ? TextInputAction.done
                                        : TextInputAction.next,
                                    decoration: InputDecoration(
                                      labelText: fieldsProps[index].label,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    child: ReactiveFormConsumer(
                      builder: (BuildContext context, form, child) {
                        return const _SubmitButton();
                      },
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
