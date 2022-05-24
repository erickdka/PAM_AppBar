import 'package:flutter/material.dart';
import 'Song.dart';
import 'Gallery.dart';
import 'Playlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Green Day",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGBxQTExQUFBQWGBYZGhkaGhgZGhkWHBkZGhgfGhkaHxoaHysiHBwpIRoZJDQjKCwuMTExGSE3PDcvOyswMS4BCwsLDw4PHRERHDEoISkwMDMwMjAwMDAyMzAwMDAwMDEwMDAwMDEwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAABQQGAgMHAQj/xABEEAACAQIEAgcFBQYFAwQDAAABAhEAAwQSITEFQQYTIlFhcZEHMoGh8BRCscHRFiMzUlRicpKi4fEVgrIkY6PCNENT/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAIDBAEFBv/EADARAAICAQQBAgUCBQUAAAAAAAABAhEDBBIhMUETUQUiMqGxFXFhgcHR8BQjNHLh/9oADAMBAAIRAxEAPwDsVFFQL90sSAwUAxvBPpQE+iltsuuoYMBuAZ08jTBGkA9+tAZUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUsuTbZhrrqIMUzrFlB0IB86AVvcL6AEnxg+h3pnaSAB3CKEtgbADyrOgCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCqXbvcQ/6m2GOMt9UttMQf/TrJRrzJ1U59DlX3/HarpUMcMtC+cTl/fG2LRaT/AAw5cLlmPeJMxOtAUzj/AE5u2DxRAl5mskdS6WGe3bmwj/vHAyjtMT2uVWA8Wu/bcJZkZLmGu3HECSyG0FM8h220qbe4BYdcSrJIxP8AGGZu32Bb7+z2VA0jato4Va623dy/vLdtraNLaI2UsImD7i6nXSgKpwXpDimx/VYi51atdvIlpsOwS4iSbZs4lSQ7wJYN4gAEU96Y8SuWLNt7ZAZr+HtmQD2Ll1Uca+BOtGE6JYW1eF9LbBwzuq9ZcKI9yc7pbLZEYyZIHM0w4lw63fVUurmVXRwJK9tGDKdDyIBigKn0u6QYmxio6zqcMq2iLnUG/aZmYi4Lzqc1kAZcu0yTNXekfFeiGFxF03bttizBRcC3HRboQyguIrBbgH9wPdtTygCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigCiiigKt036d2uHlLXVvexFzVLNvcgmAWMEgEggQCTBgaUm4b7U2W/bs4/A3cH1hAS45JWSY7WZFIWSBImJEwNaW3cQmH6Tu+KIVbllRYd9FUm2iCCdFkrdXzbxqJ7QelfEMK6m9b4bcTrHNhSpvXFUTluFc/Z7MAsOZodOwRRXHuI8HuY/j+Nw32m9atC3bd+rYiVW1YGUCYEs4O3Kld+3f4hi8f1lm/fNh2tWxbxNvDjDqjOivkuHU9gEnaQ076Dh3WiuE8R4vj7mH4XhL7O4uvczdXftBsQqsotqb4Yps0akzpMmKl8Pw+Kwo4nZCXLOH+xXX6h8TavvauBJRwEbOoPa1gbiSYFAdrilHS7jf2LCXsT1fWdWFOTNkzS4X3oMe9O3KuKcQ4Zcw/C8HxRMViOvNzKAbhKIoNzKFG4/hiZJBzNpXVfaw08IxR70tn/AOVKHSu4f2xsAly/w2/bsvEXVJdSDsQWtorDybWujcOxtu9bS7bYMjqGVhsVO3l5Vz+7xrCp0dS3du2yzYMItvMpZrhtQgC7yGgzGkTyqr4VR/0zheGvPiib1y86YaxlU3kN2VzszDKupI39+Y0kAdxivIrhXBeEX744pgbfXWzZCXbNlrxuNbdSZt50MHOpKkDScs6rNT+j/Hb/ABrE8NskutvD2+txJBK9Y6tlExuGypp/7lzuocOzUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUUUAUUA0UAUVirgzBBgwfAxMehHrWVAJ+k3RXC49AmJth8s5WBKuk75WGoBgSNjA0pBhvZBwxEZOpdsxHaZ2zCOQKxA79Nau9FAKcL0asW8Xdxqqwv3UFt2zEgqAgjLsP4aa+FKekns1wGNvG/dtsLhjMyMUzxp2htOg1EGrZRQFex/QXA3cLbwjWALNv+GFJDITuweZJMmZmec1G4N7OcBhrd+3btMeuRrdx2cs5Rt1DfdB8ImBOwq1UUBXsZ0Gwd3CWsE6MbFtsyLnYEHtbtMn32pnxrhFrE2Hw94E2nADAEqYUhhqNRqBU6igKXhPZLwu24fqGcgzDu7KfNZhh4HSm/SbodhccLQuqwNr+G9tjbZBpoCOXZGnKNIp7RQFa4Z0Uw/Dhfv4Ow7Xmtxkzs3WMolRLmAS25nmTS/2S9GLuEs3b2JTLicRcZ7g7PZUE5V7JI1Jd9P5wOVXWigCiiigCiiigCivGcDc/UT+ArRgMfavoLlq4lxDsyMGHqOfhQEiiiigCiiigCg1w39sMd/U3fVf0pTxzpXxEox+1XAkawxk+BEhY+Fcs0z0s4q7O1Y3pfh7N9LF64lovbe4GchQCh7SkzAMSd4MGCaUcX9qeBsMFN+3dmO1ZDXAs/wA0dmPJifCvn7H8dxF62lq7euOie4rHNl32nUb/AIdwqPhsSV1gEbEETofKPxqSoys7ti/a3hrdy2+ty3ctsWVFbOpXVQQ0HmRmgAzziarFv2334uF7OpByBSAi6mJlcx0K9rNBPITA5w+IEBkYDvUycp0EgnWIPnoe6oJuHX079O7XyHpRoJs670E9o9vDK1zHXHJu5mtqgDZVzktKyId3ZyWI1CjWAoHYsLiUuor22V0YAqykMrA7EEaEV8fqROutXPhHtGxdtEti7cAEKqrkVVUaKFEQANo+dcLIQUnV0fSVFcSHS/G/1Nz/AE/pXv7X43+puf6f0qG9G39Oye6O2VqxV7IjNpoOZIHqASPQ1xj9rsb/AFNz/T+lJOlfTbGG2bJxNwlxDCQOydOQ56iinZDLop44uUmi39KfbQ2HvXLNrD2nKhYfrGZZIkyMinTQRp5iq0Pa9xS8TlFhI94hIA7QP32PdEa8/hRuGcPL3UXvYDw2knyEH0plirKo47Sk3ASon3c5bK0be6B61ZRhssl/2o8UbtC9btxmORbSwQfdnPJ8tdKt3Rj212GW2mMDJcy9u6qymaW0gagRk2B3MxFcgxWNXPdQa21LC33wH7Oo5QSY2mll46nv5+fOjQTPr7CYpLih0YMpAII10IkfKt1fKnRjpVicEx6m66I3vKDofGDpNX7DdMcY6qwxNyCAR7v6VCUqNen0jz3tatHbaK4t+1mN/qbny/Svf2sxv9Tc/wBP6VH1Ea/0rL7r7/2O0UVxf9rMb/U3Pl+lH7WY3+puf6f0p6iH6Tl919/7HaZqlce9p2Ewue2WNy8pgW7YJzAgMGzEBQIO07qRXHOkntBxt7NaGIuBJgwYLQe9QDHhVXax2c2YFpMrzEGJ8d6muTzJw2ScbstvTL2j4nG3A6/u7aJCpAbKzABnDRKtIEGZEeJqN0G6V4jAXTcsspFyDctPOS5Ence63vQRtzkGKTfYXFp/5gVldzGpBju0Poa0CydDJLkSFGp5CNNtCT8K6cPpzod0us4+2xtylxIFy00ZkJ2OmjKeTDQ+G1P6+UeAdIL2FvreR3VsuViDBZTuO4jQH/tFdFsdMMWyhlxLlSJB029KjKe3s16bRvUXsaVeGdporjX7V43+oufL9KKh6qNf6Pm90VXFe7uQOeXQx58vhrVa4tiVeMpaATMsWBPIgkztT7i2PFpCfvEdnxO3y3qpOTt9E1ZEz6zJXyr+Zqisg0bVm6R6fPu862Wrq5SGUEgdk6giTM6bx3HvNSo8+yOxryt128GIOULtOXSe/TYVrYa/W1DpiKzVoIPMGfo1hRXAXbg/EOtSYgjTwNTqrPRW+Q7LIgiY/Q/HbxqzVTJUz6LST9TGm+zG44UFjsASfICao2Jvl3ZzuTP+34CrtxC3Ntx3qw08qoZqUDH8Tb+WPgc8Nwd0qXtAsVWGjXKCDP8AzSx8Q2bNJJPPx+ia7F7GeFp9la6wkscuvID8N6dYr2bYW5e67LB3Zd1au+pzR56w3FNM4PguHPdcKARPMiKZXOh2IU9pYX+aDXfcP0bsW4hFkbGBoO7yqLx20otMYgAVCWR+C2Gni+2fO2MwjWmKtuDFW3o5eDWhE6aHSPTlHlUHpnYLNbcDVtNOeun4inGAw62lVAADGo8efnScrijb8OxuOWT8L+vRJoor2qj3kjyo3FruS05BIOVoI5GNKlVE40k2LgmOyflrRdlea1jlXs/wU3DLC59ZzADSZ7/jE+tTPs5drjsBKgxA31Meg/AeNRuEZ2bIpiQZ8hXZejPQi2tlWu9p3EnmACAYrTKaifIwxuZxr7XcD5zpptOkbR8z61hicWXZiBlzRoNBAG3oa7J0o9miXwGtQpiCIgaVU8V7KcQgOVkLHbXTTvHOfzoskTrwyvjk5/fInSY5T3d1W3ofiJtFdZVvkQIqXf8AZ2bNo3LtyWH3eWvjS7oa0dakahgZ9R9edQyNSi6N/wANjLHqIp+UywzRRFFZaPqKKr0hVjCAhtZCx2gIjU/ER30lSyxIjntOnx/4qycb4aLmZtcwXSO9ZMfGflVcu2mRiraEeeviPCt8Gj43WY5Kd1we4m2Flc0lYiOcmSfrwqJVn4R0e6023fXPrl75XQ7RuR6VExvCmNxkAACl8wWIXIJOvxA9O8Cu2mZdrS5FvDsA964LaCWNZ4/hd2yzC4hGWJ7tdqadH1ezdF2RoSDrO8RpB1n8ateLwueyxujt3JJBB0nZd+QAG24mq5S2suhj3Rvyc2VCdQPCvUtE+HnNMcfhXw7MIBVxoY+PwYfnUG3cCzvr5D5EGrFTKZJp0MOi9tTe15AkeYirfVM4DiMl9DGh0IHj/vFXMmqZ9nu/DWvSf7gRVPxNu2j3BIMscp356yfrzppxHimcm3anLsSOfgPDx5/jeuB8Hw2M4d9nYTdtENlVgGBk5WBP3WEgxzJ5gGuRe1kNdtzR+Xx5Jnsjxs4YryBBHxGtdDRtAa5j0eNzhlzEYdrT3LVtszMhzOtu57l1bcS1vQhokgqTEaC63ek2FtWhcfEWwh2OYTtMQNZ8KhK91mOP0JDa41KeJ4XrAVPu8/Kqfxj2y4dGy2bb3Rzb3B5AMJPpSPpd7Rb17DqcNbu20aA90qYDASbavtPf4V3Y2FkivIu9pKW1bKrgMpnKPDl4cqpF9jM5s085J8OevrWN24zsSxLMdyTJJ8zXt46xIMaAgQCB8BPmdaujGlRlnkcnZaOi3FWebbGWAlSdyOY8Y/Wn1ULg10retkfzAfAmD+NX6qcipn0XwzM8mKpdr8HlRuLfwbn+BvHlWy5i0BjMJ7hqfQbfGtVxw5QGAhuWwx5wbig+A0PjUIp2a8+SCxyV80ymcIxHV3VJGkwa+iujOJ63D2n71FUG37PEGOW2bf7kAHOJhso1GYmc0nXy8RXSUtrYt5UyIFEKXMKB41ZNpnzeOLjdk8aLUG/S/CdJMz9XmsXBMFrTOIOwBDLlmRtmqVxXHW7Fs3brBUA1Y6CoNNEovyVTpq37o1zXohBuX/h/5Grh0l6SrfS4UCqqje6twGSDl0C5VmDGZvhXNOHcTayxdYkggyJGpnvqxQe1olj1EceeM30rL/RVW/bBv/5r6miq/Ske3+raf3+w/iofE+GrdXUdoAhT3c/yqbUm1w93SRpOg/M/pU91ckHhWRbWrPOhjlRb61birbOU3QlxkOXTKzIJUZSdeUL8ZJ6Jst67i8Mbd6yVYhFYszMWnnvspMmTr3zTLgPALty21lbzpBFxYytm0yuCHlTIKmCN1q1cI4RbV1cWbltlQI7Hq7a3CBElLeh5mfHuru6+UePlwPHPa/By5rtnB2lS8Ge6ZciCMpOpJ7jr5VMscVvXVF0W7K29grOASO+AZB9Kf8Q6OWMRxW71qgoqIAjTlkg66ESZim2O6Gm5YXDZLItKTlbttcVCZKqXnKO7XSlp9lTjJPjo5fcf7RcdXG3xG3L5VWOI4fq7jLy5V2PpBwvD4Wy6qqgxo0CZ8Tua4/xV8zk/WlShKyvLCl/E04S+UdXEEgg60y4pxw3eyvZXn3nz8PCld0AQAZ7/ADrG2hNSaXZHHlnFOEXwxhg3ggBZnYd9N7XSG5hsRZvW16t0BVl1hlPJh3baeAPdVdVHWCJ76yxuKZyC29R22zQ8zUHFqujqGM9oNtr1m6ist1IV17OV7TAE5WnMzAkMARpDd81t6fdFDfVMRhbZZSrZ7dsAkMTmzqvOZYGJjSBqSOWtcKG241ywROo0MwfjXY+gHGQ9sKGlCJQzqs7228jt3iuSjVNEYztuJzfgXQPGYm4FFh0Se07jKqj/ALiPTeuw4jonaXh/2EdpRbIDHUm5qc/h2tQOWg5U6fEAqJOk68vrao3Fsf1ahw1uJEh2CgDmQ35a/CouTkSjCMTjXEOHYa3gWZbajErlW4CzErmOjAE6Dl8KpdWXpLjpu4suAzXGGR1zKsK3JW3EDf0qs1bEzZWm6RL4XdVLis85QZ03JGoHrFODxG9iTAlU/t0J8zuaU8NwRuN4VceGcOCgRUZVZu0ePI41dRf3MeHcMVABFaOkbdlbYMZjrAkwBJgSPoinlu3Gp5VV+J4v95dYkABRbkotyA+jEK2mcLMEEEECCKjHlmzU1jxNI670T4texFm0122EKrlJzZszAABhpBVhDBgSCGEE7mz2QGWGE1zb2W3iiXbJUhQ1u7bZiCzW7qkWy0MQrZLY7OmnKujh8ozHYCZqMlUjzoy3QTMHwCSWACgsHYBVGdx95jGp1qte1OPsWYiQl203+v8ACrFZvFwXkAH3RufM8h5Ul6bXbTYHEi44ACGQYzAxIEd/lS3dnaVUhD0gwa3cKLt25ddIVwjN2SAAQD3gQPSuLX2BZiBAJJA7gTtXVOPdIDd4UHyhCVyRpqQACVA5CY+BrlAq3HfNmfM02qDJRW/LRUrI+mX5VkgDc6VZuH3lVFUQSoAnTz/M0hwNvtBv5SPXl+VZDHxGY+6I9DHpWWTPrsUF5LPgcc1u6r8huPA6GrtbvhwNe741ybEdIVCgAdo/M1ZeinSBjb6to61ZKr/MncPEfhFI2Y9fgTW+Pjsi9MuOWMLiiGeLjDNCjMSwAFtT3DSasnR/jzX8Ol17ZRmWSuunrrVd4h0Tw968+IFi41yY7d23atzvJOZ2AjuX4VCtcRdsQqm6ltE963aZrhbSFUuwEf5ZjXSRNjSo8i5eTLpmxukjlGtcp4rGYgbAn510vp7jktLoZP1/vXK8VdzEmpQRXmaNNOujeC63OAJYAEfnSU1aegWjsfrxqU3UTugjuzpMkpw7KNVmouL4KrCQI8Kt+PSFJCyeXOsMXgAtpD946k981nU2fST0uOcdrRzjGYV1hDy2qVwHj1zDHsGNfT4cx4U94lw/PII5UixXDzLoffU8/LY1fGSa5PA1WklilcToHAPafYuFVxSFCDIaM6TyJA7Q9D51a+Icb4eUNxsRYiJ7LoraiRt2jNcOwqoucXJLA9lRszbamNFAMnmfDeo+Y3GZyBvMCABJAAA7hI0A2Fd2LwY1lkuGN+nPF7WIvTZHYUQGIILa766x50gUa1sxNnK7LMwxE98GJrfhMGxYaVLpHFGU59Fk6P4IBRT7PA0pbwpSEj7y/OphaQCOdUvs+hxRUYJIzuXoUmarGCxLJba5LQ7stwKAXa0ysLoQsrBTkzdo7Qab8YxGW03kaV4N2WwmXrG3LpbkF7OVuuBce4uQkEkHfbSpRMeslaa9kzPoxjFw94PaS9o7pdkqUtozqtqXUQTOYEmATEV2rgnGkuqqMwkiB/cD3ePhXD7bBj1ee5eAVEWzZzBOpfNdys5AJKXriaMp1nXQVZOjmGe/hlAzI1tVENv7oZWjTQggg9xFdyR8nnYJdxOwXLQgb6DcErp8KpPTbAddbZWbQEEzAjvIhZJI0mag4HppfwipaxGW6JCi47i0y5iAMxPvgTJbcASZ3qq9LPaGcQpt27WSQAXLAmCAYgaT8aiovwWSyRVpiDj/ABUFLeHtn93bkeZzTSe0smsKYcKw8mat6RRji5zRn9mNFOeooqO49H0SzOoCwvIT5kHtf/X5Unxrw3ODqPMf8z8Km3cTrsyHXcSATvI7jA9B5FdxBjEhTHh2hp4is6PdyPbHg9waKs3bh8hWHFsazWesUspBBUgkEQdwRUF2LgCTl58o8D40z4jazWMoG4AA+MVLp2UOXqQlGPVP+bLF0P6UYfEI1jFwLwAhsxti6sTupHa11HPccwJfE+IYLCx1QtrAICpEljyjefOuXdKML1d8ryypH+QD8Qah4C3muKC2UTJbuA1Y+cA6VaoJqz57Lkljm4NdNon9IeIXr1wm6CsEwu0a/M0nNdIFuw6BWIbkrDtyNcpAGpQgEjfKQw2AJqfHOHIpuMjCFgGNizHRfMASfMV2L8UVZI2t1iMVbuhCRB75/GqiK6D0cweRU/w6+Z1Pzmo5X8pv+EY3LM5eyLLatSQTtvW/E2Ayxt3d1aLLhRLsFHiah4jjKPojSupLDYKPeP1zisyPpJcMgcVvrYBuNqwByDTUjdvgJjxk8qotrElnLE6mPkIn5VN49xE37pAMKJj+1RufSlAbXw5eVaIRpHzmv1O/JS6T+5M4skgOPI1G4e8OgJhcylu6Adz5a1IN0FSp51Ctj7vedfIfXyq1dUefk+pNGVw57h/ub8TVyweBCnbl+G4qnYATcT/EPxroEaAjcVCZv0EVLdJ+5iyZdRuOXeP1qOl8B45Pt/i/3/LxqQ2IjcaciNY8DG3ntS/idmVLoRHvb7EayKgj0ZuuUL+k1+Fyd9YcVtFcMkEgrExpowKn8Y+JqP0guTdTxCn1qfxJ89lh/bP+XX8qmvB52Spuf7V/UR4DGGCjvcyZLoVUcKAzrznTISq5hzAroXQq8qfaVYMhDITbdxcKAr2Rm5gKFGoEQRyrl1WK3ee0zJbQKSlzMDCGUXta5iGAFvMAObsup1qclaPNxy2SsadLcW15rhK4fKk5Q9xRdhrQ1Vc2o/eKwETNuORFUmnXEVSHKLYGR2BVWLSHRVUqzPLgFSwAHZJadCBUa5gAi9oMSRKkER7snTfTWdtqdCnNtkXCWc7RT/BYcIKX8GyqGJ309Pr8Kk4zEkgIupbQVxm3AowhufZK+3p3iilv/RT/ADfXrXtRpFnq5PYu+NVv55HKQH+ZIqucVLD7yr8GU+oB0+NWXEYgRCt5qy6VV+NkmcsBRuN/iKoie5q/odGzhPCnzZ3YFSJAkkNOx1Gg+dOHzAgKNBt58q1cJ/g2/wDCPwqWpgg12T5I6fGo41t88lO6V4k3LisQAcuWB4H/AHpRb3H1ryqw9JuHEBrmsSCNNIOh175IquVfB8cHzmujJZm355L70Ba5ezWpGYM8O0HqgQGuMVIJbVQQo0zBaW+0DAPYuKrXBcW4BczgEFyJUE5pIIGgWdo76S8F4xcw1zrLRgwRsNjuJI0kaHvFZcd4zcxLqz/dGVROgWSY+Z8TJqzgxtt9i+ykkAbkiuk8OtBVJqhcAs579seM/Aan8KvfEb3V2jHcT8qz5XykfQfB47YTyP8AyhNxHGNir4sqSLa6sRzjf9K2dIMaEXqLY1MDTUx91QPT4+VKejl64WcW4zNrmMiNdNfjPpTmzwt7Zz5h1h3eCzCe4tAX4AnxrjSTouxznmg5R7k+X7LwkJrXCiFOYhF//ZcO2h/hr/MQRrHMeGqnFMpc5RCjYc4Hf40/4ngTALXC0CFB2EcgBt8BVZc6mrIOzydXj9OlVfkze5WAbWfrasSa8qwwtm/BH94p/uH410K22g8a51h/eXzH41fsPcGUToeY7/LxqvIep8NfEke4jTUGPr5iq9xliZAABPcwWfNTE07xN4d7f5GP5Ugxt3tAAMoLLJJymJ5KDAHiaijRqZLbRp44P3qgcgo9Kavai0wPNSPUUvuQ96dTHJROvnsKk8YxGS0RGrabzFS9kZ1Ud0n0Vy2YIMTHLX8taaPbZcttlzOoKlLjF/eUlTbAELKlIALEsoI00pdh4zAtBAMkNmho1y9mDrtoRvuN6Y2FkASCzEDIGSQoGZGW4wItkGARObcGJNWHkmriNsBVVUbQntMZcQozW2QEhArK5GgMNr4al4g2VQYOUECZ2MaHw9K84hoYykHUktmznMc0PO5EjUATUOh1Sa6N1u5rJpzwyz987nbwH60mw1oswA/4p/bPZALE+Oo/KoyNmmt9m/NRWqB/Mfl+le1E2Fhv3T5Uj4q2h7/rWkeN4zcuH3io7l09Tuaii/BBWdhMmZPP4eFRWNonl+Kxl8qjwXjgtzNZQxHZj/Kcs/KplQeAQbFojuP/AJGam3WhSYmATHfA2ql9nr4X/tRf8F+Dy/bDpcttsQfhI38xXO8RZKMysIIJB8xVm4ZxUGYnfnHPv13qH0nwwMXRz0bx7j+XpV2O4umeRr1HPjWSHj8CS1cggwDBBg6gxyI5ii80kmInWPxrXXvKrjwxt0YxQt3pPMEDxPIDxO3xp9xHE50JnQidNapc044Xi2b93AzMQMx5kndhtPjz5zVc4+T1NFq3CPpPrkadEsNlDudJMDfunl504v3I5/jUThy5ECg5jux55jv+nwr3FPB1IJ85ql8s9rBWPEooWcZu9kmq51RImrM+D6y4quYBPu8yBqfIRz+A3phf4BYOokVZGSieZqcEs87vopPUnwrxbdWscGtBjOqhSfjBj6/Sl2D4cSJKkGBCnc6bx4n8KlvMb0bTSFItjxprY45dVQvZblLAknz11pja4SgWGInmfGvU4baWNATXHJMvhp5w+l0Y8Mvm+j6gOomBmAgGG2PKUM/3Ry1gY/BnMAxgco5nmTpy31k0cGx3U32P3c7LHgwbT1VPQVI41DQRAAPp4z3V18Pgy+rKSqXNC0qUmWeNwVMAjl5GomJvZtgfMkkn1qct+CdZDMYncePxqPi8IdSu0k5RyFSRGduPykezcidWE6Sp5HQgjnPnU8G46nsmNezoEgmYCfdMzqI35HWo/D7a7nemqXgKNjHhUlcmIr1sgmRtE7mJrBEJMCnWIw63N5Hj3/CskREEKB+tNw/0/wA3fBhhcJlAPL6+Vb3uQK0Wr+hGxH0DFa7l2PI/KuGjcorgkdYO+ioXXivaUc9QgGyc2XnrvpEb71qp/wBIMH/6k5QACAxkaSZkx8JrxMOigmJb+Y7/AO1dUrVmTLi2TcfZ0TehuLlWtnlqPEHcfAwasVUq9fa2y3FMEGR5/odj51aXxhOHN1dDkLDnByzHwNUTjzfue/8ADtSvScJdxX2/8K5xm0i3myQNQf8AC25A8NvU1E4jxAsMg20nz3j1rWh0nc8559/xrHIDqBP1+FWpe55OSblu28XyQ4rLIY2qcMNPMD5/DyrclpYifWCPLy86luKFgInD8A1xhoQvM08RLa5YthSpkE8yO9gRPxqM90jL3Du+VZHEwT3H5VBts2YYQxr3ZLu4hZzQN9RyPx+6fHur0Y3syFyRvEfjSy/eAA1jWO8R3eVRcRfECCY5jWPrwoolstTtslniWS6zDWFgeZIJqXa43oSdhv3k8lHjVdYidPnXgepbEYlqppvksB6QACQpzHfl9CtP/XW5Jqec8/SkuYV6r+JHlTYg9VP3GycXc/dH18akLxEncRSQOP5j9eVb3xgjSuOIjqJeWaGu9onvafmf1ppicSHQAEx9b/XKklZh4EVNoy7jbdvSRtppUqzi6W16DSiUZuIxvQRppH1HlWyzIUliJ5DnSxbpFDXCedKOvK/Ax+2ivGv6aUsmssxpR31n5Jd3ESAdjsfrurTcvyB860UUoi8jZnJr2sM9FdI2W7pH/EX/AA/maXXNvT8aKKqh9Jt13/In+5D4n7op7gv/AMF/J/xNFFMnS/cs0H1T/wCrK9brZb2ooqRSjYK8SiiuFp7Y2NZJzoooERcb7q/Goj17RUkZsvbMU39fwrGiipGYK9ooodPKKKKAKKKKHAooooANFFFAFFFFAFFFFAFFFFAf/9k='),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                // padding: new EdgeInsets.all(10.0),
                //
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.favorite), text: "PlayList"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              SongsScreen(),
              GaleryScreen(),
              PlayListScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);
  final TabBar _tabBar;

  double get minExtent => _tabBar.preferredSize.height;
  double get maxExtent => _tabBar.preferredSize.height;

  Widget build(BuildContext context, double shrinkOffset, bool overlabsContents) {
    return new Container(
      child: _tabBar,
    );
  }

  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
