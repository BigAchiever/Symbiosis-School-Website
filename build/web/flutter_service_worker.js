'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "e96b4ac19b7379a56df7a5bd83763a29",
".git/config": "116506f1471d7a76e89162c651dafea8",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "05843d3f08eba687d53e2bc597ac0819",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "bed42eaddeea01d6ff7379aa656c48dc",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "a861f3e35a327ddd1bb86d7976674fc0",
".git/logs/refs/heads/main": "ba11f92da095a430bd11375d6f2ff31f",
".git/logs/refs/heads/master": "a222ec13433ee15541145f3b0d816a03",
".git/logs/refs/remotes/origin/main": "90016bc8f311cef73d4e880576850839",
".git/logs/refs/remotes/origin/secondary": "ba87e2462f0d5e571a7f3b2028d3215e",
".git/objects/01/9c36bb2e74af3394ff531341f7291af6639ed7": "df108b4a9561870295a779822b60f2c7",
".git/objects/03/53e83201328f4cc77296a9475fb78df9cd1250": "a315142a4f431fd1beea6b0afe10a853",
".git/objects/04/7066b1b71710905f5e7843da22ed10184f7baf": "ce505d90075cebec0c3e46c67c182ff2",
".git/objects/2f/06a0b21d997332684e526c27973994bdf006a6": "c8a1f6177fb42ce0b7bc6d0df8e02943",
".git/objects/30/d64717eee828c0ea56088d1da86fa540f3b5ec": "afdcdf2e25d0ddff28c4f2230e4e4fdb",
".git/objects/31/8c98aa7911620ac0fde1e9df5e8a1ee65de044": "fe390778010f67a8555dd3c5f0fc6f09",
".git/objects/40/9754424731d9994765c982d55e949915c3dd61": "f02079fedf45dfef3fad7d9c63a22953",
".git/objects/47/fbe98f1584eb7f3f2f358f2c89f6477f23b067": "6acd83f11ebd0c7799ff56528c0654df",
".git/objects/49/02bffdcf0e3fd665ee8b726bea5f5dacdfd99b": "4736b6f004e41dfe1cbdf3a24ad15056",
".git/objects/49/48849ecc9276ae796bae5dc1d674457d02c0b5": "5c514c8e25d6b5ccb420e4dedaac9457",
".git/objects/4b/e5b75705b2cd097d9c81b1ac19d320299bb88e": "a13e7dfa39659eee1d4527e42fc3335c",
".git/objects/4d/f5691b647f1a75f6943d09d05ab6008458a106": "ea551fdbfb0234ba4f8c8f171f0899a2",
".git/objects/56/7eab8bf1c79ca199d6824af902608877e59109": "5303e7c6215d80d25e07535666616c26",
".git/objects/57/d2e4d717cd3fe5bc44a6fca8fc7c356e975f0f": "7096ed5854be1146284b541db8765888",
".git/objects/62/48405d97145a2b566664350ce420556dba2ed6": "3559dafe5255c236718e740fb514988d",
".git/objects/63/18582638e9e190d12982b5bd0e4805d3d80ac7": "b3628e950fe5315ba03ec0ad257882d2",
".git/objects/88/1450ef9d975e86d01d9fc1d45987567a7147b3": "2b3a9ac6ccf562eb968fafab6c52df8c",
".git/objects/89/3e5091897d23cf99be017fbb46ee0ed1fea4d9": "86c718ae418dd00fd47236f136e661e7",
".git/objects/89/f6324125d6ba0948de84ac41d878251d9c32db": "22235efd72b7c5daeae6d284a727d883",
".git/objects/9a/06bb4b5a4450a8599770a2e62068dd2524dc41": "3fe506c97607f318cd71717f3632b962",
".git/objects/9e/fae8c4f2885c90345afde8600b033274c3cebf": "5909f79f3950d457c6d52b57548777d7",
".git/objects/9f/5ac40515a99dbcfba208b9e81b81755af5fb82": "a58e8225c9b692c335b35a3e41f4c73e",
".git/objects/b5/460941bf88e2030a0d42bcc5728bd7cb912f60": "0cef506a2fa60db4a811bc16306a0f22",
".git/objects/b7/c85277eace633cd4eb84c87b5022b2b58a5ded": "be3d7c42d487936e44970ac459a6e78b",
".git/objects/bc/994f12bf90f3f547758e924675da3f78237a71": "87c695093105d3b05c13b687732e0b8c",
".git/objects/bc/d473f54e8b1672b7bb187936ff9301e3c0d004": "2ba27b03be28561a9de83f1faee0ad54",
".git/objects/bc/da971c707d892a10b8efcdb58819e16a32b742": "e9eb2d5e4200b1d503b54a7df2c52af5",
".git/objects/bd/1a1ec6926f9967abfc310b58324006942c468f": "4e05baa72066e3396cd13f7ba1035e7a",
".git/objects/bd/f0b8200f34cac1dc24e55abc95632a1122d0e7": "9ffae59e789f412170d95a06e608633b",
".git/objects/be/f90a5dcef349e057ea801f96378f3b5d4421e8": "5032a95db61f0ecc18db68e8bed761f9",
".git/objects/ce/07a07c16303e947ccf6d2a06f81c2024effa0c": "0b6a0d982a475a41cfa64f08671aa0f6",
".git/objects/e6/3d5fe333cc5813fca87caada7d19aacaa37627": "e8a8a4385e27d42f6b48f4c9ad4c500d",
".git/objects/ee/8b72f51015219cecd5478a024d9511be2fc18d": "25d1fb7a0403804df9cd7dac17f434c5",
".git/objects/fc/cdacdc61f1a2faa2f52f83d798feee93e63be6": "00a93823b5a11505e8c5f24026e3b301",
".git/objects/pack/pack-6d6e37fe4350c039c396e626b4c7b5fe79a45587.idx": "6b0ad7322b536b140cbc53c9bc1842b8",
".git/objects/pack/pack-6d6e37fe4350c039c396e626b4c7b5fe79a45587.pack": "01cd03022c4ee74eac3a270a1497b1c8",
".git/objects/pack/pack-6d6e37fe4350c039c396e626b4c7b5fe79a45587.rev": "1e2c3c39edca370e8c1639b315056cfb",
".git/ORIG_HEAD": "d25fb4cd487f03cd22a8ee45171bde71",
".git/refs/heads/main": "40fc8283e8a6483ee046d6e1ac41b267",
".git/refs/heads/master": "720fa0b1ee27020080f68db2ae376bb2",
".git/refs/remotes/origin/main": "40fc8283e8a6483ee046d6e1ac41b267",
".git/refs/remotes/origin/secondary": "f430a3935596c526c9ce80851e1fe872",
"404.html": "21df2d1646fbfae848e55300f60088e9",
"assets/AssetManifest.bin": "f7152974a6a8a36ce2d48c8becfc24da",
"assets/AssetManifest.bin.json": "8250c2bf55f6531c08204cec9b22b619",
"assets/AssetManifest.json": "ce253c4ea14e7b809a351856d076fac9",
"assets/assets/fonts/dk-magical-brush/magical_brush.otf": "22842e3ac77483882d784a422e003eee",
"assets/assets/fonts/pfdinserif-1/DINBold.otf": "84a689f5f8748b5848c3dcbfa2be006e",
"assets/assets/fonts/pfdinserif-1/DINPro.otf": "48fcd5814250f4405be88910bfb1484f",
"assets/assets/image/ani2.json": "eaa31ff1924fda1f2f89d2ffabe558b8",
"assets/assets/image/arroe.svg": "8c822f0d09fa99c76e017f41cc79deb4",
"assets/assets/image/award.jpg": "87b1157423f97cc5a49230edad89f57c",
"assets/assets/image/award2.jpeg": "814d9eb767d71b2a5245a908d431dd44",
"assets/assets/image/award3.jpeg": "09788208225a9dd2d0fd07c9457317b7",
"assets/assets/image/bg.png": "22c1017a54469a5d05b0d260b378fdcb",
"assets/assets/image/bg2.png": "4aeac3b49d3e3022659a2a76320fe1c3",
"assets/assets/image/car.json": "eef89bb17d84e77ce99e1a1cbc4bc55e",
"assets/assets/image/comingsoon.png": "8bdbe429fb58eedf69876d18e5a03557",
"assets/assets/image/contact.json": "eaa31ff1924fda1f2f89d2ffabe558b8",
"assets/assets/image/dads.png": "99ddee4d6ecbda7152ce62c6a8e32fad",
"assets/assets/image/dot.png": "240803f1510a8a21b7be51b4846a2f8f",
"assets/assets/image/element.svg": "8ed4fcfa4b9f0b2b85a00eda3d6f1825",
"assets/assets/image/error.json": "4a61d51cbb1148f2b3a8a3cbbb027f63",
"assets/assets/image/fb.svg": "3b54f84534999f24e78efb2fdd4ed1b2",
"assets/assets/image/hat.svg": "9c0eae2a559a6b15ab13f119cc459c6a",
"assets/assets/image/hero-background-1.png": "b549692c1e34f0b1f68a44ff9db79d17",
"assets/assets/image/ig.svg": "d4222a15684c9192af9c3af460d34d5e",
"assets/assets/image/iti.svg": "656dab73522509d4263b9cab5f4b6ec2",
"assets/assets/image/kids.jpg": "430b15df02e44aeb2396464efc52fdc0",
"assets/assets/image/kids2.jpg": "8d60187f3346142b0820a9ac962773ee",
"assets/assets/image/ln.svg": "194301918f95bb08124e3796f0ddc4cc",
"assets/assets/image/logo.png": "c6ffd74cd5146e9f001ca2f7549ed84e",
"assets/assets/image/map-mobile.svg": "fdfd613f8bee2b49eb7bfd1b86e3cbd4",
"assets/assets/image/map.svg": "7aa0ac778df1404739ecedc414d5c44a",
"assets/assets/image/math.svg": "79767778ec0732d8b3d2b3122bfaa145",
"assets/assets/image/paper-background.png": "f05de2fe8091aa2f68c702f7f482faf7",
"assets/assets/image/plane.svg": "cfc4019659e92d00024db06302ef2b14",
"assets/assets/image/puzzle.svg": "9eeacc1224f482a94e87385f8196ddac",
"assets/assets/image/result1.jpeg": "6178b94aead7fc9ab4eca92f18bccf41",
"assets/assets/image/result2.jpeg": "2441816097a5908c1c596fa9911a7494",
"assets/assets/image/rocket.svg": "12711eae5b69f2f682468ce1d59fb5ec",
"assets/assets/image/social-media.png": "13b59ef05277392db67383d794240d07",
"assets/assets/image/svg1.svg": "3d24580c1e0d73a2145c4cdf727fea54",
"assets/assets/image/tower.png": "7166a4d0395c7c8948c8a563c3a01b9f",
"assets/assets/image/tree.jpg": "8d9d9dc6305f8b2af23f0a6fc7322620",
"assets/assets/image/yt.svg": "562924efaad0d4899e00c135d617e97f",
"assets/FontManifest.json": "99e2fea253fef2c319a06d8cb1563cc2",
"assets/fonts/MaterialIcons-Regular.otf": "e0318cb85e35aa67c59f44399b30f0f4",
"assets/NOTICES": "c64a4a80f9de42df81672eb720649580",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"build.js": "216e19ee7898869fa792fbe4e17cff6b",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.worker.js": "b31cd002f2ed6e6d27aed1fa7658efae",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"CNAME": "5bd7dace55f6e2c67b5009499b0895d9",
"favicon.png": "d91af95000f274060715dbc1f72dde2c",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "f064115a9e5135e055abd8e46b8e1bb3",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/logo.png": "d91af95000f274060715dbc1f72dde2c",
"index.html": "56f13050f3468e48ac20672e9b6ae377",
"/": "56f13050f3468e48ac20672e9b6ae377",
"loading.gif": "917cf8b79ee6f970a6e12faae132758a",
"main.dart.js": "e5018bfbd8418447ee03fdb755165c3c",
"manifest.json": "3c85fe627b251384e98d984f6eba8126",
"README.md": "9a29b808a490ca4ced757f46a5bd6f1a",
"robots.txt": "305808b78ef246968a562a24e86cc37f",
"sitemap.xml": "991c306dd4849b5fa029b6d55b232dde",
"version.json": "708182d47307fcaf9937a189725bbce9"};
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
