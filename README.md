### [adb mousepad](https://github.com/warren-bank/js-adb-mousepad/tree/gh-pages)

SPA that translates mouse events (in local web browser) to pointer  events (on remote Android device) using [monkey](https://developer.android.com/studio/test/other-testing-tools/monkey) over [adb](https://developer.android.com/tools/adb).

#### Credits

* [adbkit-monkey](https://github.com/openstf/adbkit-monkey) by the [OpenSTF](https://github.com/openstf) organisation
  - this library provides a Javascript interface for using [monkey](https://developer.android.com/studio/test/other-testing-tools/monkey) over [adb](https://developer.android.com/tools/adb)
  - it depends on the Node.js [`net`](https://nodejs.org/api/net.html) module
    * which is used to connect to `adb` through a TCP socket, which cannot be done in client-side Javascript
    * in order to be able to use this library in client-side Javascript, I needed to&hellip;
      - [fork](https://github.com/warren-bank/fork-js-adb-monkey) this library
      - make a [browser build](https://github.com/warren-bank/fork-js-adb-monkey/tree/v2.0.0/browser-build)
        * which can be loaded from common CDNs that mirror `npm`, including:
          - [unpkg](https://www.unpkg.com/@warren-bank/adb-monkey/browser-build/dist/es2020/adb-monkey.js)
          - [jsDelivr](https://cdn.jsdelivr.net/npm/@warren-bank/adb-monkey/browser-build/dist/es2020/adb-monkey.js)
      - [polyfill](https://github.com/warren-bank/fork-js-adb-monkey/blob/v2.0.0/browser-build/webpack.base.config.js#L24) `net` with [`net-websocket-polyfill`](https://github.com/AnanthVivekanand/net-websocket-polyfill)
      - use a WebSocket/TCP [proxy](https://github.com/zquestz/ws-tcp-proxy):<br>&nbsp;&nbsp;_browser_ &rarr; [WebSocket] &rarr; _proxy_ &rarr; [TCP socket] &rarr; _adb_

#### Legal

* copyright: [Warren Bank](https://github.com/warren-bank)
* license: [GPL-2.0](https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt)
