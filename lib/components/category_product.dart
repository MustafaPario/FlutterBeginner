import 'package:flutter/material.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({super.key});

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 170,
      height: 200,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 233, 239),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Image.network(
              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMREhMRERIVExAWGRUTEhcQEhMWFRIZFxYYGRYYFRUeHSggGBolHRUXITMhKzUrLi4uFx8zOTUsNygtLisBCgoKDg0OGhAQGy0lICYtLS0rLS0tLi0vLS01LSstLS0tNy0tNy01LS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAQUBAAAAAAAAAAAAAAAABQIDBAYHAf/EADsQAAIBAgQEBAMFBwQDAQAAAAABAgMRBBIhMQUiQVEGYXGBEzKRBxRCobEjUmJjgsHwM3LR4SSS8RX/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAgEDBP/EACARAQEAAgIDAQADAAAAAAAAAAABAhEDEiExUUEEE2H/2gAMAwEAAhEDEQA/AO4gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPGyMx3iPB0HlrYuhTl2qVqcX9GwJQEBS8a8Pl8uLpS/2yuvqg/F+FzZYylJ73jHl67Sdk9vzFuvYnwYPDOJxxCcoRllWl5JJN9lrqZwAAAAAAAAAAAAAAAAAAAAAAAAAGp+K/tCwXD7wnUdWur/ALGglOd+0ntD318jQa/jXiGOzzi/umFTjGMaPzzcldqdZ/I7PSySvdXVrmyWpyykm3WeLcdw2FWbEVoU+tpS5n6RWrNVx32lUrP7tQnWfRzkqcb2vtzVEv6e/VM53/8AjqTcr5tbtyc5vMk787bV7KOjbvmi+jtO0MMpWqRVkrN5lGVvmkpSVr6ptW7s6Tj+uV5fiaq+JeI15KFNQoJq2kF8SLa6Z24zafSyvmhtm0YinUk4fExeJam3G1KtOLjdpXkoyisqdorRN55X+VGRgJunC0W3ZXajOTm7WcUou6cm9/OMemhJcHr55SvTlFpRkpOzUZTjaVr3vJ387EXwrG2tdx/h+nXlUoTp1F8OK+JOpJ1VdzzfDUqrlneVtZkrvkT2084fgKNacnGEuaKUYVYqGTJOrTzTunJ3ag3ms0k/SW7YXBKLl56ddIRVlTTfTXfzZ5Tw8VOUfhydlq56qak7yUfLVX21ijO3xvX60OHhmjVr1MsalODirLNOMlZy1cVLls8qaeifa6iQnGPBnNOUK9XPZ20lKTeqt8S/ktX0nG6OtzwqtdfNpra7k75pX8nZfQxa2DzJ8qvdrZ8yeskv3U0kr78qNlZcfjk/AvEXEOFyfM8VhvmnRlGeizZG6U0nk5umqv01ude8LeKsPxCnmotxqL56VVZatPpzQ7XT5ldOz7M1fivB/myxbd52vl+bLmza6q8Lw9Um+5r1Tga0lTU4zV7TV41EpRyweaNrO1tU91d3L6zL0nvcfbsoOP4PxZj8Mv8AUVaHLlhiVeavypRmrSfOmm3fdGzcJ+0uhN5cTTlhpfvPnpvu8ySaV9LtW89ibx5Rc5Ma3oFjCYynVjmpVI1I6O8JKS11WqL5DoAAAAUzmopttJLVtuySW7b6AVHjZo/iT7RKdKLjhEq07aVJP9in7az9rLzOa8MhjfEGLdGri5/d6bjLEJScKeRy1hGnDTM7WTl56uxXW62ztN6d7w2Np1HJU6kJuLtNQnGTi+0knozII3gXAcNgqapYWjClBJLlXNK3Wc95PzdySJaAAAAR3iDjNLBYepia7ap01d2V5SfSMV1begDj3HKGCpOviaip01prq5PpGEVrKT7I4b4v+0vHY/NDB05YfB9WnarUW3PUT5E+0fqyJ8QY7E8TrfesbVVKnGTjCho44eHq3FN6aydrv2ROYbw5KdGcI1anNbKoxUYyadrTd9Enr2fvcy5SFxy+NCfD7WzvLu1la01113111NqpRnTjGCq5GrzipQum9L5vJaW9CVxnhqGGVq7crKMk00mldq2t9PL+HzJfAcDhLSUlKL632a7PddTMeSXyjLC+kDQq1YNJ80Xd5pK95tNZkr2vzb+htvC9YxcpftM1k9G7cvM5W02d9vLYjK/B5RcqcY2i0nBu1rZtbLrvZ9ll82TvBuH/AA1pvaObl3l1v5f8nC/yOvL0+u+HBMsOzMq541KTi4ypP57rqnv9I2+vqTmFqxVuVtv+Lpa97N99Gt9SDg25cyX+PV6bafUyMyvlyaaJy7Ja3O/bbOmmwUMTG7bg1e19erWut99PoKnEIJpZJu/7trb+vv6amsqGezakmm9n+8mreVt/UrjBP8LlF8usu6ybbbK5uzqnnjYyssk7O3Vfibvu9LWv6SRRDGRbSyVVdXV2vxys+vZJ+jIRUop/I1qm+eTUrpQs1fayT9iqNZZdVO1rby0T5b/RN27Mbb0TWMxsErtT2z8qvo5ZbWvq9NiPxcKairzkkk9ZKMtYStrfq73uYUa97O80rpre2zjHbtbN7lirWS1zPRRyrolHRLXpd3N2f1PatD54qVGfzRlduNk2m1e99Uk29fluiM4twdSi26e7qSk6Ti7ysnJpdlZO3nfrYyXiG3Z5G9pOyV7Wc3fz2PKcEndWTe+WTt2s1fZR0sVOSxGX8dqNTBVcPP4lGc6E3rFwzRlrd6v8V5X303Nn4Z9o+IpPLiqKrx1tKi0qnksvyz6q/Lsu+ivnle+b8T5nmvbROV+tra+juRWKw6vrSVlaLypx0S1f7ttfPVeZfeZe3O8WWPp07gHinC41J0avNa7hUThUX9EtWvNXRNHA6uDgtXdSVstnrHl3T6Na2fT8j3C47ErNSWIrOlfmhOrUcejtq/l6W2et9zOk+na/sdT8R+OMPhZOjC+Jxeyo0NWn/Mn8tNeuvZM0/in3nFxz46paF8yoUXlow7ZutRrvLS6uktiO4bONF6UlnnmbyL5bb6bJ+SsYXEOIVsZUjhcP/rT2jeS07yaTcV52srkzG78evpbNMHFRni6ywOE1rSTbyxvkirKU5XaSSvu2t+r0O1eEfDtLh+GhhqS25py1vUm/mk7t7swfAfhGnw+k3kSxNW0q887qNtLSKqOMbxW9rJXb0NoGV23GaAASoAAAiPFXCvvWGqUV8ztKF9nKLuk/J7e5LgDgfEOAfFo1KErxeyaWsGt1OGjJfwrQq0oSjUnTkm1kdKTaioQUFF3s1K0U3c6V4g8OwxKzxtCutpW0l/DO26890abi+DulK1WLpz6ScrwfbLP+z1PJlxZb1+PTeSZY/wCrHEeGfHUpTacmrbWWlvpsVcPounHLdxkrZ03mjJbZl08voZeErpReaSclqrbt7rUzsBhITTva7u1v+R0wmr4c85vHyhsY8qmlPNC6nHvF9V+pn4SryqN3bfp1Xf0KqlOEflgla93J391roYNSveXK9PbrfaxOeOF5Jnfci+KZdLjPSWpU09evr9CqS9e2hhwxsoxSlG3+a6//AALEt9H06nWWOd2zUvOXXp3K5O++Yjfjy7S9nfr39D2eI63kt7fUWw8smout3bXp5Jf9lmrWumszXRaXtmWXr2s2W5Yvfmk99o+9v7FE8Y0nfNbXZJ7DapVSqX3e93t3jlX6XMbEtayvpouuv4f11KZ15O6vLR6Pp0en6FFTNrF3tfsvy9jNrl0xK8mtHb8vf87GPCvK9m/XzvuZlWm7u79c0ezLDprfTr032N3pUytIY6on06d+1v8AszaWN6SSd+/Z6P6nmA4PUrN5I2T6yVkv+TYsL4Fi9atSTf8ADp9OpktvpOWU/UCowlvbbWyXbzIvF4WN0r6eT8tP0OlYLwlhKat8JTfV1W5t/XRexj8U8H0anNRjGlUXk3B+Tj09V+ZvWufeVzDHQbeaF7R33sr9+1zafsbjRUcQ3NPGOdpxbeaNNJZMqaXLdu7V1frpYvPhqp3pVIZZ791Nd73s1cgeO8AjZVaEnQxlJqdOrFONrXzZrPVO+v01O3HlMsbi4ckuOXZ2IGm+AvHNHHRVCpNRx0I/tKbunO2jnDRKSe7SvY3IlQAAAAAAAAUVaUZpxlFSi9GpJNP1T3KymUvIDWOI+CqUubDydGX7ts1N/wBLd4+z9iB4hgcZh4SUoOUbO0qF5pe1sy9bG918XKO0GyKxPHasdqEmZr43e/bnUOKtNrVResldqz6tLayuXKeJUpPXTva1/Nrv5k9xSoq93PBWk73lC8ZO+97aP3uQVXhtVaQjK3RTi/1Wj+nU558e3XDluKvEZJK12n3g+uxgqVZPSrJpdKq137rUyHg663oyfoXaMqkd6NVX/gfe+jtoyMeKY+lZcvbzWVRi3G0mr2esW7adv86lzK9dZK1+qe66O+hjqq1ooTW6t8OWl32tsUyqzly5ZpN3f/j1dPR2OniOc3V+pPXRvW3S1r/5csuptZNbavfa1vMv/cm1a9V+TpNre9tWiinw6ba5Kj2V3Hs9OpntXpZ+8JNX126tvsti5hpObShBzemkIyb/ACNg4VwWjdOdCcntzyaj/wCqNuwcYxVoU1BdopJfkbME3NpsPDmIqxTyqk/5ktX7Rv8AmZ3D/BuX/VnFve8U2/ZuyX0ZtyBXSM730s4bCxpq0V7vVv3LwBSAAAYHGOE08TDJO8ZLWE4O06b7xf8AZ3T6pmo8U4dWoq1aKqUltVpxei/mQ/D66rzV7G+gRl8uB8VrVeH4ini8PCFRKSeSVKFRSvo3TlbNCdm1eLW/XY7hwniNPE0oVqTbhJX1TjKL6xlFpNNPSzITjfgjD4lSSvTzfNGKTpt9/hvZ/wC2xi+B/D+NwEp0a2IjiMHvRzTk6lLys4Xt5Zml0RWVl8sxlnhuIAJUAAAAAAAAHlj0AeZV2PMi7IqAFORdkMi7IqAFOVdhkXZFQApyLsj3Kux6APLHoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf/Z",
              width: 90,
              height: 90),
          SizedBox(height: 30),
          Column(
            children: [
              Text(
                "Fishes",
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              const Text('From Sea'),
              const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
