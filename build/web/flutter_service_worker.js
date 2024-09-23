'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "32af570c94486a6852c6311e8a42d356",
".git/config": "9aab0442fbd36f86ae7de7c7d214a0c2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "34849738d36d3718c5112b3b136e2941",
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
".git/index": "30a34c9715164f5e803d0ddef8b01e26",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "ff3f4a46ccfdff9e13767cfdbd1d575c",
".git/logs/refs/heads/main": "541343d93b55b9bb0ebc936c8f619f77",
".git/logs/refs/heads/master": "1ae22639840b222cf4bcaa6423750e4d",
".git/logs/refs/remotes/origin/main": "55c7307ae9f8e53b04fbfae254961990",
".git/logs/refs/remotes/origin/secondary": "3e8a8c9b25490043ef24664103a65636",
".git/objects/01/9ad40bd1219eed6f2f3eedcdfc7112e73bc8f7": "485003fd471e6208e5a35bbf5ae3bd83",
".git/objects/07/31a34d58ee0b8f4457ae90ff49c8c6f8479c03": "2a736b58f5b56f22d7769b8f292c1824",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/0b/51d1ea71af50a22ac901bd79c3b48c58362907": "c7bd42039b6aea805d1d7494ecd4ceaf",
".git/objects/12/475bb090fc0704e87c9eb66b94692de74d43ad": "d700640ff480c812022509e28d7b751c",
".git/objects/16/45917dafde02993c36ca54dbb2bf1f17c4b7c5": "2de055690f10f6d579787260d3e78eab",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/2c/df22611db328e3ebb41a8cd1e971eccf0174f7": "e22931a9cd12a03e5bba63a42a8a9d8d",
".git/objects/2e/d6344c3dd1dcfdf777a64a447c9077077a918c": "53fa4d82378ec57c90400a4aea67fe83",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/35/59c878b83fd76a79004ed45cc2c906e98d475c": "367876cb6f08a7a13a9c42a369e36cad",
".git/objects/3a/50bcf246953eac45889af16d2b3677deda2eba": "8088ab04e577ee09b6b83d07fe7586ee",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/3c/47f1e57c33a8455caec7c74e9bced86b88479e": "1263ae5a265e93e6af5698418e7260bf",
".git/objects/3c/4da6f12cc4a4ae3411cae51716529e134524b2": "8c72471551ae84268e8566f6f14580b9",
".git/objects/40/0d5b186c9951e294699e64671b9dde52c6f6a0": "f6bd3c7f9b239e8898bace6f9a7446b9",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/47/0fb9bb8b3f2662c469d6d29a186f035bb6e2d4": "ed8d7ec6af02483961dc389f76ffcc67",
".git/objects/57/e384d54d56a0cfed3454df31f02900d7bd86ac": "f7984077a2f9b5a653335665434262c5",
".git/objects/5a/1b6a0c84a897c45d14bf0b2a3f2b187d22b442": "40a93cfc5c7353da0bbe3b7b0c23202a",
".git/objects/5f/a520b57e023edfa3569ebc687bd299f0f0be8b": "42d385c5bddb4f6264602914697278da",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/70/2a5290fd2f1b4b37e522cccfb793e812e8289e": "d38c2ef44861e44ba1c2371253eb2e1a",
".git/objects/76/a66160afd9f1d2a20fd2312a7ab8bd8ccae4dc": "dac04e2f98d556a5fba997e51d885b91",
".git/objects/78/c3e2cf03a8c0c23bf5969a8f6f0f65843423f8": "1dfb463084e0935f4e2fce6eb868dde9",
".git/objects/7c/c3d28012cb677b9f77b79bf725e1417737b28c": "b6f6ca3942be022d202c12952993f08e",
".git/objects/83/71a88a7fe94ab541a50570c499dabe56ec6295": "1fd81d0e536ec7a4615d4e3618d32dcf",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/86/65c56b897b9beb5e6a08aec17b5867ec991a8e": "944ee0cee115e66464ecb709f02bbf0e",
".git/objects/89/2a55fc41f0a952914458766c2c9e5a639fd0b8": "9754cbeb607385568aa7825b8d703e02",
".git/objects/90/4b96d1d92444577afdb9d26a31dffa552dbf7e": "0bcdce9d0bc7969a1886d62371370bfa",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/a4/269c967c1832ea7ac5aa7f34c9a121835f2a8e": "dab8067580a8dc27754f9460a7ba54f4",
".git/objects/a7/de159a611fcef36bbd5244ecb0d2a78da05815": "6400f6864a087306a1fc0ca2c296fe69",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b3/f84dee887468f8c85d1e4f059c824369c3fb70": "e1f853457be6bbcec36a7a1aef1e09e4",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/c0/9a3a1710ea39750bcced7077438046c0ae551f": "ee977577e3b09d97bfda2bd578b86e24",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/d0/e44848b72ec2dc343798cba225cc16dcbdedf7": "084e1e48b69820cec555c9729de03a20",
".git/objects/d5/bb50b3c3bc534b51ba035a5e8495ba7af5025b": "81d30e6f235d2cd1960b1a0d917b3043",
".git/objects/d9/59f9484e2c364aeed577140cb672a29dcb0a0e": "6b2257bf80079abced14868813bfad7a",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/dc/68b88b9153472ee458480c4800ff73a438ffac": "3b5be648af429d704c88f3280fdaa564",
".git/objects/dc/89005fdd1836bb1b89eaf1ac019353076a361b": "ad2987e3fa715ef2cce12f7085917c1c",
".git/objects/e7/bd5768782ad47ed52fc69fad044f92148a5cab": "7236a98f3f3c0bbf4c9829018ff22e63",
".git/objects/f0/d8bcbb92a77071c4ba9289c9e93a48a1c187c6": "0deba100416a4e9ca4423775cc995f33",
".git/objects/fa/4c4146b88b61bf422fddf285206f26f04e6880": "d58a0726c8eaa3a7745a46e86754eaeb",
".git/objects/pack/pack-d6da1f3dad31d2b546fd2eb2c7e39417963ac824.idx": "73248cd544e2ccceedb09c961976fc20",
".git/objects/pack/pack-d6da1f3dad31d2b546fd2eb2c7e39417963ac824.pack": "b3dc2b38e05a31360f27e3b524138042",
".git/objects/pack/pack-d6da1f3dad31d2b546fd2eb2c7e39417963ac824.rev": "376b2748929ee311019d5da5ba742a1f",
".git/ORIG_HEAD": "5c1bca67c82455143a18a119d33e9ee1",
".git/refs/heads/main": "ddec79f4f2dfc07275b822e3737164f5",
".git/refs/heads/master": "35f999c9288b8e9ba5e28249f1c3b070",
".git/refs/remotes/origin/main": "ddec79f4f2dfc07275b822e3737164f5",
".git/refs/remotes/origin/secondary": "f430a3935596c526c9ce80851e1fe872",
"404.html": "40d1eac948b9676790e5850c262d5eee",
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
"assets/fonts/MaterialIcons-Regular.otf": "dba821f825cbcfa14b7dd3f7c6ed6369",
"assets/NOTICES": "645ae5989c1601d2e716203c63a86081",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"build.js": "216e19ee7898869fa792fbe4e17cff6b",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"CNAME": "bca0dc55649832cd17732d6bfe19d98b",
"favicon.png": "c6ffd74cd5146e9f001ca2f7549ed84e",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "b189ae37bf462f36a988e65b7f31889f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/logo.png": "c6ffd74cd5146e9f001ca2f7549ed84e",
"index.html": "ed9bdc6ce8058aedb1fca193a9ddcf9d",
"/": "ed9bdc6ce8058aedb1fca193a9ddcf9d",
"loading.gif": "917cf8b79ee6f970a6e12faae132758a",
"main.dart.js": "9e0072d5ab1b213aa10da05ff88866d5",
"manifest.json": "3c85fe627b251384e98d984f6eba8126",
"README.md": "9a29b808a490ca4ced757f46a5bd6f1a",
"version.json": "b492f1a4da66bef905e542cdbcc0a4a2"};
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
