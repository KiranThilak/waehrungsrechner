import '/data/models/models.dart';

class CountryCard extends StatelessWidget {
  final Country country;
  const CountryCard({
    required this.country,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.indigo.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    // child: Image.asset('gb-flag.png'),
                    child: Image.asset(
                      country.urlFlag,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(country.currency.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600)),
                        Text(country.currency.symbol,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 46, 45, 45),
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  )
                ],
              ),
              TextField(
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  hintText: '0.0',
                  suffixIcon: Text(
                    country.currency.symbol,
                    style: const TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  suffixIconConstraints:
                      const BoxConstraints(minWidth: 0, minHeight: 0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
