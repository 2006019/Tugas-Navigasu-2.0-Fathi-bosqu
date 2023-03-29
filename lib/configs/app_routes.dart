import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_lima/modul/news_detail/news_detail.dart';
import 'package:pertemuan_lima/modul/splash_screen/splash_screen.dart';

import '../models/user.dart';
import '../modul/home_screen/home_screen.dart';

class AppRoutes {
  static const String splash = "splash";
  static const String home = "home";
  static const String profile = "profile";
  static const String newsDetail = "news-detail";

  static Page _splashScreenRouteBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return MaterialPage(
      key: state.pageKey,
      child: const SplashScreen(),
    );
  }

  static Page _homeScreenRoutePageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    late User user;
    if (state.extra != null && state.extra is User) {
      user = state.extra as User;
    } else {
      user = User(
        id: 002,
        name: "Fathi Ridwan Alamsyah",
        userName: "Fathi",
        email: "2006019@itg.ac.id",
        profileImage:
            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVEhgVEhIYGBgYEhgYGBgYGBgYGBgYGBgaGhgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QGhERGjQrGCE0NDQ0NDQ0NDQ0MTQ0MTQ0MTUxMTQ0NDExNDQ0NDExMTQ0NDQ0NDE0MT80NDQxNDQxP//AABEIAOEA4QMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAECAwQGB//EAD8QAAIBAgIGBgcHBAEFAQAAAAECAAMRBCEFEjFBUWEiUnGBkaETFCNiscHRBjJCcpLh8BUzgrLxU2NzosJD/8QAFwEBAQEBAAAAAAAAAAAAAAAAAAECA//EAB0RAQEBAAIDAQEAAAAAAAAAAAABEQJBEiExUXH/2gAMAwEAAhEDEQA/AOX14taU60WtO6rtebnb2Y7F+IgrXm939kOxfiIENaLWlOtFrQL9aM9cLtOfAZnwlWvElhsHbxPaYEvSOdgCj3sz4RvQMfvVGPZkJIPE1QDabQKzg13MR4GW6OqMlQI2++r4HZ/N0qbFLx8BeZcTida2rrAg7dmW+AS0rjgw9GnSJIvbPYb2HE3E0aLommp1jmxvbcLD4znKdYqei1jsJXKw4X3RMxO037c5NHZLWB2G/fI+mHWHjOOBmihjXTYe45j6y6OneuAbE5ndnHNTO2cD4fS1zZ7LzsSO+bl1jn6TLkBnA0+kztY9u6J6r7lHe1vlKAh6zeUkiAbye0kwLkdzt1R2XMmNbew27hKw0kGgXKSBmbzjtOKRXdScwc+ROZHcSRO4wGFZ2DW6Km5J2G2dhPPsfX16jufxuzfqJMUUXivIxTIleRZwBcxTJiXubcI1FnrXKKZbxSaOly2xa0q14+tNKs1pvdvZDsX4iC7wg59kOxflKKNaOGlOtHDSC7XjhpVrSp6m7xgWviNy+P0mdmubnPtjEyJaBItM+I6RABIblw33lkYKL33mQOoAFhHJkbxEwEWiDRoxgSvNGGxjIcjcb1Oz9jMl4rwOqw2JV11lPaN4PAy+85bA4rUe+7Yw5cZ0iOCLg3B2TUF15owdPXdVvtYCYwZt0dfXWwzDA9wNz5QDf2grehwjlRb2eqthsLZfOeTPPa8XhlqU2RxdWUg988i0xo5qFVqb7jkesp2ETJ0HRRGKEMzWBMHkzVinytxmS8lCiiikB41OR8ItbkZEGPeaU+tN7t7Idi/EQdebXPsx2L8RKKLxXkLx9aBJnlZMRMpFW7FRu2n5QLCZEmImRd7AnhIJAx5TSayA/wAuT+8nVayk8oDu1hfmPjaOZRiT0PCWscrj/mA4MRlWuNYEHJvjulhbO3HZAYxjIo2ZHDZ2HZGRwf54iEOTC2isUfuFrdXZxuR8fEwKjZkcD5HOSD6ufA+HOJR1xXLNjlvyEP8A2aw4Ku9ycioJN91z8vCctgMWHTO1xkfke+db9mcQLMm++sOYNgf5zmldEpuJz/2t0L6xS1kHtEBK+8N6/SEtHYjNqbHpIxHav4T4TXW2Zbs/CZJPbxF1tIztftnoC18RSXonN1G49ccuM4TEvYW3mCzGWtUuZXeK8UyhXiiigdOML73lHGEG9vKZ/Xm4L4H6xjin4+U2rWMKvExqxGoQNgKjzEx+nfrHy+kYuTtYnvgSvETIxE5SCnE1tXuUnvOQ+cbCJZb7zn9JkxTXcjsH88ZpZ7NqjcAPE/QSIs1+keSj+fCZne9Ptf8AeQapm/PLzkNbo296/lGjS79BO7yluLPQ7xMTNdF5E/KasSboDxI+BgRxD9Bef0j0nunNc+7/AIvM6guVUcLfP4RqT6pDbtnbx+IgSqNa4Gw9Icpez61O+8Z94mapw3bVPI7pZhmyZeKkwJtU6atxWxlVQ6rHtuO3+XlRbIDhfzkq73seVj2iBM1PaA7iB5y6odvZn2b5gJmh6maHiCD5QNGBrstszY3zB3A5ju2w1gse9OorqTdTvJzG8GAqVP2be7UuOywv5QhSDFQbE5cDLB3tXSS69PE0/uuuq495dqnnY+U6anVDKGBuCLgzyWi9RRYBtXWDEWNsha/gYYXHvqBA51eF8s5cal/XWYzTFOmGQnWI2KMwVPE+U860johHdnUlAxuFGaryE31H38P4Y3pAeyMOV0FOgP8AueUmv2fXfUPhCoJHMfCSDxkZDf6CnXbyihPWjxkHOiOIaULuRP0L9JMPwAHYqj4CMUEBk1RjsUnuMNis/WPdl8I/pm3s3iYwB/Vntf0b5C/3W+kXqzlCwRioG22VhtzhSu91a7fhO08pRRdPRgFlFwdpG+/OBzrj2v8AnHRr1P8AL4R2Hte+/lM9F+kD7wmESfae0y3E0NQr71NW8Rn53kGTpkcWt4mFdI4J9TWaoG1BkuqFNsr2ttlwCBNAe9O3VPlumcSSNY8iLGBq0W6LU1nYAKCc95OVgN+0yzD09dXprTLHW1lNwuruub55i2U16EpgKzaoLa1gTusLnPvluJYiuGQEnVAe/QWzGykt+EX3ncJQDrUWRirixH8uJGjkw/m0Q1jHZ3NJqaawcqG1y1iDYkMAbjKDsVgnpnpC4FuktyvZe2UmDFIkyRkDIGJk0UvkPwqzdwzMrMSOQbg2PEc4HR6Hb2Zz2nP9IE1UUKoFvsEC6PLMtkci20A+e2aTh3O128T9ZqAoYqLfhO74boKOCY7SfGJMGym4JB7ZVGCZWTbs+EyBX68RRztfzlRtDSDMBvA7ZjXDsNjHxMicHfbn25yDT6yOunjFM3qI4eQij2MmtWP/AOjeNvhFqVDtqN+o/WEQJICTFDPVXO1z4mOMCeJhUSQjALXR8kmj+O25hSOJcATFYUoyNuvb6fEwWJ1tVAwIP8O6c5XwxCBwMrsrcmDH4i0zYiyhTL1Esba2/bYqP2E6zC6Mb0T1nNV0RCXAcISbbrDcTc8gduycdhK2qRyNx2jaO8ZT2vRtPUooqBWX0YvffrC5N9+05c41ZN+PHK2jqigkox1RdjbYNt+yZkUkgDaTaesab0OXpeio0wpqMFLFiyogIZjns2AWzJvw2c9iPsaalIvR6NRHZShNlcKAMj+Fr35Hltj0vjQT7OVfaCiRYs9lvlZjkQeGwT0zR+gqNNTdA7Nm7OAbm1jkcgLZdk5rRWiqGKpeir02TE0ei5HRqWudVtlmXtB5TrdG4V0p6lSr6S2xmWzW3Bjc6x55RqzjoVhNAUaVTXXVbVvqKBc8ADuAANr9kDfbPBL7OnTyqV6gGqLBAq/ea24A2852mIqaqk6rNbYqi5J3AfvlOH+0LtQpvXrsvrFdDTpoDcUaX4rHebHNuJk1fGSOAqgBjqm41jY8RfI+EIYfRWui5HXY5WBJtY2Grv2XhXQ/2Rq1U9I9kXLUVwQX5nqjtGfZOgNGlgVFSq2vUIIRF2nLPVvty2sdg82xmcbf484xmGam5R8iP5shjQmEQ02ZhrEkixF7Abh3yvSWtXV8TU++9QWA2BB0QBx3Z8ucMYGjqU0U7Qov27T5makRRhtE01AOr0gMyGYZ9xmz0Q4ScV5oQ9GOEXoxwkjImA2qOEew4RjGgPFFeNeA8UaKBgBjgyAkgZBYDJAyoGTBgTBjiRBjiBIGZ0p2d1I6L9LlfYw+B7zLwY94AyrodSbo5XkRcdxnZfZDH1qaCnWRnpBtVKqAtqb9RwMwueTEWHZsBCF/s/pIUalmPQfJvdO5vr28pLF4+q7oZiV0gAWFrHWLdutsPy7pNWBAINwRcEbD2R5h3QaipZXKjWA6LEdIA7QDtA5S28aMTARgttD0jV9NUXXfKzPmEA2BF2Lbjt5wkTBGmtKejGohu5/9BxPPgO/tJ/Qz7QaZdKjCiwuiG4IBBe18+zLfxnGYGq9d3rVHLuRqgndcHIAZAbNnOdZonR3pmL1CdUEX4sTmRf8Am2clh09Bi6tBshrsq/4k6vipmpJK5crb76ElwyhFT8K6vfq5i/eLy4xFrQZj8dbooe0zbK3H4kKLq3SHmN4PKKnpFCMzaA2Nzn3yEzqOnWsDsIMlecsrkbDN+E0ib2fxl0GTFIK18xJXlU8a8V40B4o0UDADHBgr1r3z4xetDrt+qZ0FQZIGCPWh1m/UY3rS9Zv1GNBoGSBgP1pesf1GN60nE/qMaD4MQMA+sp/CYvWU/hMaD+tJB+c5/wBaTh8YxxSdWNHbaK049HK+snUJ2flP4fhynYaP0lTrr7NgTbpIbay34jeOYynjaYlNyzrNG6ONPUcghycgrFdTok5kZnZmNm7OM1rjysehejW97AHiMj5RyYDfT3o6etUQsRa5Wwvc2uQdnd+05/FfaJ691tqJ1Ab3HvNv7Nkz41vzg/pXToS6UiGbYX2qvZ1j5duycyXLEkm5JuSczfiZReE9C4UO+u+SJYsTsJ/CvO/CbkkYvK102icL6OioORI1m5E8ewWHdOQ0/oZK+LNVXshVdawszOuV1J2CwXP/AJh7HaQZ8hknDjzb6TETJOPdOXL1kQpUVQZDvOZ8TOd09SD1QKYu1rNqi9yNmQ322906B2LDomw6w2/4/WQpUlQWUW+J7TtM0y5unoOoRnqoOZux7h9Zmx2i3pqWNmUbStzbmRbZOtYyqowsb2tz2SYOCaqvHyiWoCbCa9M0BTe9NgUbcCDqnh2cIMFdhsMxbiDmBxZUWYEjsvNZ0inVf9MAjST22mN/UG5y7Ad/qK9R/wBMR0kP+m/6YCOkH5yBxz8Y8ge/qY/6b+AigD11+J8YpNGxNGKRfWOzhJf0pesZpTEJYdIbJIYlOsJcgy/0pesfKP8A0lesfKahiU6wjjEp1hLkVl/pCdZvKONEJ1m8vpNQxKdYR/WU6wjIMw0QnFvEfSSGh04t4j6TR60nWEkMUnWEZBQNEJxbxH0kl0RT97xH0l4xKdYQ1oSgHOvtVTlzb9pcgp0V9nESorsM16QU557ifM27IeqrlltGY/nl3ybG2crZpYKGZXUjIg3BHDiCNxnO1MKyVCL5DMe8p+mfeJr0qxFVPRX12BJtvA2X55HwjNjFemdeyugJzyBGxgL7+XG0AlhtDVCNap0EG0tt7l2kzSziwVBZF+6u++9mO9j5bBM+kdNXpprA/wBtdVL5k6ouzcN/8JgJcXVrVNRW27gdVRxvbd4xFudD711U2JFzsG0nsAziIvt8Prx+HbKMFglpi+1jtb5DgJqJhDGVu1pTicYqG2bMdirme/hM/qzvnVNhuRTl/kd8CNXGljq0V1jvb8IlH9OLG9WoWPAGwHf9BCa0wBYCw4CQcwBOL0SjKQtwbbySD45ic5WwuoxVlsRtE7QvyPhB2l8KHQsB0lF+0bx85LBzIQDYJdhdUMNZQRzErMQMwg+MJTP/AOa+Aj+p0+on6RM+Cxa6tmOYmn1pOsJtS9Up/wDTT9Iii9ZTrCKBywEUMpTWwyGyP6NeAmcQFihv0S8BF6JeqIwBIodFFeqIvQJ1RHiAUcQ8MOnVEcYdOqI8QFQZ5T0zAYYU6SIPwqL8ztY+N5y+AwqtUQao++PI3PkJ17GakxUXaZKlYLfWNly6XC5IseWW3nL2Mw49gKdQkZej8+lbztKMWjzr1qlTcOgvZy7gP1TL9okUFCBm1787WsTzzmfRvpQbUzYkaxU7GGVsjle1pm0pi3dh6TIjogWIIJO8HumpZqX46DAYVHpo7JrNqKLkk7BbZe26ZdFgHE1GAyGsBb8wA8llGF0qyU1TUHRFrknid0H4TFupYobFgCTlzO/PfJ+jrq1dUXWdgo5/LjBvrj1iVpDVUZFzt7uHx7INw2Heq41iTxY3NgNtr750aIqKAosAJFVYbCKgyzJ2sdplpkjIObCBFjKivH/jslgHjv8ApINAraVPLWlDnO38/mcDlMSmqzLwYjwlU26WS1Vudj5ftMUxUIGPeMIVpYJCoPERALvFC3qCc4oEEOQ7I4kEOXdJSqkI95G8V4FgMe8rBkgZRYDHEgDJAwCehEvVv1VJ+Xzh5mzPYPHO/wAoI+z6ffb8o+JPymw1fbMv/bUjuZgfiJRax6XYPjs+B8YN041qRA2uVXzJ+UIDae0Dy/eDtK9KpRTjUv3La/kTEE62FKsj0xcoApGzWUC2XPbKNM4VahpAjM1Bc7DqgXIPdCwMx4nOrSH5z4Jb5wMmLpqg1KNPpsMyBdgu+53XmPQ2jw6l2zANtUZXsAdu4ZzoW2QdoAex/wAz8BLPiN9GkFFsu7Idg5SNdrADi6jzv8pdeYMe/TpDjUv4Zf8A1IrZeV3ub7hkOZ3n5eMrxNQ5IpszmwPAD7zdw87SwCwsNlsoCMqaTYytjArcyiptB528f3tLnlNQXH827oALTQ9oOaD4mDIS00bup9z5mDbzF+oksO0BZQOUDYUjXGtDYMsErxRopVCVr8vOTFbl5wdZ+HlG6fA+BmNQT9N7vmIhW90wZ6R+B8IvSvwMaCvpvdMkKvumCPWG4GIYp40GBV91vCW03LEAK1yQBlvOQgVcY86X7J0mdmqOMk6K82IzPcD5zUuq6PB0Qi6o3WF+OQJPiTB2MqauKQ8UC+JYfEiFXMAafbpId9m8iPrNAtSe63GwknuubeUwYg3xSDq02bxuPkJrwwtTQcEUeQmCg2ti3PVphf8AX94iCwmV8668qbnxZR8povMiNeu/u00HixMK2Ocj2QdoE+xH52+U3VDkew/CDfs+3sj+c/BZekFrwTpNva0vzf8A0sJkwHptrVFI3ID/AOxkqtuEfXqO+4WRewZnxym0mDdEG1Mc2Y+FhN5MQMxlbGSJlbGBFpS0sYypjAA6Z/uAcF+JJ/bug6GtNUboHtmu3sP7wCSP4Zi/UWzThsUVy2iYbjjJo4Bk0F/X1imH0ifwCKXRehyHZJAwSKh4yQrNxjQWBkhBHrDcY4xT8Y0F4rDhBQxb8ZMY1o0FUp3IAUEk2GW87J1uEohEVBuGfMnafGcLhNJsjqxFwrAkct9uc7inWDKGU3BFweIM1FWu0B6eS+oebDxtCxaDtJ5mmONQfIfOWggOEF6HOs9V+L5eLH5iba1XVVj1VJ8Bf6TDoJLUr8XJ8LD5S9ILEzFgzepVb31X9K/vNRaYtFG9Mt16jt4m3ykVtrN0G/KfhBv2ePs2/wDIf9VmzFt7N/yN/qZj0GLUu12PwHyl6QQqVrMq9bW8hA+m/wC4v5PnN1U+2T8jTBpv7yHkfj+8lVp0SegOQbzc/SbyYL0N9xvzfL94RJiBmaVsYnMrZoCZpUzRmaZKmOQG2sCeAzgaHAIIOYIsewzlcThCjFb7D5bjDTaRG5T3m31mLHVg5BtY7Nt78JjllA30J4xehMvikyIo9EYpfFGQTGF5x/VOc0LHBlwZTgzxjeptxm0GPGDD6m0Xqr8IQEkIwDRhX4QxoXHvS6DglCe0qeI5cpUDHBlkHULUBAINwdhExYzOpSHvE+Fj8py9PSb0qjajXXWzU/dP0PMQxhdIrWddUEMqNcHcTZbg7xmJfKVW7SVS1Bj1su5iPlLNGrq0kHu3/Vn85cNS9nUFdVsiAQTayix7YhkLcMpd6M7V46rq03PuHxOQ8zJYNNWmi8EF+22cyaRNwideooPYMz8JsDQIY5vZP+RvhKtFC1FO8/8AsZZXpF1KA2LkLfba5EahT1FCXvqi19l7b5dMNUb2y/8AjPxmPTS3CntHjb6S6q/tk5o3zkNJrdOwg/L5yCOiG6B/Of8AVZuZoP0YbUz+c/BYsbj1pgk5ngPnwkGt3gnGaZVbhOkeX3fHf3QNjNIPUPSNh1RkO/jMcxeX4jXice7/AHmy4DIfv3yGE2nsmeX0GIv3SS+xpZ7Ssm8iTFeUPFGivAeKNFA2iOIopoSjxRQqUeKKA8UUUAJX++35j8YU+zX90/k+YiimZ9R1URiinRWLE/3aX+f+s2CKKBKj/cT84+chFFJ2vTDiP7qdjfCXYr+235T8IopUZdH/AHD+c/BYHx+x/wAx/wBoopm/AJMUUU5Ivwu2PvPbFFNQOYhFFKFGMUUBRRRQP//Z",
        phoneNumber: "0888888888888",
      );
    }
    return CustomTransitionPage(
      child: HomeScreen(
        key: state.pageKey,
        user: user,
      ),
      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  static Page _newsDetailScreenRouteBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    if (state.params["id"] != null) {
      return MaterialPage(
        key: state.pageKey,
        child: NewsDetailScreen(
          newsId: state.params["id"]!,
        ),
      );
    } else {
      return const MaterialPage(
        child: Scaffold(
          body: Center(
            child: Text("Data Not Found"),
          ),
        ),
      );
    }
  }

  static final GoRouter goRouter = GoRouter(
    routerNeglect: true,
    routes: [
      GoRoute(
        name: splash,
        path: "/splash",
        pageBuilder: _splashScreenRouteBuilder,
      ),
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homeScreenRoutePageBuilder,
        routes: [
          GoRoute(
            name: newsDetail,
            path: "news-detail/:id",
            pageBuilder: _newsDetailScreenRouteBuilder,
          ),
        ],
      ),
    ],
    initialLocation: "/splash",
  );
}
