'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "9cd599a3523898e6a12e13ec787da50a",
".git/config": "9aab0442fbd36f86ae7de7c7d214a0c2",
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
".git/index": "fad616fe71d491bd92f850d861622a09",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "f3ee8069ed18bec8695f83cdbbbd96ad",
".git/logs/refs/heads/main": "00926d8daa2135c3356a62d92e6582aa",
".git/logs/refs/remotes/origin/main": "1809a91adf00f7a1d392edf4fca57fbd",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/10/142318b2354e44e1ed655e25f01e952748b784": "cd4ada71e862d9b4a072153efc5a9fc2",
".git/objects/15/6d2b6d6dfb54e9920a85c1c464791b6529b650": "fa8f2ae835df5f1359ea71b57c32c2e5",
".git/objects/16/2ce452352335f0c47d431c95e5ba90bcc708b0": "1a17a3ced9ed74ae171aaa78898a29e5",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/1f/686edd1465272558af328ca43cb7189a0059e6": "5e83820f6d3e5392693d45bc239b2b61",
".git/objects/2a/e17fefd8545e40c01d0948a1f75cf3f0a5a56d": "54a28a8480fb9cc25d8043ab7242d1fc",
".git/objects/31/23aafa11b26164db1cee728b0cea2ea537fa9c": "c4dd0ab3c39b1a73cb2909eb7f014c5a",
".git/objects/34/39a5d7bf70577d3f5f87052e4e4c8745f862f1": "01bf58ca4a8d20376b86fc249735d74a",
".git/objects/35/17bc76eaff50d9728f143f2e13e33311a4a5ed": "1ddc9a6727fbf24d2a00e2c3326cce3a",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/41/5c059c8094b888b0159fdedfd4e3cb08a8028e": "86914685ccd40e82a7fe5b70459fb9f7",
".git/objects/44/5f02885246169bdf2dca8103dde840cc9135bf": "7450b8bf97d4e0fe13bf93f38e098cb2",
".git/objects/44/79da9168d33988145a857797431e1b6d642baa": "5c0325dcb74214ae5b0a8146b7124293",
".git/objects/47/b929cc4408ff5eabe4e63e542b2e9593219935": "d63c54f9760e5e68c69b4de3febf4cd0",
".git/objects/4a/7e424afc5bbd3308c61c1ef4a09cd56a40e5e6": "95aedabac35a999dafe172fd074b021e",
".git/objects/4c/beaf0d268cad5a91a5c42877e33603c3253a69": "73a86b570e2b2ad01398839433e3adac",
".git/objects/4d/fb0127a30661fb2cb5687b9f03107627d208bd": "2bf3c012b86b50cff07d2b2ac22b2076",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/5a/cbe62a09c63a3f2d42ffff0b7a2a6bc0048582": "f8d2d6a34fe606b3df32672c7f158f80",
".git/objects/5a/e97e5582476f738ab62e7015cf26acaf3ed2f6": "0c5e568d5ed46fe9877032df7857e90d",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/62/e8f8f0c8ecf7ac0325dead5ba68b668ac01581": "f93ac04be1600a0e54bbd7963d329e2c",
".git/objects/63/77b03779745d4d9b4409ca180088286150c246": "1eed5c19c9c422adf5695cf384fea90c",
".git/objects/65/bfadd47f7554cb7548f3c4e149eb2c7690fe30": "0a547d8a663a91c102b5d3c6328d22a8",
".git/objects/6d/e12a7f79e520739c44f0f06a85fa737c73487b": "afcd99ca19d94eb4d15739f56d477e6e",
".git/objects/6f/03ba445e834025af4ec9bb46cf4ad0854f9372": "68503e4f5bdf54226d84e7720f2f5270",
".git/objects/70/010cc4761157d9d7cc2d082cf342e63fe1190a": "baf21d1dacab382149ee93266543ff40",
".git/objects/74/356cfbec0e47294692238ddfaefca41bd2226f": "4af171cea85dd1a3ed413010afe92263",
".git/objects/78/75364d83da0e329afd04e806d7685ba7fea4a0": "ad9253b3d8a85bb6ccab84a9bfa92226",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7a/03918fbaa5f9694b001bf5b09c9a68cd08f3a0": "d8dc6caa501585211ac2c78d45402c4e",
".git/objects/7a/9e055aad02fccd4f6f2728f5552470bbc8e304": "98cf8507089c8813caf794d0a27deb25",
".git/objects/7c/c5ed65ca765aaf27a752d139cd56d2dc8f5c51": "3097710cd9b8efa18b2b94247b3eb369",
".git/objects/7f/d68acdc04e6800869426ffc1cbf2c5d711325a": "3bc3b02f074fc57e06e6a6f69a36d090",
".git/objects/80/8aed7dbaa81d06c8563fa5028d1b2981fc7ee1": "03ef49d69d7845404c384781d10ec6d8",
".git/objects/81/5e0f2ead6982a8ad29c7cdbffa20bbc64f996e": "fd23a30e728a42daa261bc162fa66d80",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/6f6ad35b0820e6326bb851900b6075b80d57b0": "eeea2471778c664677b8e7ec71d5693d",
".git/objects/8c/99266130a89547b4344f47e08aacad473b14e0": "41375232ceba14f47b99f9d83708cb79",
".git/objects/98/4a9a4dbde9b8892e29a7853a43dd3f0e741316": "a266b9480067491f958867ca636521fd",
".git/objects/99/044e12fd694b12dc7d1371dd3f4ff582e15240": "afb21ecc7de817e7514d6ecba8dc1a7d",
".git/objects/9d/28818f36066e6ce067daab22fe96c2b40688f0": "2af4b0a6bb83d2a8578b0a1dcdb9b1a4",
".git/objects/9d/ad25f372ede340a3c24ed002ee37119c4b7044": "ced6eeb517a822c41b7f254084eccc8e",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a8/325cd5509320be28ab930be2356968f38c8c1e": "af2aae38f4180befe78614b4e55ab414",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ad/a035d8d7f32a4033ed21286b0c78e4854ed53d": "f682be7cb0770d60a70ef7e290b47d51",
".git/objects/b1/75cc5f8ae26ca376f51c0c8eca4395d5fca54e": "ce34328e44e195e7afb3add602712343",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/b72079ab193593ded3d8be2d37d528b15c3dc3": "26ba2ae174df5b3481539d1ed8d6063a",
".git/objects/bb/97e1c5ee0b905639063b5b6509b55e92239aad": "07ab04b7f18b7746a8627018bf3f558a",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bc/a0637130f9cb9118081729557ee50b7ab88126": "7e742692356fe18b406ffb93c66572af",
".git/objects/bf/5c649c0b4c730dcd708f82763078441e84678d": "868690967c8c14fffbb92b39a5b30c54",
".git/objects/c1/324b523988aeccf21069921bac8037d1bbf3bb": "6bc81f67243fa1868d9152b8f47d4400",
".git/objects/c9/9fc14e6783ecc4b3480394b9cbc21eb044359e": "18fb2b9f4ce78ed1ccdfbad875521366",
".git/objects/d0/8cbffac65f65272cb4c8b5481b04cf67d98222": "746df75062b6259520d98a3cdb3e5ec0",
".git/objects/d1/81dca1793f4aa2d7aa9a2ada9da8cc93cace93": "07d4b810a4341fa30f7e6b1fdc9391b6",
".git/objects/d2/97c6a24cd352ca2cdfe1e8f7754755ecd5a21e": "d4ba0c94dc41d840c94f3ca2d607450c",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d4/42ec2962e5512ab773e8dc7554272ac4fa283c": "705a16c80bd10625ef2b44f4728d8828",
".git/objects/d5/a3d85140ce174ab2bac58ee1541daaff80f8a7": "568384472807a667174142be02dad0a2",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/42251f81f6755c5b51b890a833d9d2e5de101f": "0f82dfd08579b69e98c75c9ce699edb0",
".git/objects/de/514d7f727225d0ac777423c778a483c2be75a0": "f0af22f3e87c58e451bb1369f4a49ff1",
".git/objects/e1/810e888e2908e80776df9d1d6607c433261bc6": "04f3be46333fed1a3389b1a7e5ce94bf",
".git/objects/e4/db9bd4cf9c0eee298d44b6423a8574fbfb5d2d": "b942cab897e74aa06f3826fb92229061",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e8/f46be8f1d90dc1aeeb0fdf0bb9fdffb4255f5d": "d7f85931f9db40534b3ae0ab023b39a6",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f7/a70bd828e713e8bd93bd7b9212d39086def7a1": "eb1925c89549304d243ef58078da7607",
".git/objects/fa/8cb1db5b38c64e3594a8dffe0299103b69449b": "cb89f85335ac9435fc4d391f03634091",
".git/refs/heads/main": "cb57202ed1968590d564f06c55fcb110",
".git/refs/remotes/origin/main": "cb57202ed1968590d564f06c55fcb110",
"404.html": "40d1eac948b9676790e5850c262d5eee",
"assets/AssetManifest.bin": "d7ae26695a5dcdf942aaa95a6aff6fb3",
"assets/AssetManifest.json": "f8a4944dcd257c147f289ac9fb3b190a",
"assets/assets/fonts/dk-magical-brush/magical_brush.otf": "22842e3ac77483882d784a422e003eee",
"assets/assets/fonts/pfdinserif-1/DINBold.otf": "84a689f5f8748b5848c3dcbfa2be006e",
"assets/assets/fonts/pfdinserif-1/DINPro.otf": "48fcd5814250f4405be88910bfb1484f",
"assets/assets/image/ani2.json": "eaa31ff1924fda1f2f89d2ffabe558b8",
"assets/assets/image/car.json": "eef89bb17d84e77ce99e1a1cbc4bc55e",
"assets/assets/image/contact.json": "eaa31ff1924fda1f2f89d2ffabe558b8",
"assets/assets/image/dads.png": "99ddee4d6ecbda7152ce62c6a8e32fad",
"assets/assets/image/dot.png": "240803f1510a8a21b7be51b4846a2f8f",
"assets/assets/image/error.json": "4a61d51cbb1148f2b3a8a3cbbb027f63",
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
"assets/assets/image/tower.png": "7166a4d0395c7c8948c8a563c3a01b9f",
"assets/assets/image/yt.svg": "562924efaad0d4899e00c135d617e97f",
"assets/FontManifest.json": "99e2fea253fef2c319a06d8cb1563cc2",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "8d262eabc2ba4e3ef181dc17f99fa966",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
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
"index.html": "1c803ed5e3bc0ef8918fcac3a0e12705",
"/": "1c803ed5e3bc0ef8918fcac3a0e12705",
"loading.gif": "917cf8b79ee6f970a6e12faae132758a",
"main.dart.js": "db32489c191ff386676a7d4ba8cddc88",
"manifest.json": "505ae910696f4a83dd0e689d56798360",
"README.md": "9a29b808a490ca4ced757f46a5bd6f1a",
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
