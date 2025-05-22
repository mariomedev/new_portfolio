'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "414f129a2aee94905b4126b9c8d7c06b",
"assets/AssetManifest.bin.json": "1102d7813e8d6f08417f86ea272d28a8",
"assets/AssetManifest.json": "3c4c794674b85350e1cf5b7002d1995f",
"assets/assets/audio/click.ogg": "a564f94814c0ec5bce1c86d5f0cfaf76",
"assets/assets/audio/collect.ogg": "33ab4a57f985379bdf95bc766fc2fb79",
"assets/assets/audio/explode1.ogg": "dca38b88366c36dc5fa620fb429c4130",
"assets/assets/audio/explode2.ogg": "5fe26aa6c3a4d4fc2ce5af82c377545a",
"assets/assets/audio/fire.ogg": "85e98512604a75d36dfbd16b3463100f",
"assets/assets/audio/hit.ogg": "65e092e42155b29ecf34a9fc8ac6d57f",
"assets/assets/audio/laser.ogg": "ce432ac1bfab05652e13f0904a79b781",
"assets/assets/audio/music.ogg": "fd9c0c2f2b2ab813db0d2ee946426128",
"assets/assets/audio/start.ogg": "7e10ddfab4c08008b805d5cbbc1dc521",
"assets/assets/images/arrow_button.png": "eebeb28bb53db56d3675340770a424de",
"assets/assets/images/asteroid1.png": "783dbdb7028ed4c2df5b64f3bc4f5568",
"assets/assets/images/asteroid2.png": "edee91b022c7b3b818401f4ee6f3d7d9",
"assets/assets/images/asteroid3.png": "1d251a4386b36637504eee844fe6c1f2",
"assets/assets/images/audio_button.png": "d05d1e686f039368e81aed0750b86cd8",
"assets/assets/images/bomb.png": "7555cda204812dcecfaaa522c4a473f2",
"assets/assets/images/bomb_pickup.png": "1a4eb5fcda4fb7693c304125212ad410",
"assets/assets/images/exit_button.png": "908a3b269768fff687c12ff9e13586ec",
"assets/assets/images/flutter-mario.png": "93137f8cbdea611340217ecfa094608b",
"assets/assets/images/flutter.png": "c50662c2c3c1e5b2590442dc049e8a56",
"assets/assets/images/joystick_background.png": "f233a7fe16b8c686f7734200f3917477",
"assets/assets/images/joystick_knob.png": "abf7955eeaeeb7ac22bab1f0880de9b2",
"assets/assets/images/laser.png": "52f977c2738dbdb121a3eba7cccecdf9",
"assets/assets/images/laser_pickup.png": "efd6299aff3a9423150575599314bb72",
"assets/assets/images/loading.gif": "b29833343440b298ef141015db83f904",
"assets/assets/images/logo_dash.png": "c57e15879ff3ccdb41fa495f659e062a",
"assets/assets/images/player_blue_off.png": "16246bb31cc6338b1258178258e76ccb",
"assets/assets/images/player_blue_on0.png": "80564e89cd5bf599d51a0168bb062821",
"assets/assets/images/player_blue_on1.png": "c021b2a53c427fcbc354736da4fe8d82",
"assets/assets/images/player_green_off.png": "cf2c4312dba43848ba71785bf4caaa6a",
"assets/assets/images/player_green_on0.png": "43ae9e2eeb86ad2fc6a6f7fb501d243d",
"assets/assets/images/player_green_on1.png": "c3c62a5a8c137f49d9e45d6995e4cf4f",
"assets/assets/images/player_purple_off.png": "7f5be9512c87eaadfb6f4ed14457d4de",
"assets/assets/images/player_purple_on0.png": "20f3633dabdbf045220ad9c8d1e72685",
"assets/assets/images/player_purple_on1.png": "76e6316cd7ead3ad087e2b8302523ff9",
"assets/assets/images/player_red_off.png": "92b96b5d035e8db17507f63f011de16d",
"assets/assets/images/player_red_on0.png": "687b9fe826f83005c17d4932bb6fe2e3",
"assets/assets/images/player_red_on1.png": "9811eb9a56eb8ae775c162daf9f9865d",
"assets/assets/images/shield.png": "257d515966c59ec79fae0e8c6c388764",
"assets/assets/images/shield_pickup.png": "5a00ee27c6c9699374ad6da659b8d4d3",
"assets/assets/images/shoot_button.png": "8138b58a4d36cab488056d633ca7c599",
"assets/assets/images/start_button.png": "6a770bbe1defa45bdd24b86d00ce3e44",
"assets/assets/images/title.png": "397bad8954faebf9d73ad4a3cd1627eb",
"assets/assets/svg/bolt-down-left.svg": "6878ff0db985df4acec37573b65b7f2b",
"assets/assets/svg/console-game.svg": "483b7c7ebfd10a878562e2ea6b8fbd87",
"assets/assets/svg/email.svg": "227269cd7397d9de990051cd03bc6d17",
"assets/assets/svg/git.svg": "de74e73d501402d46e3bcb295706ba92",
"assets/assets/svg/icon-angular.svg": "4fd1aa638d011dcb5df175051f04c446",
"assets/assets/svg/icon-css.svg": "ba41b60696225b1cd762e55d04171046",
"assets/assets/svg/icon-flutter.svg": "ce62676a74a3ba453008c56b9ad7486b",
"assets/assets/svg/icon-folder-blue.svg": "51d0ae9d327032dfd42a70cbef9faf96",
"assets/assets/svg/icon-folder-green.svg": "57716eaab5dbd33194ce56c40b3136b1",
"assets/assets/svg/icon-folder-red.svg": "1aa2c0c4f887c932fb9e95588e3c4d71",
"assets/assets/svg/icon-html.svg": "2f316aab12e6d2287a4d87a5295647a9",
"assets/assets/svg/light.svg": "6ca56588c5a7e8c2072bea1e10109c5b",
"assets/assets/svg/linkedin.svg": "3a72716c2c2306e5602156e1792be07f",
"assets/assets/svg/md%2520icon.svg": "95e0287b5f82aad7a8d5fcf010af8fe5",
"assets/assets/svg/phone.svg": "6d8d2a5f679952259918d6fa2142dc88",
"assets/assets/svg/terminal.svg": "89cf17966f936c2abdb2ba74efc69059",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "757468e3aed7b4cae959a63e71b251fb",
"assets/NOTICES": "2e960b05b582850d2b090b0084cd2195",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "2e097093cdabba2fa9a7cd6949b9e1ff",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "cac51a305349b8e818bd72416ef152ef",
"icons/Icon-192.png": "cf7f1d47a63f24f1e88bf6c7bb9f0653",
"icons/Icon-512.png": "ad624ae99ca6187643aee1baea79cf20",
"icons/Icon-maskable-192.png": "cf7f1d47a63f24f1e88bf6c7bb9f0653",
"icons/Icon-maskable-512.png": "ad624ae99ca6187643aee1baea79cf20",
"index.html": "96cd30ad820e3979032cd064bfadc341",
"/": "96cd30ad820e3979032cd064bfadc341",
"main.dart.js": "6f66a0faf900d19bbfdc80ae5661f5ef",
"manifest.json": "1190549ba2de4e0163e0e755d264a55c",
"version.json": "389a6e6e6f34312743ca5f36467c84b5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
