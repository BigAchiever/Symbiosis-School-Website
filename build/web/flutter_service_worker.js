'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "16fa968519dc12342098b0d768483e70",
".git/config": "67d074c73d776a6fe336b50705f3af00",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "a00dfc7b4977d9ffcb2c9ead5bc16654",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "c2de6d29884657672d328bee326f16d0",
".git/logs/refs/heads/main": "25f4bfb74d01346deeb31837495ff1be",
".git/logs/refs/remotes/origin/main": "494a56ff1db632a32149e310ef8e9678",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/09/ba29c772b37bb6a5a6208cc6329efe4f860715": "eb3fc7b4d5fdbcdd2c374b40a838c2c1",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/0e/383722bca413c2ebba82265f86f3dc3cfd6c5d": "fd128ab38d037914ae68c9bed3cd7a33",
".git/objects/0f/c4537f4abed0690af3498dfe5c2ac2c35d0965": "233187767b2004edf9ecc68057aeee5f",
".git/objects/12/c71900b05d28d1454443fc9bb137447537acbc": "239da63c38c431704adb4494d1aee8fe",
".git/objects/16/2ce452352335f0c47d431c95e5ba90bcc708b0": "1a17a3ced9ed74ae171aaa78898a29e5",
".git/objects/19/3eba0ca2cf13d7f40fa74de4e9c8eabc46d48f": "f047bde66a5bf7e11cbebe0cb469244d",
".git/objects/1e/4605b419526d034fd080b94b7568d6bccda8f1": "aa903ec7f72b7b08c0e976ee2c9c093e",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/1f/686edd1465272558af328ca43cb7189a0059e6": "5e83820f6d3e5392693d45bc239b2b61",
".git/objects/2d/3d41785d9c11e6063a8f8f7c528b65378a561c": "e6be594f5dfebe0ee2036674e85aca32",
".git/objects/35/17bc76eaff50d9728f143f2e13e33311a4a5ed": "1ddc9a6727fbf24d2a00e2c3326cce3a",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/3b/b4889c529ef5248242eef38885d347df311ddc": "863885efd53cd3594157134109d3a726",
".git/objects/3d/d029bc14232c513c9314910f786eb20f5c46d0": "6f688d70136ef4615fef70889a98e7cc",
".git/objects/41/c73a4241c8ee26895946bc3e3a5a107455716a": "9abacfe08caf6c4a1b0b9a5d1b1c603c",
".git/objects/44/79da9168d33988145a857797431e1b6d642baa": "5c0325dcb74214ae5b0a8146b7124293",
".git/objects/46/c5b449a8ce029a09b2ed22f9dd9d381ab3dc54": "b868c7bbd846e4457342329a6430fbe5",
".git/objects/4a/7e424afc5bbd3308c61c1ef4a09cd56a40e5e6": "95aedabac35a999dafe172fd074b021e",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/5a/cbe62a09c63a3f2d42ffff0b7a2a6bc0048582": "f8d2d6a34fe606b3df32672c7f158f80",
".git/objects/5a/e97e5582476f738ab62e7015cf26acaf3ed2f6": "0c5e568d5ed46fe9877032df7857e90d",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/64/4af829e19e36c2ab838396b11425f1ff3baac1": "ce65504b5a3b690c3f38d2f7ccf43bb3",
".git/objects/65/bfadd47f7554cb7548f3c4e149eb2c7690fe30": "0a547d8a663a91c102b5d3c6328d22a8",
".git/objects/6f/03ba445e834025af4ec9bb46cf4ad0854f9372": "68503e4f5bdf54226d84e7720f2f5270",
".git/objects/70/010cc4761157d9d7cc2d082cf342e63fe1190a": "baf21d1dacab382149ee93266543ff40",
".git/objects/7a/03918fbaa5f9694b001bf5b09c9a68cd08f3a0": "d8dc6caa501585211ac2c78d45402c4e",
".git/objects/7a/5397c6f3749eabcdf64e429bb64ac01d271fad": "f6c655b6baddaef39ccf8a559cd88a8e",
".git/objects/7a/9e055aad02fccd4f6f2728f5552470bbc8e304": "98cf8507089c8813caf794d0a27deb25",
".git/objects/7a/ba95ed7bc69870c0d5100fe6f5d90b47158d98": "38633fe5c05ef48271a6a4db8e9c201e",
".git/objects/7c/c5ed65ca765aaf27a752d139cd56d2dc8f5c51": "3097710cd9b8efa18b2b94247b3eb369",
".git/objects/81/5e0f2ead6982a8ad29c7cdbffa20bbc64f996e": "fd23a30e728a42daa261bc162fa66d80",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/6f6ad35b0820e6326bb851900b6075b80d57b0": "eeea2471778c664677b8e7ec71d5693d",
".git/objects/91/0436e765c487a67052b7f7289b296de85c65d7": "0d219783e6b660ff5b09b863c574e20a",
".git/objects/99/044e12fd694b12dc7d1371dd3f4ff582e15240": "afb21ecc7de817e7514d6ecba8dc1a7d",
".git/objects/ad/a035d8d7f32a4033ed21286b0c78e4854ed53d": "f682be7cb0770d60a70ef7e290b47d51",
".git/objects/b1/75cc5f8ae26ca376f51c0c8eca4395d5fca54e": "ce34328e44e195e7afb3add602712343",
".git/objects/b2/0c72c58d3f9129cb195ca6ac582f47348f87eb": "ed5c864d3d19ff878e1c51ecb8f97b95",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bb/97e1c5ee0b905639063b5b6509b55e92239aad": "07ab04b7f18b7746a8627018bf3f558a",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bc/a0637130f9cb9118081729557ee50b7ab88126": "7e742692356fe18b406ffb93c66572af",
".git/objects/bf/9b7ff565ea63d13aa6f8b0517ee03799daa657": "cee369dc003624505586f569b47e4e44",
".git/objects/c7/badc02cd3ebc082cf3c96b53ec9a6ac9d1efb6": "f6749770d610952f10e3df096212a0f8",
".git/objects/d0/7bc1b1ac3833e7f89e153778f717d4bb1e3de0": "2b07fb1caae4690eb064ae274c8a4574",
".git/objects/d3/5c589ea35321aee880221d3952cd586264cfe5": "3284327eb84e20b22dd196aa85447569",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d4/42ec2962e5512ab773e8dc7554272ac4fa283c": "705a16c80bd10625ef2b44f4728d8828",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/42251f81f6755c5b51b890a833d9d2e5de101f": "0f82dfd08579b69e98c75c9ce699edb0",
".git/objects/dd/2eed1370585178db81284ed6b5eb1b67acd8dd": "41d7123fb32cc132c527ebeb1620547a",
".git/objects/df/af7eead6725fa2fe404f4ae33c3b3fbdfcf57d": "640efdb6277f8827e00f6e654b79b322",
".git/objects/e0/390ac6cd20a1b35b6f51ddf4d03a2d220f250c": "4709add28b683dc1fd1466ad050cca71",
".git/objects/e0/88011298c1a95731a74cab8b159ecbdc40a049": "f76647a2761d698ca1fd9b46a7cdabdb",
".git/objects/e4/db9bd4cf9c0eee298d44b6423a8574fbfb5d2d": "b942cab897e74aa06f3826fb92229061",
".git/objects/e8/05a3240a44205699c0415d874d6979f5bc39e1": "f3837b86c3f24a5862b370d8e1fd201d",
".git/objects/ea/3b0e2a3545a9fd748e5c4450ef95159fbd12f9": "6acab9591f9764d111bbf49984bdab08",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/c7a43ab8d7fca99841d10ce11d1dd306a7f34a": "553e7cb0e6a89fb54fbe2a211c4761d0",
".git/objects/f1/3f40da74de1a86e2d03c967da0f2b26161a066": "33eb927e1a255c2e212bd52d4aa97618",
".git/objects/f4/f71db7c4006f7ca97e9066bb2c5a98c2f6dee6": "0d31c8e647fcecdcc85472bcf59d6528",
".git/objects/f6/2537e846ecb22bc62fff0fd83d1ee440439ae3": "7f5eb31b14d3959a95c7ba4fd5a7d3ac",
".git/refs/heads/main": "0e37876d8c2b9a22db0ba9294c863203",
".git/refs/remotes/origin/main": "0e37876d8c2b9a22db0ba9294c863203",
"assets/AssetManifest.bin": "b8ef6afc3e5c31b78c7da566b26f7e1d",
"assets/AssetManifest.json": "92973e110566b0dcbf783af369d1a386",
"assets/assets/fonts/dk-magical-brush/magical_brush.otf": "22842e3ac77483882d784a422e003eee",
"assets/assets/image/bordered-bg-white.png": "e9f611c83c16e20850d74bd2396b4740",
"assets/assets/image/bordered-bg-yellow.png": "67fe8bd585482f7d39498511f68ad807",
"assets/assets/image/dads.png": "99ddee4d6ecbda7152ce62c6a8e32fad",
"assets/assets/image/dot.png": "240803f1510a8a21b7be51b4846a2f8f",
"assets/assets/image/fb.svg": "3b54f84534999f24e78efb2fdd4ed1b2",
"assets/assets/image/hat.svg": "bc73cd074761aa6a7a928c516da94c80",
"assets/assets/image/hero-background-1.png": "b549692c1e34f0b1f68a44ff9db79d17",
"assets/assets/image/ig.svg": "d4222a15684c9192af9c3af460d34d5e",
"assets/assets/image/ln.svg": "194301918f95bb08124e3796f0ddc4cc",
"assets/assets/image/logo.png": "c6ffd74cd5146e9f001ca2f7549ed84e",
"assets/assets/image/map-mobile.svg": "6518e1b2652dc57069c2495a5551fa44",
"assets/assets/image/map.svg": "ba78a41f4ac3d88199aef7506525f33a",
"assets/assets/image/paper-background.png": "f05de2fe8091aa2f68c702f7f482faf7",
"assets/assets/image/plane.svg": "371dc362ac6cd43285ad7f1a78520c33",
"assets/assets/image/puzzle.svg": "bba1b533dfcb7183f76f8c628eea5e45",
"assets/assets/image/rocket.svg": "12711eae5b69f2f682468ce1d59fb5ec",
"assets/assets/image/yt.svg": "562924efaad0d4899e00c135d617e97f",
"assets/FontManifest.json": "ca72099c2ea4833354f22f6fdbcd7b7e",
"assets/NOTICES": "63950d53ae010cc8b58d49bd711ddd6f",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"build.js": "216e19ee7898869fa792fbe4e17cff6b",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "72eee29b62741060544b4a72348f1227",
"/": "72eee29b62741060544b4a72348f1227",
"loading.gif": "917cf8b79ee6f970a6e12faae132758a",
"main.dart.js": "a987cf05a13ce9660bb1f442ad25452c",
"manifest.json": "505ae910696f4a83dd0e689d56798360",
"version.json": "b492f1a4da66bef905e542cdbcc0a4a2"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
