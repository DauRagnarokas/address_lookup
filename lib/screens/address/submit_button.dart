part of 'address_screen.dart';

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MainTheme.skinColor,
          foregroundColor: Colors.white,
          disabledBackgroundColor: MainTheme.skinColor.withAlpha(50),
          disabledForegroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const StadiumBorder(),
        ),
        onPressed: form!.valid
            ? () {
          final Address address =
          Address.fromJson(form.value as Map<String, dynamic>);
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => AddressDisplayPage(address: address),
            ),
                (Route<dynamic> route) => false,
          );
        }
            : null,
        child: const Text('Next', style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
