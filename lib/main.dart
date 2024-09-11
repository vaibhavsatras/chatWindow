import 'package:flutter/material.dart';

void main() {
  runApp(ChatPage());
}

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() {
    return _ChatPage();
  }
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text("Messages"),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                Padding(padding: EdgeInsets.only(top: 30.0)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJgAAACUCAMAAABY3hBoAAABFFBMVEX////I7f+U1PMAAAAAGDCw5v8ARWYAO1wndpXL7/+PzeuY2PaS0e/7+/vO8//w8PC3t7eLx+Tq6up9tM6Cu9bd3d1aWlq/5feHh4cANFcAABxDQ0OxsbGXl5efn59Sd4gAL1Rzc3N2qsM3NzcAJUAACiZ7e3tmZmbU1NQODg4dKjEqPUZhjKAkNDw/W2ghISFIaHe78f8SGh/W+/8AABVqma/Hx8cAKFAqKioYGBin2fGqy9lXdYxNTU2Zusqy2eqbyd4AH0rr+P82TloAZooYKT0KFicjOUwtRFQ4T2MfVHFEZ388WnV9nq6Jrb5ohJhKe5hRYXUqRGKwu8UAAD8ADkJqgInW5OyQqrEAWoN+kKFOjKmxTt4RAAAQS0lEQVR4nO2cC1fayhbHDa8YEgIhoSG+gCgiCpRCgwot+KparNbjube3t/3+3+NOMpN5JJOHFtu71r17rXNaazL58d979uwZJrO29n/7v/13W6lam1R29jubJ90ssO7JZmd/pzKpVUt/kqq2Ve9sekBB62526lu1P8FUrm294RGx9marVv6tWAf1FFSIrX7wm6BKtW2u96Ktu137DRG31eI+fNQ/8qw/4v66tfW6VOWd3QDP4dGg0XNsHZgBzP3TdnqNwdFhgHB35/WirbS9yTyrD5hsQ9O0YlEBlgHm/lksgn8ybEDXZy7f3H4dh5Z3TqinHB41bN3QipAnbIBPM3S7cXRI3XTyGqpVPlJPOGo4LhSfiaIDcE7jiLrxY2XFWDUqPRwObD0FFWbT7QEl25uVpt2dU0osOzUVZrMp2U53VoZFyXXUA2I9hwoakK13tHLRtkg3bBjas8SiZNOMBumkq8hqJZxQRw39pVgQTW/g3Nb65cxxgFPXwI7CUkDMyfJ0Os1PZWDRKUSzBzip/eIIOnnrd8WewY0tRZlOTUGQVEk1Z7P5fD4zJcGcTvlwRaPnd9C3k1/h2omVqwhUMiVgqrp4+Fo4Pj5uNsF/yx9zcywBODn8UWjRfqF3Yq4GRy7FU0oQBFWd3xVEsYDNEpc9UwW/MqecT2M0fpnMD/u+E5QLOBBIJQgQa3lcCJpl3Zsq4AbCBZ2qaI7fPVsv46qj2y9tLSQW1MrlWtzRYlFoX2aAzL0sJJtmX6Km67+i11Bn3ahk8kgsgCXdh9VCJloPqneRJOUzLFtRH75cs22fKxBeSt4Xy5PLiuJyRbuHZOCGfIDM8Mm2n8vl+7HHhhdwIsaS1PtjrhexHftk4CbWoYrWe5k3K353ZLiUoomxANfXOLmgZg8qvtxkhn5F8zvnswqhCdaLlYtgAa4PzSSuQqE5U8kdrGhYs2dk2vIpT69inuISUugFTHxSKY3zdLhizU5Tl7XlTQ6Xogg01zi6O7LO7BHJQAN0UsNkm2nJUOBfMlxThkudpfAjtAXtf6YPKNrlszoACvxLIyq83Cfc4f4Y3zGBZGPmRibQjMtndIAamgzReTXENcMBZjlX8WiiKkSSFXX4rJM0NW3Hu7TrUFx0loAR9ujDiHZeXsaSWfMAmUm37MDlhk5qRza0aL1AiPmCWT/lvJyJzf9ijwVjNfM7QKIzqyehwOdwzRGJ+JgHJsu9GDLxQ/B2mszvACfVBDDYI0d2HJeg3iPnPRVdsHxG1sVotOUilswepemZByjjU2EQ5gLJVfQDDBqo9J0lv/wBV81CLUhTKszQCBA/CYAzyCPakSEs0C4CW8r5PEYr6o9LUFiHlWuGwQSBdiaccb6J44JTyC7lyFCH9OyDB2YZecrcCZKcMezHu6UlJoHRXVOxYc+MmWyW4MLJkPTIIseRoFkPTLyT86wBMBn0Us2+o+uhZiBfIGcSMg0WZx+j55pQsJGBBeMEPnEljrB8SDhZeSQjAheM7gCKMUqQDArWIJ+laPK4UPAvFR6YT6ddNTEY99NRzizCZPYxigvm1r6eEGAoXcAcFsP2E2l2zAt+Nsz0flyWLXWCgil8Lphgm/q7WLK87EDNLD6YIClByTr8KDtAEZbkSNcN4JHHZ/FcwKBm4QQbdiaKMn4ug0l/GJ/CoI0LxwXLTlAsn58uC83m8V3k56MeNYxO/2U4StqkF0dyCeCZd1YvEexdT3x4d/Y1QjBgJC/ZcMTk1bIwVwzwtRGpAoHl818ek8Ee5+/kdxE9SGBShjaIyhhoga6HL42OMMF088HDXTLYhylIuflo5UmUKXDE5CzoVbuB0D+Lbs9LVMaXJK78uzt3JS8GTDgLhH83XP3AJDZIIxgEO1sFGCXZICKVwSRGhm+NN45gMvC8aRqwfAKYRELa5tfYJW9N8xB7kj9602DvksHyXxLByFhueIugb4NBNgnUFXGehGB5Z5rENXXAhCAfB0b5sghTWXDBAK469dKEvgCDLFkv1+IFE+jwh/0ysC4Fk8UIj9/xnkwP5iob2xLlS33ESRhVb7mijy/SYj3pkmVWI5hgkujxSoxNNmHAAXyAZdViP6YAc38asCQuql9mBpyBvMKGmHKWBJaWLKkZQTrDGarHyWTb7ABejKpUqAZToSU2I0gLHD82J/rhtA1nsaQQ81pchV4CHWSGB8FO47z02k+ZxXxbERjpcV70v6W5yl225CmmaXFFYAIB86K/S9dktUDxmhz73mddCZiEUywqY+m1MpgtGviKadwIjm01glHVYiOUL4LZIj7v4yZXDRbOF7Csdp6RLTxL8GWqNuh84YTKa++Lya4j+1G4SNdmvDNT9WxgC7/PyXDdk/4a08uvI5xf06SxZLK0bZBEBtfw6AxbfwWwtE2EwOqrAIsJsxWC6c8GU815FNfcTJVyGDB9VYqpiy9ORMUo63+lJVu9K9X5ubXg1rLuJOrJmqUjiwN7Ua9U58fWEszG3cl2EEvOCI3jp0UqsrheCTdYUHksRYIdP5yLzR9jBMJiAVv7+9xKRSZReSwbzGNbLFiazK/OjkXx/O81GoZY5l9rtX+IzS/qcypFOZz50ViJwZKrC3UhWqL4z4O1C6xThuISQCkFwJtfkyWTzjBYeKycsNVFGrC/miIAA1MalXWi18AUtFl+Ahecc1esI8BQdUFPeWE91vCHeSV+uuty3btc4rFb1Kn5oAlum6UvlntFctLAsxGlEarHUAWbclopjdW5K4coFrxq8yLI5c1ZS3+5YNbdXB3H6k9NLMMV7NouW/MbMWCqOfs22vO4xCfYCEumwiZLHzxRrebo20KKkc0kUyCv5t+ludAilJaomDSWvl9mN9oiA7ZWImjmxRoDJoq5jfeD72okGlFM8yDYhSg0r8SJjF/CqtLi2/VGO5fbC4C5aIJpmsIFWXmArnQ1y+Xa7U9zk586pClOY7x5ZWgmzvmA6nj27f37nGvokWIzZscEDH5PMmDtbP9e4gWbGj8TP/Ci/9JXLKOHvpRV1dnldTsHDT3RSxfE5v+ifyo/iRQYQNu4/rEIe1TCNY186cU+u3ZR81Z7DsnyXiD3q+b3QdbHosBolIt/2wyYL5i459/2/vrbbBzgWpBFTG9JcZPd6VBuscN4IMWqs/4GwcIh5g5JxJz1K5qz+o8QWC63cd0IbHYg6RUO4S02Okrb7KCUMVjBhhs5yrAWxz9IE7P19fWfF+Tnv8/9q0T63o3AWIAFQwNScNP/xAuyIUmx9ERJmmVzOR6ZdUccCbjWryhn3h/zuHLtb4wvFiS9evPwbnANtuwtq3RJTqF9OWYFo8iesET2ukeGnXlxZ/G4QKDROVI6I0/0pHkb7OfoGxs851WofiktDnNB88Nshu5frEPDzpSecBYLgP2g4l/ScbKANU/4OxuYyUjC0EhhrH5vh8AQWfOhRBzpSaYjwWahwPd92ScfWZ1hwWCy4HwzUvOGyxFxOQl/acABgykDFFwehr6OyUyvOfWhyfOjR0aFP9kyqnl9cje8Laq8H+yXfioLhT7tyoIEfFcy1wnYwkW9kL42IyX7RmIk2Cf3OUMJ8iX5psJAH0y9fx/JJZ7PLtZKkjS78rlsVQCoqhlOr8T88FeJYMUoTwLJPF9m9ZBk6qeQJ/FTxWZvXAIfQLX94Hd3hpcuwMwOXxJyZxb5khYM7nDb5Y29KMcOZCIZCtAQl0jZ09jbUu33Stv9SZXGfs3DI2tfjoMRJg+42RUaHMhDkqnfgkmM5hLhtFY1kC9/QpXNJ+aiQAMjr+GwYF3+LgI4XpIpCcpl5udYxZo/PLCffvDDDzO3YrhyG99VNoehaUiLX0WVKvBtV/LtszaXgCfDfXKPeqi19DTCwa97z2Q8uRe8vz0E90hz8mWNAZ88idh2VEaboWQi2UIaN4KeDJCdA19KZz7Y+k8XzKQFC+V+QLaQpAURTEbboaLKzhLaYk2irKhL5nW43VybenDzw1hQHSrBApXJAM5xJLDs/Vgi21lRhGWjBAMlFPzmhtqsop195wiWY8LMMiXzJwEDuWD8FM+Va9+Myejtr++/idk/CaOMLGK4m854wxFD1rwfz0jmB/1SnTfjuUD4P5BIRksW3bgdp2U4jTskYIp+wycjYWbdqfYVBWaqXwnYHvfm9idqX7IMX1XqxG0FL6FcRuIfhFk48QfIzmc/KcWuzszYwA9xDVEOi33rrAy3RHV1ypkOP8rIuNR8XKfB9AcS+hGOdEiAyTrUop6wd76KXjyld2o7vI5Jk1k02LqTFGDX9D5uBT7vY9LO4ZK/15oKM60XoRkGWDKSxRUWrl70CzKyv9c68fVB5EyqMHPJIjTzCQo0WCGe65rhQtuGkxzpSgZL2WzWSEGGOwANFh/4LBf8thkUrinetyzBmVy2z5A5/L5phSVbWjFc7U8OwwV3c0YOkgFnope4+gTMff3whhtoYcniAn/jhnkdUkZv522nfJulil57u6Q6DygbuVMSnwyH/1UMV3vAvK+mwHI620rqkdiZfpgNZIassRE5jSO+XEYGfnuDfU0TZdZ0AYbIJohsmKE/oGbfRpJZV4wneVy3gbdafa50AQat7L/7NqQ1y2hGox1G26N9iZJYGKvdMJj31Xy9spVnnU9Q3kKHbQyZDwlE+5yLmDPRSSyElfsckAuVOtnu1jPPTaj67+8OFFo0pWg4t++DaB4M9KXFcWT7/a1jMO8Kyor/ivFO2sAnmvlvfh4ZjDuVou7cXLNoe9iXV2Gu9vWNo7OnF8iG//5/2kTB1axvM2Tu2/vO5zbTQ/f8frkMZFZw2WcneE6AbPdfrBewUtk/1KXby7AGHGo3bnJUR7CQLwt0gIHf3zRsI3TWQ89vd7v8sjf/q/h4hGFRDqK5R2zctt+TdWw3YVwRLvCrW95xHXLR747ZrZfo5Vl5C+Wz7GHAnRl0xEZvcPMJKAO08XwJxkn406ebQY97XIds++/87z63PzJkE3xGQiMoGmTTDNvpDYefb28KAKxQeLr9PBz2HPcMGM5xHXIRv1a/Ofml81VKB/hUiUM7E0Zz4dxDZ3TdRqbr8FgazqVyBsuVbcWX+CnIqtv42JKBziODeO6xM94pORkeEuTS8fkIp9u/ftpWqVzxAy07Gmhc1VKYnNEG+BiO3coLuyNr5YP9LLaGIb8ATZbJmQ3Z7P7Bio7vKVUr5Iij0UB/rmpyRidqZTcrKzw0rVyrkwNyskfOM2QDYjnUkUKn9dWeSAYirUNad88Uco9RSYbKKMxpQtnOZOVnzAF/0migj4KhOY7NfePSGTC3dFbpRUIWOj1udDTo6W5VRDZc+H+VFQB1xJ705Z4r90oHpJWrldZpNmCH6AAyw4AHkHnHjx0GrzptVaqveNwdUK1Sfxt8qGvdw8PDfh/8j3vM3Nt65dXU8q0MPNrZ5T09ynY7wIe/43DAUrk62Qm7lG+nrZ1J9bXFYthqk3pnM5budLNTn9R+IxXFVtnef3PCgzp5s79d+QNUPhygq1YPJls72/VWqwOs1apv72xNDsA/l0t/9LhOj67s8mEDP/5ppv9J+w9IiSINrRXWsQAAAABJRU5ErkJggg=='),
                      radius: 20.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150.0,
                        ),
                        Text(
                          "Vaibhav   9.00 PM",
                        ),
                        Text(
                          "Good Morning Vaibhav",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 150.0,
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 40.0)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJgAAACUCAMAAABY3hBoAAABFFBMVEX////I7f+U1PMAAAAAGDCw5v8ARWYAO1wndpXL7/+PzeuY2PaS0e/7+/vO8//w8PC3t7eLx+Tq6up9tM6Cu9bd3d1aWlq/5feHh4cANFcAABxDQ0OxsbGXl5efn59Sd4gAL1Rzc3N2qsM3NzcAJUAACiZ7e3tmZmbU1NQODg4dKjEqPUZhjKAkNDw/W2ghISFIaHe78f8SGh/W+/8AABVqma/Hx8cAKFAqKioYGBin2fGqy9lXdYxNTU2Zusqy2eqbyd4AH0rr+P82TloAZooYKT0KFicjOUwtRFQ4T2MfVHFEZ388WnV9nq6Jrb5ohJhKe5hRYXUqRGKwu8UAAD8ADkJqgInW5OyQqrEAWoN+kKFOjKmxTt4RAAAQS0lEQVR4nO2cC1fayhbHDa8YEgIhoSG+gCgiCpRCgwot+KparNbjube3t/3+3+NOMpN5JJOHFtu71r17rXNaazL58d979uwZJrO29n/7v/13W6lam1R29jubJ90ssO7JZmd/pzKpVUt/kqq2Ve9sekBB62526lu1P8FUrm294RGx9marVv6tWAf1FFSIrX7wm6BKtW2u96Ktu137DRG31eI+fNQ/8qw/4v66tfW6VOWd3QDP4dGg0XNsHZgBzP3TdnqNwdFhgHB35/WirbS9yTyrD5hsQ9O0YlEBlgHm/lksgn8ybEDXZy7f3H4dh5Z3TqinHB41bN3QipAnbIBPM3S7cXRI3XTyGqpVPlJPOGo4LhSfiaIDcE7jiLrxY2XFWDUqPRwObD0FFWbT7QEl25uVpt2dU0osOzUVZrMp2U53VoZFyXXUA2I9hwoakK13tHLRtkg3bBjas8SiZNOMBumkq8hqJZxQRw39pVgQTW/g3Nb65cxxgFPXwI7CUkDMyfJ0Os1PZWDRKUSzBzip/eIIOnnrd8WewY0tRZlOTUGQVEk1Z7P5fD4zJcGcTvlwRaPnd9C3k1/h2omVqwhUMiVgqrp4+Fo4Pj5uNsF/yx9zcywBODn8UWjRfqF3Yq4GRy7FU0oQBFWd3xVEsYDNEpc9UwW/MqecT2M0fpnMD/u+E5QLOBBIJQgQa3lcCJpl3Zsq4AbCBZ2qaI7fPVsv46qj2y9tLSQW1MrlWtzRYlFoX2aAzL0sJJtmX6Km67+i11Bn3ahk8kgsgCXdh9VCJloPqneRJOUzLFtRH75cs22fKxBeSt4Xy5PLiuJyRbuHZOCGfIDM8Mm2n8vl+7HHhhdwIsaS1PtjrhexHftk4CbWoYrWe5k3K353ZLiUoomxANfXOLmgZg8qvtxkhn5F8zvnswqhCdaLlYtgAa4PzSSuQqE5U8kdrGhYs2dk2vIpT69inuISUugFTHxSKY3zdLhizU5Tl7XlTQ6Xogg01zi6O7LO7BHJQAN0UsNkm2nJUOBfMlxThkudpfAjtAXtf6YPKNrlszoACvxLIyq83Cfc4f4Y3zGBZGPmRibQjMtndIAamgzReTXENcMBZjlX8WiiKkSSFXX4rJM0NW3Hu7TrUFx0loAR9ujDiHZeXsaSWfMAmUm37MDlhk5qRza0aL1AiPmCWT/lvJyJzf9ijwVjNfM7QKIzqyehwOdwzRGJ+JgHJsu9GDLxQ/B2mszvACfVBDDYI0d2HJeg3iPnPRVdsHxG1sVotOUilswepemZByjjU2EQ5gLJVfQDDBqo9J0lv/wBV81CLUhTKszQCBA/CYAzyCPakSEs0C4CW8r5PEYr6o9LUFiHlWuGwQSBdiaccb6J44JTyC7lyFCH9OyDB2YZecrcCZKcMezHu6UlJoHRXVOxYc+MmWyW4MLJkPTIIseRoFkPTLyT86wBMBn0Us2+o+uhZiBfIGcSMg0WZx+j55pQsJGBBeMEPnEljrB8SDhZeSQjAheM7gCKMUqQDArWIJ+laPK4UPAvFR6YT6ddNTEY99NRzizCZPYxigvm1r6eEGAoXcAcFsP2E2l2zAt+Nsz0flyWLXWCgil8Lphgm/q7WLK87EDNLD6YIClByTr8KDtAEZbkSNcN4JHHZ/FcwKBm4QQbdiaKMn4ug0l/GJ/CoI0LxwXLTlAsn58uC83m8V3k56MeNYxO/2U4StqkF0dyCeCZd1YvEexdT3x4d/Y1QjBgJC/ZcMTk1bIwVwzwtRGpAoHl818ek8Ee5+/kdxE9SGBShjaIyhhoga6HL42OMMF088HDXTLYhylIuflo5UmUKXDE5CzoVbuB0D+Lbs9LVMaXJK78uzt3JS8GTDgLhH83XP3AJDZIIxgEO1sFGCXZICKVwSRGhm+NN45gMvC8aRqwfAKYRELa5tfYJW9N8xB7kj9602DvksHyXxLByFhueIugb4NBNgnUFXGehGB5Z5rENXXAhCAfB0b5sghTWXDBAK469dKEvgCDLFkv1+IFE+jwh/0ysC4Fk8UIj9/xnkwP5iob2xLlS33ESRhVb7mijy/SYj3pkmVWI5hgkujxSoxNNmHAAXyAZdViP6YAc38asCQuql9mBpyBvMKGmHKWBJaWLKkZQTrDGarHyWTb7ABejKpUqAZToSU2I0gLHD82J/rhtA1nsaQQ81pchV4CHWSGB8FO47z02k+ZxXxbERjpcV70v6W5yl225CmmaXFFYAIB86K/S9dktUDxmhz73mddCZiEUywqY+m1MpgtGviKadwIjm01glHVYiOUL4LZIj7v4yZXDRbOF7Csdp6RLTxL8GWqNuh84YTKa++Lya4j+1G4SNdmvDNT9WxgC7/PyXDdk/4a08uvI5xf06SxZLK0bZBEBtfw6AxbfwWwtE2EwOqrAIsJsxWC6c8GU815FNfcTJVyGDB9VYqpiy9ORMUo63+lJVu9K9X5ubXg1rLuJOrJmqUjiwN7Ua9U58fWEszG3cl2EEvOCI3jp0UqsrheCTdYUHksRYIdP5yLzR9jBMJiAVv7+9xKRSZReSwbzGNbLFiazK/OjkXx/O81GoZY5l9rtX+IzS/qcypFOZz50ViJwZKrC3UhWqL4z4O1C6xThuISQCkFwJtfkyWTzjBYeKycsNVFGrC/miIAA1MalXWi18AUtFl+Ahecc1esI8BQdUFPeWE91vCHeSV+uuty3btc4rFb1Kn5oAlum6UvlntFctLAsxGlEarHUAWbclopjdW5K4coFrxq8yLI5c1ZS3+5YNbdXB3H6k9NLMMV7NouW/MbMWCqOfs22vO4xCfYCEumwiZLHzxRrebo20KKkc0kUyCv5t+ludAilJaomDSWvl9mN9oiA7ZWImjmxRoDJoq5jfeD72okGlFM8yDYhSg0r8SJjF/CqtLi2/VGO5fbC4C5aIJpmsIFWXmArnQ1y+Xa7U9zk586pClOY7x5ZWgmzvmA6nj27f37nGvokWIzZscEDH5PMmDtbP9e4gWbGj8TP/Ci/9JXLKOHvpRV1dnldTsHDT3RSxfE5v+ifyo/iRQYQNu4/rEIe1TCNY186cU+u3ZR81Z7DsnyXiD3q+b3QdbHosBolIt/2wyYL5i459/2/vrbbBzgWpBFTG9JcZPd6VBuscN4IMWqs/4GwcIh5g5JxJz1K5qz+o8QWC63cd0IbHYg6RUO4S02Okrb7KCUMVjBhhs5yrAWxz9IE7P19fWfF+Tnv8/9q0T63o3AWIAFQwNScNP/xAuyIUmx9ERJmmVzOR6ZdUccCbjWryhn3h/zuHLtb4wvFiS9evPwbnANtuwtq3RJTqF9OWYFo8iesET2ukeGnXlxZ/G4QKDROVI6I0/0pHkb7OfoGxs851WofiktDnNB88Nshu5frEPDzpSecBYLgP2g4l/ScbKANU/4OxuYyUjC0EhhrH5vh8AQWfOhRBzpSaYjwWahwPd92ScfWZ1hwWCy4HwzUvOGyxFxOQl/acABgykDFFwehr6OyUyvOfWhyfOjR0aFP9kyqnl9cje8Laq8H+yXfioLhT7tyoIEfFcy1wnYwkW9kL42IyX7RmIk2Cf3OUMJ8iX5psJAH0y9fx/JJZ7PLtZKkjS78rlsVQCoqhlOr8T88FeJYMUoTwLJPF9m9ZBk6qeQJ/FTxWZvXAIfQLX94Hd3hpcuwMwOXxJyZxb5khYM7nDb5Y29KMcOZCIZCtAQl0jZ09jbUu33Stv9SZXGfs3DI2tfjoMRJg+42RUaHMhDkqnfgkmM5hLhtFY1kC9/QpXNJ+aiQAMjr+GwYF3+LgI4XpIpCcpl5udYxZo/PLCffvDDDzO3YrhyG99VNoehaUiLX0WVKvBtV/LtszaXgCfDfXKPeqi19DTCwa97z2Q8uRe8vz0E90hz8mWNAZ88idh2VEaboWQi2UIaN4KeDJCdA19KZz7Y+k8XzKQFC+V+QLaQpAURTEbboaLKzhLaYk2irKhL5nW43VybenDzw1hQHSrBApXJAM5xJLDs/Vgi21lRhGWjBAMlFPzmhtqsop195wiWY8LMMiXzJwEDuWD8FM+Va9+Myejtr++/idk/CaOMLGK4m854wxFD1rwfz0jmB/1SnTfjuUD4P5BIRksW3bgdp2U4jTskYIp+wycjYWbdqfYVBWaqXwnYHvfm9idqX7IMX1XqxG0FL6FcRuIfhFk48QfIzmc/KcWuzszYwA9xDVEOi33rrAy3RHV1ypkOP8rIuNR8XKfB9AcS+hGOdEiAyTrUop6wd76KXjyld2o7vI5Jk1k02LqTFGDX9D5uBT7vY9LO4ZK/15oKM60XoRkGWDKSxRUWrl70CzKyv9c68fVB5EyqMHPJIjTzCQo0WCGe65rhQtuGkxzpSgZL2WzWSEGGOwANFh/4LBf8thkUrinetyzBmVy2z5A5/L5phSVbWjFc7U8OwwV3c0YOkgFnope4+gTMff3whhtoYcniAn/jhnkdUkZv522nfJulil57u6Q6DygbuVMSnwyH/1UMV3vAvK+mwHI620rqkdiZfpgNZIassRE5jSO+XEYGfnuDfU0TZdZ0AYbIJohsmKE/oGbfRpJZV4wneVy3gbdafa50AQat7L/7NqQ1y2hGox1G26N9iZJYGKvdMJj31Xy9spVnnU9Q3kKHbQyZDwlE+5yLmDPRSSyElfsckAuVOtnu1jPPTaj67+8OFFo0pWg4t++DaB4M9KXFcWT7/a1jMO8Kyor/ivFO2sAnmvlvfh4ZjDuVou7cXLNoe9iXV2Gu9vWNo7OnF8iG//5/2kTB1axvM2Tu2/vO5zbTQ/f8frkMZFZw2WcneE6AbPdfrBewUtk/1KXby7AGHGo3bnJUR7CQLwt0gIHf3zRsI3TWQ89vd7v8sjf/q/h4hGFRDqK5R2zctt+TdWw3YVwRLvCrW95xHXLR747ZrZfo5Vl5C+Wz7GHAnRl0xEZvcPMJKAO08XwJxkn406ebQY97XIds++/87z63PzJkE3xGQiMoGmTTDNvpDYefb28KAKxQeLr9PBz2HPcMGM5xHXIRv1a/Ofml81VKB/hUiUM7E0Zz4dxDZ3TdRqbr8FgazqVyBsuVbcWX+CnIqtv42JKBziODeO6xM94pORkeEuTS8fkIp9u/ftpWqVzxAy07Gmhc1VKYnNEG+BiO3coLuyNr5YP9LLaGIb8ATZbJmQ3Z7P7Bio7vKVUr5Iij0UB/rmpyRidqZTcrKzw0rVyrkwNyskfOM2QDYjnUkUKn9dWeSAYirUNad88Uco9RSYbKKMxpQtnOZOVnzAF/0migj4KhOY7NfePSGTC3dFbpRUIWOj1udDTo6W5VRDZc+H+VFQB1xJ705Z4r90oHpJWrldZpNmCH6AAyw4AHkHnHjx0GrzptVaqveNwdUK1Sfxt8qGvdw8PDfh/8j3vM3Nt65dXU8q0MPNrZ5T09ynY7wIe/43DAUrk62Qm7lG+nrZ1J9bXFYthqk3pnM5budLNTn9R+IxXFVtnef3PCgzp5s79d+QNUPhygq1YPJls72/VWqwOs1apv72xNDsA/l0t/9LhOj67s8mEDP/5ppv9J+w9IiSINrRXWsQAAAABJRU5ErkJggg=="),
                      radius: 20.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150.0,
                        ),
                        Text(
                          "Vaibhav   9.00 PM",
                        ),
                        Text(
                          "Good Morning Vaibhav",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 150.0,
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 40.0)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "data:image/png;base64,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"),
                      radius: 20.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150.0,
                        ),
                        Text(
                          "Vaibhav   9.00 PM",
                        ),
                        Text(
                          "Good Morning Vaibhav",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 150.0,
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )
                  ],
                ),
              ],
            )));
  }
}
