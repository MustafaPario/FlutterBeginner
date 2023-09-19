import 'package:flutter/material.dart';

class SpecialBurger extends StatelessWidget {
  SpecialBurger({super.key});

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "JAG Burger",
      "price": "\$110",
      "images":
          "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGCBUVExcTExUYGBcZGRcaFxoaGRcXGRcYGhoZGhkZGRkaHysjGh8oHxcXJDUkKCwuMzIyGSE3PDkxOysxMi4BCwsLDw4PHRERHTMoIygxMTMyMTExMTEzOjkxMTExMTExMTEzMzEzMzEzMS4xMTExMTExMTExMTExMTExMzExMf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAIDBQYBB//EAEMQAAIBAgQEAwUFBAoBBAMAAAECAwARBBIhMQUTQVEGImEycYGRoRRCscHRUmLh8AcVIzNDcoKSovGyFmNzwggkg//EABoBAAIDAQEAAAAAAAAAAAAAAAABAgMEBQb/xAAwEQACAgEDAwEGBgIDAAAAAAAAAQIRAxIhMQRBURMiMmGBkaEUUnGx0fAFwRUj4f/aAAwDAQACEQMRAD8A8/5lQTvUnLNJojWdUjY02RQPrRIlqIRV3IabaEotEnNpcyo8hpZDQDTJllFOEooYoaY5IpVYaqDhIK7nFAo5qUUmiSkEmQU0yChjeuUqJ6gnmCo3baotakiiJqUVuQnLYt+FkaVbZh3qlwsZFEljV6MjDy4ppcVXFzXM5pgWOaleq8OaTSWoAPvXQarRLS5hoAs70r1XCU1LhszuqA+0QLk2A7knoBvek3StgGA1Biz5aN8OxGeeKC2ZRISxA1ZNLg+hy/8AKovF6n7XKqjdyVUb2PS3vockmVLJ7Wl8lSg1o5arkJvRBmNSLQmlQnONKmBXUqh5prvNrFRutEtdAqETU7m0UO0S2rtqh51dE1ArRIRQ2IqVpaGmfWpRITodANaJtQsD0RnpSHCqHEVy1czVzPUSzYcFqywMQ7VWxNrVtg3FW40VZGqDliHakYl7UznClzxVxkE0S1GYh2rrTCuCQUwFyRUGKjGlE8wUPi5BQBFDECaKOHFDYdxejOYO9AEP2cV1cOO9tD/1UhcVovBnA1xDGWQ2ijN3JtkNhcqxzC24PawN+xTkoq2K67BX9G2CUF5Cvmv5WudAAbi3qba+lVni0JHjVlNmCuj3s3myG5S3ZtjevQuDDBPmXCSxtl9pY3Vso72B0HrWS8VRvJiHhwuFjkMduZLNnyZiA2RApGwI199YcmRb3sUQ6XLLJe189zDyAOxcW8xJsNhck2FcMVaTjfClCBlQRuqgyRr7B0BYobC9id6z7Pc3Jue9acGaOSNrb4GzJiljdSI+TSp96VWlZScuopkNE5qHxFZkbJcEcSm9TiM0yDeiAabYo8EnDMAZZUiBC52C3Ow9a2OM8DxR4WeUSO8saZx7KqQDrpvtfrWRwU+SRH/ZZW+RBr2XBoJC8Z2kjZfmP41VOTUkTpUzw8xmozFRcqFSVO6kg+8Gx/CmVOxaUQiO1Oy1JelRYaUR5a5lNS3qbDx3NNbieyFhYDRrKVFFYWK1LGdKviqM05WBoxvT8pqTDb1bcEjVsRCrAFWliDA7EFwCD8KmQKXKaVjXrPHvDcKR4yRYY7clWj8o8kiiQNl7bIfeapcb4HRIpLT3lijEjrk8ljn0Bvv/AGb/AE0F6BHnpvUcik165H4WwiT4cRhSXjkYrIjSK4AjOezMMpBYafv+lVeF8FxyF3eTliSeaOJUS6jI8g1BOg8jWHQAa0AecRoRUutegYPwOhQtLMVKy8shUzAkuEUjXS+Ye69Ni8EIHlDzERxyRxqQl2ZpBGRcX0tzFHz2oAwBJr0zwtw6ObhaQSE5ZGLyWNi1pL2Pp5QK7gvC0UMWNSREkZELRuVGYAxMRbsQR9KzvBsSzQNArlGGqkbjW97HQ69Dp33rD1zksaa7NX/Jo6aCnOu/Y3fCuFYOFw8EC8xQVDIouAdCC2gqzmgkf7qIOt7sfpavKZ/G3E4m5LjDxn7snLazAdVJYrr7qreIYnGYkhMRipJA3+GjCzA/+3HofiKSx4dO/tL7GzF0GfK9VpLy2bDjHEYvtKwRSJKQrGXLYhDdQi5gbXN3uPTp187xa5XdRsrMB7gSB+FaPhHDVwgeVrBtCygghbaRx3GhYm5Ntr26VRNFfU6nr6mjpIx1ycFUdl/JV1nsqMG7avcDzGu0TyRSrobGHcn4pwFIlzAsfiP0rPPATtevTOJcNBUi3415txKRopGXsa5fTdTHN7rNuTG4qwcIynWniQ0g5cXNcyVtooTaHc2vYfCWMzw4aX91Q3vHlNeOZa9I/o4mzYUp1jkNvjZh+JqnMqVluOVujK+OoOVjsQlrDmFh7nAf/wCxqi51aX+kvFibGswXKVREfW92Fzf5MB8KybLrVkUmrIOTToJElLmGlBFUnJpbE1ZyNyascI3pUeEwlWC4Y1bCKKck3wPXEWofFz1J9nNJsMTUyoHw8+tWvAsYq4iFnIVVliLE7AB1JJ9AKrhhTVj4awYbFQK6hlMsYZWAIYFhcEHcUxHovGvFWGkgxsfOQ6MsVm/vFaFD5e5zlx8KlxXG8GsUyRYiARth7RxKVUh7S5r6bsDGLHXy+upPF/DeFWHEuMLCLROUIjjBUiNtVsPKb2qDh3hfDNw9FMERlbDjz8tM+do/azWvcE70CI8Nx7CGTCS/aYwEikR1ZrMpdYyLg7W5ZHxFc4V4gwjKA2JiQx4rESEOwXOjSTlSl/aBEinT1p/hvw5hpeHwFoIs7xRln5aZydCSWtfX86k4vwHCLicGq4WEK7yhwIowGAhdgGFtbEA69RQALH4lwrxMecik4tHCscrZFmjOcg6gZVLa9KfHxvB87EyieFZDJFlkYg3iCRBgh67SDTra9c8XcAwixK64eKNlngVcqqodWlRWBVbBgVL6H9mrR/DuD5kg+ywWEaEDlR2BJkuRpodB8hQMreI+IcIRjLYiM54gqWYeduW4svc3IHxry+DE5SCDYjrXrHh7w/hHwmGLYSF2eKIu5jTNcxgli1rkk/jQ/hXw3hY45HEUU155FUsUkyxiTIACbi4UEnqSLHWk0mqYJtboxEXHFF1Zsy98gZD65JBp8qU/HoUUgNI1/uokcKn0YoBcfA1tuDcBwZxmJUQRumSB1V4wRG7GYOEVx5QcinTT5UzgHCsPK2KaTh0SMrKFiZIWt/ZqwAIFhmvfTvWT8Diu0q+F7Gr8Zlrd2/NHmOM4o0pANlQeyi7D19T60wuK0n9K/CoMPPHyEWPOhLomighrK2UezfUaaeX31j9a1RioqorYzuTk7YVnFKhaVSEHR+M5G8uTMT+zrVVjsHPI5JiZb662H871fYDCpGLKtrgdrn3mjY8zEEbd9fwFr1wVlxYm3jjR3I9M5RqcjO4Dw9K1rlU/zXB+VGSeGQo80/m00WN3GvqOtaZNrG3y1+tD43CxmxyA2vrqNT2trff51FddOUua/RE/wcEuDNyeHjY5JAWH3GRo2P8Alvv/ABrV/wBHOEkwztzbBGyHpYEXvc37H6VQyqUN4o1F9yAdz19T6++uyYWaQC7kAgX3A+IvV34iTVSlt8f/AAh+Egt0tx3jXhfNx0rQOjiQhlUGx1Vb20sRcHWqYeGMUT/dje3trv23q5j4AdM7t6eY6eg10/hR2H4AAb5pNiD5yb33BBofXKOyl9iC6FPlfcoE8O4hQSyKLb+ZTt7qYvDZQdUJt2s34VdyeHspzLErEk3Luy/WzHtUJ4PMBfkIot9yZ1Kne4NrHbXS96nDqlLfUvsv9hLpktt/3BoIio1Uj3gipc1WGCwUyFQ2d111ORivoxuCdt7HpReK4VzB+yb+0AoPrcbEVZ/yEItKX1RTP/HyauL+TKS9K9GY7g7qLob23v8AzYGqV5yNDvW3Fmx5FcXZgy4Z43UkHE0d4dlVcVAzEKqyIWJNgAGFyT0FUIxBNLnGrio9r4rxvDvFiUGIiOaNgg5i6kowsNe9Epx7CK6RiaLSNvNzFyqFMYynXc3uP8prw0TGu880BR7RwjjOFihhiE8Vluh866BQ1iddB5R8xQuO4/hnmwTmeLymRn86+TNA482vl1NteteQ/aDQ80hvQFHs3iTj+FGHfLiI5WMkbqqMHYZZEawAJ2Ck30qxxvHcNGrTmZCHiQolxnYeYrZL5jfP2rw/huJCOGdM6i5yk2DGxyhv3b2uOouNN6dicY7szubsxuT3P5e7pQFHsnCuPYcQYUGeFSEQOodVC/2R8pW+gDWFj6VDwDjeHyTRieOMriJXBLKAyNKZLpfRgQSNK8qwGFaQBncRozZEZgzGR7gZY0UXaxIudhfe9gRJ3ZGZGtdWZTbUXUkGx6jSgD26PiuEEzz/AGiIB44478xcpMbSNYG+45ov7xVTwfHwwrig2NSV3syyF0DMeXlAFjrbKBpXmfEZssUEfXI0rehlby/OOOJv9QoEz0Abn+lfGwyywtE8clkcMUZWt5lsCR8frWKIFQtiKYMRQARYUqg59doAvorkk/P46fHfajY4yp2OoB+BFx+NN4bHGuaWa5RbAAaEuenwH41Z4LiMLG3Lyg7G9zXnFi1Lmj0jyU+CviQlvMbC+w1JH5Hb5091vYCw01726fnVrjcOo1X0Pv8AjQCFQ1idW29SL6X+Gne/WoTxNOiyM01YyGEDcUTHbah84706B79fw/nvWaUGyaZMbNZT964sDrva1+htr7qild1ty7lugOu3woiFwNNPeP41NHbf+fh86sjBOiOqhjJIBqLkBdrG5PS2lunpXMRhjmUPdSyi2xAJ0Klu+q++jo3GUkk2AuSLX8o6etj+FR8SnySRkEFLHW+5uNR06itDxQitSRSsknKgaPh7IQbliGKi3mA0BBcn2fKQb97VYwwNsR9f0+VF4KbMLA2v2OX8NzU8GXLckDXve3/fapTxQnUkVvLNbMpCguVIGvTvp9aznibgmnMjG241J9w/StjjEGl0679jf5npXCl186jW406j0Pe1UY1PBPXF/InNxyQ0yXJ5VDFrUvJFXXiThvKbOo0Js3oelScB4GZdWOUdO9d6HV43jWRul/djjT6acZuK3/goeTXDDVlxjBGGUxk37H0oPMK0RkpJSXBRKLi6ZDya4YKmJrl6kIiENFcOwAkbzkrGoLyMNwgte1/vEkKPVhUV6PkbJhkA3ldmb/JHZUH+5pT8F7UCHQSEs+JICiJQkCDVUdriJVvvkAeS/VkudWqu4Zw7mSBWNkALSN+zGurn320HckDrRkknMWKCJWJFzYC5eVzqQBv5VRR/lPenYx1jQwoQzEgzODcErqsSEbqp1J2ZrHZVNABmBSGXmTTcrM7SKsbsy5FWMCFEy+yL5V5jaKI7btem4Hw7C0LSSYhSEEhldMxSMhbRxklOrlbkAk3AUNqwB4dh1cszkiNAC9vaYk2SNP3mOg7AMelS+IsayoMNopvmkjW+SID2Ih3YXLOx1LMATdKAKbERLmIjZmUW8zKELHqcoJsL7a3tURiNTwGpDQAJkNKiqVOhl/jgRGF7En4nS9MwiMAtx/1RU8Nxrtrr+BpmFe4IBBtobEH8K84nsej7hE2MYC1zQL4k6sdbENr6EH+NEuhPTTpQxhO1jUXK2SSoarmp4pKg4eoe6pqFJVu4YGxH4fOrjC8O/a0/KoSg06H6ioiRtRp9bX6b9KlWXT0/IdqmOBA0vv8AGh8RhSDp/PejS0RWSLCcJKQR66aDr/NtKI4jmkgZRbOBdDYDW2u+guLj+dAcOl9fePf8OlWODHcWANJZGmOUU9yv4RjiNDe40I66dKvMFMFCqi2X6C+17n+bVmoFGdipFixAsbjy6fl9assPIQbevfrenr0uhSgpqy6D3HUDe/W2h1B76ioGI1tpfU2NvQfQVzmAbkAnoSNzpb6VDZibDr7qjkn2IRiC8bhEkbKe3XoRYip+Dx5UB9Kgx8mW67lvoLD9KfjZskItudqyylLaPa7LaT3+RmvEuAxEsrSLGSo29wrMmQg2Ner8OkZkUHbY1BxrwjhmUuFs29wetd/oOplkjTVJUcfq8MYytPdnmGauCWrPHcNyEhbntQmK4bJGoZ1IBro648WY3CXghzUZDjkMaxzI7BCxRkdUYBrFlOZGDLcXGxBJ1N7AdEFqXLFTIBD8TyqUgTlBhZmLcyVwd1MlgAp7Iq363oEOam5YrnLFAEmC4lJGG5b5c1r6KSCuYAqSLqwDNqLHzGq+RjejOWKaYhQBDE5p/MNP5VLlUxjOYaVO5dKgDZYfCs5IV2EaC1r7noBfW1d4fwPllXQhQCMxBy+W4Juet7a1Y+E4C6yxlcojbKpuSrC7ai/Xy/WrlI9LOAUXYm2lvTeuE5K6Ow5mJfCzAyvIXCi5VszAuLm2gOnehfsshJY5lAsWLs1rHUjK2mo/Gtm+OR2yQspI+dvQtWR8U4jFOxwsyx5A2ZGGYMVNyPOOhsbgjoe1Sxe06RKMZSdILl+z5xGuJ9oqrBDezLfKbjexbVfztWd4nwqXCzNEsrvmVsgUufvXBGpudH+e+t6u+J+A5VQSKCy5BdVYZ0NttRYrvtVr4awskRtMGktojhwGVTqUPcXt16VbOePArk1uTUU1ez/Q82n4TMhIN1OWxu1rAm+VjsL72Pen4F8WA0UbuwOXMqtmbym4ym9xr+za9etY0x5MpRUYm4Y217jU3bS9YnHyJh5eZAseYaEEXC9iF6H1qGPrVN6aFHDq3EkWOEQjKy6/4hjkzgCxy5ran61JgfDvEGtHFJJbdldpEAv/AJ/ftfvRvDvHTLGwljuRYjLpvcXsT6Ab/eq84JxfHSOCmECqx/vGfS3Rrb2t2q3bx+wmpxTtK/LZWf8Ap3H4NGmZI5AouRGzczKfashUqxFyfa6aUVhcUr5SeZE1jbPG6Bu/m1QnfrcelbHiXF44PLK4LFbnTfYE5ei3PXYUNxLHnVJFiERUF7u9yhHSyhbbfeNx0p5OnjLdIpjkyUm1z34AY+CRtEJlAZ1NxfXzbaHcaHeivDmIjkSxXKyMVPlJy2NrEiicDissCCAKwF8yg6gC/SjcFiklRhlK6gG4y+Y9j3/hVKxpJJLeu62IznKnfF/NGb4lwwie/wBxtR1t3FdxkILBdLCtFNGt7b33a2gYddNjrWX41KEmKZte1cvq8EoXKuTVgyOdR+BaYLDjS5ojjyDkm29qoXmIdVVtDVjxJyYtOgqfTdWsWNqKIZencpK2VOC4atgx9qhvFeHeSMIsd9tqL4Y5Ye1aiMFK7Fhe9vrVEepnr1Pmy2WLSnFHneIwrpoUYfA0KZBXp7yAaugpn9W4ab2o1+VdXF/l1spRZz8nRvmLPM+YKWcd61fi7wtHGoeE27i9Zg8PautjzwyR1IxyxSi6IS4pZxTmwDVH9iep615I6WOz0s9IYNqacI1PWg0s7mFdpv2Rq5RrQaWet8GkUSyIpWzMWy9cxNyR33PzpnibiaojRqBc3BNxdR10Feef17IruMu5BU5dbEAg5iddTVTxLEyvmf13Nydb7WsNfW/vrjehOa7KzpuUVK+TYYEXZOTq+byqAWPl3NhsN/kas8eFafmyBg2RUKhbKbEkbjUjMRf9K894Hx2XCSJOpVyjaqRowIykXG25191a7G/0nPIoU4NL+sxYEjrbljuetP8ABzjFpSr/AGSXVVK1E3nE8dykUEnKyWB0176nbQjoax3FOM5VOUqo79fQfnV5/WEWNw15EeONg5u1lZMt/MrAkD2SdzcV55h5EclIpCbFigf2n6D2huR0FZ59OpyuTtLt4J4ckYLjcsl42X8ti1yPaF7kdqHn4Skh5ruynoARYW6ag0sJwp7q6EgEgOCdBaw2tcGw+lH4nAm1s3XWoTnDG0oOi9XNW0N4Z4aU5HimTOdVDhWvrsVItoQN/SruPxTKhZCYmdRbyuIwSP2Q4Ob3A3NtKpMNgSetrdqhxvBmjZWDh1Oum4PYj0q2PUxe18EJ4m37RdcZgixcnORyk+Vc8bi4IXUXX39du+1D4fxbYjnIojs0MkY2VgBlOQ6hbXtqbZWFV8vD5JLSq2UpoNCzObaLYd9Bf19KpML5pJUksZGGXzgZbga+Uj27j6mteDPrTV8F0IKUHCSuuDZw8ZjhPOzZNVCW8ym4bMbjfcDXsLk1qOEcSixUDJcBibNbS5715HBwuXGTRwQRCPIv9o1rAKG0Z9Tdug7295r0bBYaHBBwud5EXcbsSLHKNhb86nkbTT1fAy5FGT0x5Vbmh4HwP7OroJGdWbMufUq1tdeo2rLf0pYCRQmKjX2FyuRve+hI7Dv61f4bxDzI7AOj5PacKwU92Cn4/GrDhgMuGHMKsGTX/wCwN+xvSvHl2Tsz3lxz1z5s8d4fxOUMJG1ArZcM46kq5b2NtaouN8CGGkKpOpjckhWHnjHa99RQfDosHC3MMjyuDsCbfIWHzrFLovVTql4o3S6iG1plrxLHmK6qCxPYXt+lDcP46w0Cm5oLjPi3PdVRUX11PyGgp3huIyWkYadKnD/HQhH292UZOplJ+yaWWd5FAO1MiDLsTU4YU5WFWrHFLTWxRqd3YPiSzizG4qD7GO1WGYVy4qxbKkRe5XNgx2phwQ7VaE1wgU9TCirOCHamnAr2q1IFKwp6mKkVX2Fe1KrXKKVGphSK8eDISGbmTAXOVf7Pyr0v5b39b1XcS8JWSV1xAKooZVMZBPcMb+6xHetrz/ie1EQJ5bMAeu2m96p9ZplmmzyrhvhfFMEsiLn1s7MCupHmAU32v8daG4j4fxizCABGLWs6linXdiov/wBV7PCqnTS2lxYdNvwrs+FB1QC/0vtVscre9Fcl2syuOw0hwDYeCNr5BHdwVVfIAzDTXS+2l/jWDh8EYtnVXZE0LE5s2XXQFRrfr/GvXUdjcEEEb22N7aetDY7Qai1z9fy3/CsyzTxp0vqXLGpOmZjw5hMUtlxBjkuVAOYq4FmJzHLZ7EKBcXN73rQYjBCxuLi2p0JFra3H861EjM2ny60Xh4yBr67aW+Vc3JeWWpKn8P4NajoXJVLwpb+09uwAH161Yw8MDDKNb6jN7Q91FtGb+lhb39aHUup/nSqvTyRknyEsmpbMevh8g5lYX9CbFTex2317VT8a8OsrNiIpG5thmzFiGUACwGw22tqK0+FxDBbkaG9V+MxJJDA9Rf8ADWtupRgpRTT8FUJTct2jM+G+HzANL5o3a4c3VRo1hfQ2trsOp1qwfhcahnkFzvfM1z1zE7k3q0nxBY3Ogvttmt19aGfzkkAnM22pP86VXPI5u4mmEmudis4HgzlJtoxGUHewzfqPlWq8EpIkHLmBD5pCQegZmYfQ0O2CeOIsozP91RuT0HpVh4SmmkiD4iPlyajKRY2BNtPdat/R45R1Sly6M/V5dcHVVfzPM+I+GZ+bKb3AZrG5Jtc239Kp/svLDB1I9+len8dw0qSPIjIEJGhNtbCq6Uw4hTFOgv3/ADBqMuonCVTVLsyEUpRtbnnPhzg5xmICL7AN2Pp2r17DeHYo1C3tYd6ykPB5cAc+GHNjb/cv61DxbxFiEGaSNgO41FbFng9uSuWCc3ceDWY3h0SKSD9aoS9ZXE+KGI2NVOJ8QyNoNKbWrsHoSjtI36Sg7GniSqXw+rcsMTcmrO5qBCUdLoI5lIPQ+Y0g5oIhBakGqHNXQ9MCbNSqLPSoAvosXGeg+FTLil0sdPh9b60Ri0wzC7Rt8Ea//HWqvEcOwp8obEpf9lJT9WQ1W+mmuGmCywfKaLFP3bHv0O+9FRyW9bfjVH9iyrljxMi2G8kDm/vby0oIpsthPC++pzx/TzUvSyR4X3Bzg+5dlx7XU203sagnjzW9fwoCGPFC/lhbtaVtfnHXZJccBpho2P8A8yfnak8U5qpIeuMeGHQYZRuPyqZoRprp8KEwyYo7xqpt1ysB6XWX62pGLFtoYlGu4kS3w6/So+lKKpRJa03vILRF7ipQqddarF4Zi77RDXrI/wBbJXMThZU/vJYIxa/33Nu+y2FEceX8oSlj/MXC4mPa4+mtVXE4I3bMdMt9QxW9xbUDf4+/eq7azHEgg2tlw0rA3NhZs9tTTcW8JFnxc8d9yIRH6byIRTlizTVNJCjPHF2mw9WgB1uBZdc1wb36Ha2nzqw+0wRi+ZQo1JJH8jrWd4Z4awUhGTHTSfu8yID5cofjWhi8MRLbK8lwCAW5bkA72JS4Pre9WQ6SUe6ITzxfkquMcUeVozgxcK4ZmyllKDdRbqbnXpWhlmHKMjAoFGYlvLltvQUPheIMHzykjUXcnXv2PxFCeJcasYWBScqgFrsCT+yCT8/iKtcPTTlLcjGWtqMUViu2In5pU5bDKp+V7dzamcY4bmGaNSrjbsfSh8NxJkY5SLdBuaB4xxrFKpkADINSQDmUdSynUD1F652WDyytP5HRxprbYuOB8SdG5cwI9DVjxTCIwN7ZSK86HiN3dWcgjuK3XBp+ZC+bUZdPlWbJCWNqMuOz8E5QcXqR5l4vwAjlITY1TwKe1W2NlLO2Y3sSAfQHSieBYDmPmt5RXYxtxgkyycV7zZf8IbLGAR0ozmCpo4BtaugJtcX99RtHOalJtpEAe9dvUsaKdiD8b11oBTtEXFp0yASCpBT/ALOtcGHotCOUqdyf5tSpAaKGdjYag9bEjbXpTmmYjRn36Mwtpf8ASqjD8RYNlsCOh1696l+2SWte1vT0tVDnO/eZaoR8BWLwkjXtLMNNLSMKDw2FnvYYiW/7wjkF9yAXXXQ3qOXGSGwzDTbXUd6YcQ6i5drDVrEn4gfKmpz/ADMeiPhB802JjBJWKUeqBG+akdPSqv8A9RYYtlnheJhuV/tFHv2b6GnyyEmxYk7m50Nu2vTt7qzfH8KrXYDzettht+tXY8sls2VzxRZucDJFIL4adWFvZVrFfUrvf3iu4mXEIGI81gNO/c3715E3la40YbHqD3B6VdcN8W4qKw5nNUDUS3f/AJXzfWtKyLuUPDLszZ/+pWVsriRT8SPyNqhxWL5+xV7kGxAubXtobE2zH5mhcH41w0mmJhZO5UCVPlo30NW0ODwmJGbDyox7Agke9T5hVlqXBDRJcqh3DUCrlC2sNraantsdalmJABudCTe5ufeRvT8Jg5ojb2l7HUfqKi8aTcvD3UWd/Ko/ePX3AXPvtSkqVjjvJIxfFvEtpWQRo6qQLsrM1wdwwI22+FGcL8YyRkLHGCL7ZpLfUmqROG2FiDmO50Onb31b4PBBFBI2N9bX71leWjZ6KfY1vDPE8j3aQKi29gKWI/1Ei9B4vieHLF35pLG/spa59L/n0qshJMYIG52019221RSwg+ZvZGgG1z1tfYVU8spe8CxRj7pbYTiuDBzgS372H4BquYcXCwOVrXF7FWB13021rGNCSc7eUdr/AMfpVpwp9dBp3+FJ5KWyQ9F92ed8TwaCeTl+QCRwFGwAY6CtFwXxFyYGitmYggHbSs/jmvLKenMk/wDM01e++tgO5O1TnjWRJSOlpi1RPh4c8gUe0d/QVsMLCkMfmIAAuSfrQXAeHrEuY+0dz+VQ+KuI8uNpBvGLre1jIxAjFjvbzSevKsdCamlqkooyZ8qd+EB8f8SLG+QsQxv/AGd2QILXHNZVLKT+wozai7Ja1Z/F+JRn8rAqCRcYeHUWNiDNzHPmtudr9auf6EsNFicXiIMTGkokgZruquyuGUZlZtVNnbUa3tUnCvBES4fC82OWbF4xnMcaOsaxQpq8hLCzNlIIBIBzAdDfdHHGKpI42TPOT3fyXBWYTxKoGYEtlGoVOTIBcZiOXmiYdfMg0vqDa+u4FxZJEVs4ZW9l7ZdR7SOtzkcaHKSdDcFhrVVwYtgOGE4dM+Kxs8mHDFblIkblkZdRcsRptdxvYVm+H2wuPlwiyZ4zK0OciwzK5WOS1/utv3UuNmqGTEpLbkni6iSemTtHpwWuswGlCYPFhkUkEGwuDuD1BqUy+tYaNclTomvSqLmCuUUI5lGbfQ7aVPI9tyvvvY/WoEfz/qPzFTM99LkfCqXyXIaEv1H0/KpkUdy34fztXL2tfXbX4a00zDvf3C/4e+gZDKoHk1tqVPUb3120uPn76r8YAR5rdfj67+750Xi7MLHQj2T1U23+P11HWq6SQkkMLEWt0Bv1H896kh0Z7ikNjmsb2quB9K0OKiDHUgD1NV8kaKbl10Hcev12q6LE4g0aH8f4mjoIbEZQc1tOhH5ilDiIF1aRPcGFuttqIj4vhhpzASdNMxsPSwoersiS0+S94TxvFRAASFlFwQ/9oCewJ8w+BorimPkxDKzgLlWwAuQL6s2vfQfCs/8A13Bv5jbQDltb6jWnx+Ik2EcrH/KRf1NyLUm5tVuHpRu0ty3giCjOQCenc0piLFpGuBewtuT+VUreJGO2Hc9rso/Oo24zKxH/AOsAADu4Jv8AAfzeoenL+0WKMn2f0ZeljkUkW10Gg07D4UxX1XPuLnpYDoNPxqpfjj38yKD21P1sKEk4i5Ps6WA+HcC2m9L05D9KRdM2YltMvQb39wOvarrhSAG53OwttWHfHuCpUkW9Li/f1pRcckRzaY5uuga3XUWI+dDxya2F6UlyBSkF5L6AM5/5GrXw9w0uRKRZR7A/OgOGcPMzdeWDdiTYmttCAqhVSwAAGq7fOrpOlRZmyaVpXJHa3Wsj/SF/cv8A/Lh7/wCzE1tMjfs/+NqpvE2BDxMrWUOpUsdFVgQyObbAMoBPRWc9KeJpTTZz5JzhKK5r9twD/wDH+IrjJ8Q3liiw78xzsuZlIv8ABHP+k0VhPG8scuElfBTBoF5LmzWaCRxlyKVGWQ5FAubGxHXTPHxLiGLYHGyciEl/tAiijjeR1Ulc5RPMSyqOxvr3F4PEGGUk/bGcmTomXInMjC5c0JupRAzD90AWua05ssoNaVf9/Q5yinyy34ZxvCQxSSSYieAOcQkSNhXz4d3dsziTKVMje0VDWHlG63rzrj3BEj5c+ExH2iGSQor5GidJVytkdW62ZSGGh12tWh4vxPBzwct8UwsFZQqWuyxyFVb+zGQBmKBQWtcEs17rBgMa2JeNooVgwmGYmCJbsHxBAKtI51kbyqzE7ImUWLC7xZHKLclVDUG5KMd7NdhVuZLH/Fl+RkYr9CKmykbmmYeIxoqBdAAO5Nh1PepR7m92Vqxvd2dGTV7HNaVOy/uH/lSpETFRYviS7Jn+H8BXTxbiCjWFvhGW/Bq3axjpf510R+pFP1F+VDSfk88m45ifv/aF9AgUf+JNBy8ff/3f9UjD6aV6acOOpPyqN8Eh3APwX9KayR8E9c1xX0PMT4gfsx//AKE/nTH4yTq0RPv/AOjXos/CYjvGv+0CgpfDuHP+Go9RpU1PH4D1cnn7Iwn9aRn2oR8l/NalTiUHSO3wX8iK1kvhOI+yXHuY2oKfwaOknzCn8qlrgxrNkXj6FGOKQ/st8B/GnrxaFdlPyo2bwa3RkP8ApI/A0M/haZdlQ/62H5U/+t9yX4nJ8PoyH+vkH3T8qZivENx5FIJ3Jp7+H5x/hv8A6WDfjah5OFSjcTD/AEX/AANNKAPqMzXK/v6kH9cTftW+F6Iw3Gm++uYel1I+N6EfCkatzv8AYRSCra2Y3trmFvxFScY+CGPLl1e99y4h4uLbG/UaXt0NjpVgsqtHzCwsTZbABr9iKymOhZVV73HS24662o3gOIdmCgFwd11PxU9DVcsaq0a8XV1PRMsWZybaKPfdvn0+FWPC+DltSLA9hv8ACrDAcMI8zgkjYWuPQnuf0q9gQ9QT8xVTl4DNnXEfqRYbCCNbKPkCKJRG7W9+b8qegt90/X9Kezjt/Pyqoxt2DSIw+7qewb9a5JC3VW9d/wAzRBb3/SmDvpf4fpUiJm+NeHFmADIfKLIy2EiLbRdfK6DorEW2DKNKy0vhBr2WZLfvpMrD3hEdfkxr0897VzW21XRzyiqIyx45O5Lf4HnnDfB4uDIzSW3WNWjX/VJIMw+EZv3G9a/h+CEYUZbZRlRVU5UXchQSdzqSSSdCSasrkbAW92tcHuHyt+tKWWUuRxjCHur5vkaA3S/1H4GmgtrqfmfzvT2T90fQ0svoD8BVYEHNfuPl/ClU9/3R8jSoAs32pL0rtKqyRMNqHl3rlKgERTVA29KlTQyWLamPvSpUyIkp0nSlSoGQPvXMTtSpVMiV2I2qi4jsaVKrYkFycwn9z8aK4D/en3UqVN8MlL3y9f8ASi467SrMWDoNzUsu1dpUhHF2qKbcUqVMBS1CfZHvpUqkQEu3wpPvSpUDY6GnNSpUAdpUqVIZ/9k=",
    },
    {
      "title": "Smash Burger",
      "price": "\$100",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN9Sq0f0ED1BSfRvT_oFgmVtnyqNMiG5rWmw&usqp=CAU",
    },
    {
      "title": "Grilled Burger",
      "price": "\$114",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrk7xaOxZcqm--CVd86_WNUDIZSgaX7rbRA&usqp=CAU",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 24, top: 24, right: 50, left: 50),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 50.0,
            mainAxisSpacing: 20.0,
            mainAxisExtent: 220,
          ),
          itemCount: gridMap.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 233, 239),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    child: Image.network(
                      "${gridMap.elementAt(index)['images']}",
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: Image.asset("assets/images/plus.png"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['price']}",
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${gridMap.elementAt(index)['title']}",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 86, 85, 85)),
                      ),
                    ],
                  )
                ],
              ),
            );
            ;
          },
        ),
      ),
    );
  }
}
