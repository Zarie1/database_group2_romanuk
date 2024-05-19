/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/4.3.1/workbox-sw.js");

self.addEventListener('message', (event) => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [
  {
    "url": "03-01.jpg",
    "revision": "61ccd31b9a99e4dc0b2115d7a181dc71"
  },
  {
    "url": "03-02.jpg",
    "revision": "0e42c83dcc174ebfdbb611ab0956fcd9"
  },
  {
    "url": "03-03.jpg",
    "revision": "dd23072447e0798b536bd162235d14c3"
  },
  {
    "url": "03-04.jpg",
    "revision": "661a64ee2776ef94b23ba82f7ee50969"
  },
  {
    "url": "03-05.jpg",
    "revision": "6f52dcb2ccb40af28a65a4b796eb918d"
  },
  {
    "url": "03-06.jpg",
    "revision": "2643698d9412e41a449c1edee719fb29"
  },
  {
    "url": "03-07.jpg",
    "revision": "c4a788f41d803f8b9bddb5adc0513be6"
  },
  {
    "url": "03-08.jpg",
    "revision": "4c810503ec4bc1adfd29904056fc2886"
  },
  {
    "url": "03-09.jpg",
    "revision": "9c798bc91f80f84b6b0e7f7fba26d65b"
  },
  {
    "url": "03-10.jpg",
    "revision": "bb5b18b65591e9d058edbc14b02c6ba5"
  },
  {
    "url": "03-11.jpg",
    "revision": "6a88d8f48c63e79c72ec45ae84a8d9ff"
  },
  {
    "url": "04-01.jpg",
    "revision": "4bbafd5dd4000461cef55f669139b17b"
  },
  {
    "url": "05-01.jpg",
    "revision": "8d54b111a4b6b5fb4cd39e4c7261b927"
  },
  {
    "url": "06-01.jpg",
    "revision": "cf2dab320c48c5ead6fe105863629e4e"
  },
  {
    "url": "06-02.jpg",
    "revision": "aa286f8fd6540b7a7b6d36392a63f505"
  },
  {
    "url": "06-03.jpg",
    "revision": "239fa5fb2a9063f1e261ae2db81fceef"
  },
  {
    "url": "06-04.jpg",
    "revision": "a2dbf924afd6a8580ce4a2d2bcd6e049"
  },
  {
    "url": "06-05.jpg",
    "revision": "22f4f542b283cdc3d027eb664424d3c8"
  },
  {
    "url": "06-06.jpg",
    "revision": "12017ddd5b9179e8f53e93044acee998"
  },
  {
    "url": "06-07.jpg",
    "revision": "1ded65fc56da9f0008ae4ef2eacc8175"
  },
  {
    "url": "1.jpg",
    "revision": "f1ea37a492254cc85dd6fd1e89b1a6b4"
  },
  {
    "url": "1.png",
    "revision": "d41d8cd98f00b204e9800998ecf8427e"
  },
  {
    "url": "12-01.jpg",
    "revision": "cc85570b3c89f73291af87791115986a"
  },
  {
    "url": "12-02.jpg",
    "revision": "f2b24c5c4beb21d5302c64b59445927a"
  },
  {
    "url": "12-03.jpg",
    "revision": "61fe98dff39d0887978deb0af605571b"
  },
  {
    "url": "12-04.jpg",
    "revision": "ff2468e7fbb03e034be0ffd7312dc7d9"
  },
  {
    "url": "12-05.jpg",
    "revision": "a126fe17514d81279c677666fd459d9d"
  },
  {
    "url": "12-06.jpg",
    "revision": "c25686b2f77ac7c5a2d4706f43e40132"
  },
  {
    "url": "12-07.jpg",
    "revision": "de17f3eb1df503250bcf1a5a4b533eec"
  },
  {
    "url": "12-08.jpg",
    "revision": "f3b58c768c18919a6fa2ab59ea6627db"
  },
  {
    "url": "13-01.jpg",
    "revision": "b22f06060909d43d796a8ffd4b0743a0"
  },
  {
    "url": "13-02.jpg",
    "revision": "2d2bca0518716a8dfaf37ef5c15e54ee"
  },
  {
    "url": "13-03.jpg",
    "revision": "fec1a3db903dc05c462fb6f384a400d6"
  },
  {
    "url": "2.jpg",
    "revision": "572bc2e4ef3efb7c81bbbcac5f09147b"
  },
  {
    "url": "3.jpg",
    "revision": "248757985bb49f73624c6923057530ac"
  },
  {
    "url": "4.jpg",
    "revision": "407c52446e2e463c4f8e494d52dbe485"
  },
  {
    "url": "404.html",
    "revision": "aad59db8f54de623df74dad3a90e942c"
  },
  {
    "url": "5.jpg",
    "revision": "7e861769b640afa00fcc0ac4b72d9c52"
  },
  {
    "url": "assets/css/0.styles.e06bfaf2.css",
    "revision": "6bc3650a257b7324564d11bc2a70e493"
  },
  {
    "url": "assets/img/search.83621669.svg",
    "revision": "83621669651b9a3d4bf64d1a670ad856"
  },
  {
    "url": "assets/img/Shema.b32c2104.png",
    "revision": "b32c2104c309d360a83d183b6c91e325"
  },
  {
    "url": "assets/js/10.ffdd1b19.js",
    "revision": "6f27c3532be60e76bca8e5465568abd1"
  },
  {
    "url": "assets/js/11.fda23a57.js",
    "revision": "17b4b1432ea3f61de7240ff26aeb21de"
  },
  {
    "url": "assets/js/12.479fee84.js",
    "revision": "c2c034a615c1545e0b01963b0339daba"
  },
  {
    "url": "assets/js/13.19195d50.js",
    "revision": "1de78032411a0c136c0db0969c0962b4"
  },
  {
    "url": "assets/js/14.b620f02c.js",
    "revision": "c47e00178e234471f42ccc2546285565"
  },
  {
    "url": "assets/js/15.db4876d9.js",
    "revision": "9a54d91e51084f77f1034582097cdb91"
  },
  {
    "url": "assets/js/16.71b00e10.js",
    "revision": "b52fa0ab19a62562806b20e72daf1ff4"
  },
  {
    "url": "assets/js/17.49b85c6e.js",
    "revision": "619895115fc8ea86a2d804f9d65160b5"
  },
  {
    "url": "assets/js/18.b55c33af.js",
    "revision": "b31b0c04ee4b199515c4f9f5ffdccf2b"
  },
  {
    "url": "assets/js/19.cc55fce6.js",
    "revision": "447bdb4dd8d4cee00075a7e856107863"
  },
  {
    "url": "assets/js/2.265b9a78.js",
    "revision": "f57e9f1755d4ab96c82e5556eb5a84f9"
  },
  {
    "url": "assets/js/20.c9a27147.js",
    "revision": "18a01ea56b40fc08c24f065896da6570"
  },
  {
    "url": "assets/js/21.6a39ec5e.js",
    "revision": "f43da5ff6a7d25bd2b09a4cc2e5d84b5"
  },
  {
    "url": "assets/js/22.7302c798.js",
    "revision": "74c0b16f13774d4328cb27a8afe7e38f"
  },
  {
    "url": "assets/js/23.12065dbf.js",
    "revision": "09ceb73a5fae62c84c2dc9fde099a611"
  },
  {
    "url": "assets/js/24.83fa281b.js",
    "revision": "184b8476901b5fbaec5463922612bd10"
  },
  {
    "url": "assets/js/26.a1ce5b76.js",
    "revision": "9e7c5a361a41098fb47a8e5465dfeee8"
  },
  {
    "url": "assets/js/3.f6140648.js",
    "revision": "cc362cb24068987426e9655bdb12b30a"
  },
  {
    "url": "assets/js/4.499a1b3b.js",
    "revision": "27c73b27f03785f3e5df3beb2fa3b19d"
  },
  {
    "url": "assets/js/5.c9d8986c.js",
    "revision": "a83c521aed90313eec9d564dd1a80b8e"
  },
  {
    "url": "assets/js/6.4a10f3b6.js",
    "revision": "785f89769cd018df094479be997988be"
  },
  {
    "url": "assets/js/7.fb29eef6.js",
    "revision": "0f38a0676d9ee1b00a64bea1f6e0e759"
  },
  {
    "url": "assets/js/8.cce4fd62.js",
    "revision": "08bfe2392b3540f002e470b59276c162"
  },
  {
    "url": "assets/js/9.73326d59.js",
    "revision": "255f60e84533194dda0653b6ccba0ddb"
  },
  {
    "url": "assets/js/app.151ebf7a.js",
    "revision": "9c4772ee5b8105c7ef03c578bab4dd9b"
  },
  {
    "url": "conclusion/index.html",
    "revision": "ea81d09eea58dfffc3393ccbaa3c1124"
  },
  {
    "url": "design/index.html",
    "revision": "e854266d25ce22fd0d1e710f257f57cb"
  },
  {
    "url": "index.html",
    "revision": "98b721690664a11d3420aaaa8da96dc5"
  },
  {
    "url": "intro/index.html",
    "revision": "920c954fe7792c0edf37df4b567db48f"
  },
  {
    "url": "license.html",
    "revision": "70a2edbdcd1a16b29dc6ec11e14ab937"
  },
  {
    "url": "myAvatar.png",
    "revision": "b76db1e62eb8e7fca02a487eb3eac10c"
  },
  {
    "url": "requirements/index.html",
    "revision": "55eec383502f05348222d079c32a35d2"
  },
  {
    "url": "requirements/stakeholders-needs.html",
    "revision": "2547c8dfe18c89a388197d627b495ef0"
  },
  {
    "url": "requirements/state-of-the-art.html",
    "revision": "3011933b910f9a89482096e768a69248"
  },
  {
    "url": "software/index.html",
    "revision": "ae5347c0080292ebfc5ac59e01720418"
  },
  {
    "url": "test/index.html",
    "revision": "5b5aae9ad2f708606d76b0bf967cba64"
  },
  {
    "url": "use cases/index.html",
    "revision": "3c819ed2153065fe701203fbd9865511"
  }
].concat(self.__precacheManifest || []);
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});
addEventListener('message', event => {
  const replyPort = event.ports[0]
  const message = event.data
  if (replyPort && message && message.type === 'skip-waiting') {
    event.waitUntil(
      self.skipWaiting().then(
        () => replyPort.postMessage({ error: null }),
        error => replyPort.postMessage({ error })
      )
    )
  }
})
