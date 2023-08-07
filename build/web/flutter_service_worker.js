'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "9c96654b6d9327b21fdb8e64ea24febc",
".git/config": "67d074c73d776a6fe336b50705f3af00",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "f20631b1bc76f10fc6e332c843b5daa1",
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
".git/index": "5623f227a25cd5927aad420b8e4042cc",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "406c62eb1a48a54477af8b88b2f7d8a7",
".git/logs/refs/heads/main": "49a1f4760d0d2da3a44112bcccfe1b0b",
".git/logs/refs/remotes/origin/main": "229b313541cb55e938120dd11c73959e",
".git/objects/01/a0fb5fff177261419c88e920f3b7918bec5693": "fbdc13419a32fda54f1af71a040b3a7a",
".git/objects/03/24b41305d55b1049fb01a43b31b44e835f85d1": "c1adaca7931bdc87849640198dea3bf5",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/04/3fb7a4f346e4c2622086743c2d0d9ef817840c": "841ebc21b74710e8a171867e4f78309b",
".git/objects/05/3c1c0431655fd0632fa35bd11da53102c5de8f": "28d46ca8416be479a8f9b4c008e9da5c",
".git/objects/09/6e2f3373111e3c9cc88fc62e12cece581909d2": "5a5aab2f10ac73cbc21e09adb17523fc",
".git/objects/09/ba29c772b37bb6a5a6208cc6329efe4f860715": "eb3fc7b4d5fdbcdd2c374b40a838c2c1",
".git/objects/0a/732d386d8850be92dd4cecd1da873e9089c849": "ea5fb4b83ab8927747541b570624423a",
".git/objects/0b/497cba96635d963c832dc7b79fa8751d3114c2": "5542b9481a104eeaca86c4e68b1b852b",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/0d/cad0c36f78b0416b2bce356428af3752495fed": "0dc3e3d8f6286ba9226a146404701126",
".git/objects/0e/383722bca413c2ebba82265f86f3dc3cfd6c5d": "fd128ab38d037914ae68c9bed3cd7a33",
".git/objects/0f/438f50486fcf9f27e8aa9e66664fc905173e30": "4721f536ddf3ce14adb3036a92b8f741",
".git/objects/0f/c4537f4abed0690af3498dfe5c2ac2c35d0965": "233187767b2004edf9ecc68057aeee5f",
".git/objects/11/f19c894256e8c12dbe1f09df49993942105919": "66368d8a24c4ae887f4a87b8a7b048d3",
".git/objects/12/c71900b05d28d1454443fc9bb137447537acbc": "239da63c38c431704adb4494d1aee8fe",
".git/objects/15/6d2b6d6dfb54e9920a85c1c464791b6529b650": "fa8f2ae835df5f1359ea71b57c32c2e5",
".git/objects/16/2ce452352335f0c47d431c95e5ba90bcc708b0": "1a17a3ced9ed74ae171aaa78898a29e5",
".git/objects/16/cb92c87edf11ea4bfa12cb51ac3009273e4ca7": "c4ea79e9c1d3a2616a1c2ce2cab260cb",
".git/objects/17/261a7cd39386ca59ccc4109752eb1c79d56e53": "6703969c540c703298439a64a2a13e84",
".git/objects/19/3eba0ca2cf13d7f40fa74de4e9c8eabc46d48f": "f047bde66a5bf7e11cbebe0cb469244d",
".git/objects/1a/9bd6bd3d2f148755f857ca00020a75e4c90c85": "850bcf10b535f82b9810f6c7b3f35327",
".git/objects/1e/4605b419526d034fd080b94b7568d6bccda8f1": "aa903ec7f72b7b08c0e976ee2c9c093e",
".git/objects/1e/9ad94092895130d3eb248bd795e1a16a98cde8": "5c7a0b68758e351ed7e7d2b3bf1ec795",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/1f/686edd1465272558af328ca43cb7189a0059e6": "5e83820f6d3e5392693d45bc239b2b61",
".git/objects/1f/6cc6456ba0aa4380689f8f8e83dc554a053b76": "683fe0ca184b3649e51bf1e98b8eeef4",
".git/objects/22/ba09c60ef094d48a0394ab2bae2e75b2c02074": "2a4de93e6ecc7d59fc871273b1e71548",
".git/objects/26/f03ca9fdafe6c266a07d96358a61ca9dc3d016": "4d8753381fbc6f72703893a92ddbb22d",
".git/objects/29/14a08befe207bc9c776eb84a5cfeec8f39fb6b": "74629fe6023596aefb0f28d70776e6a0",
".git/objects/2b/ef05e969748941c6bb836207fb1f3ca8a1e848": "e2f1dae4f5bfcca9956e3cd3dc51ff38",
".git/objects/2c/4edb3ad71fd4cd5e2b9145a3527cc8240c498d": "4b1e3494714351d20e59ee847439bd06",
".git/objects/2d/3d41785d9c11e6063a8f8f7c528b65378a561c": "e6be594f5dfebe0ee2036674e85aca32",
".git/objects/2f/804ca3167546f337d5e8665cd5359149a531d6": "37cf727f2856691f4b78fa961232a121",
".git/objects/32/37a69eddf576a612a1b3996d074bda76ba0531": "91ac8c614d3c3e85dd4bf4026c84f985",
".git/objects/32/91d86c35a720eb2b16cc99832afbe1088f15f6": "b37315cc91f1f1d18feb4371218e25e8",
".git/objects/33/841296121a8bd41ada9e06e0e26c99928a6b0c": "69fe415f31140dd8861390c065ccc0af",
".git/objects/34/188b66831c183e93b4363ad0cc0262573c78a1": "31cad2b7a40553b9894bd0d1ca5e98f6",
".git/objects/35/17bc76eaff50d9728f143f2e13e33311a4a5ed": "1ddc9a6727fbf24d2a00e2c3326cce3a",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/38/be95353dee66e8360783ba678abca8e55d2e3b": "d9996ec17659618a84131563cf2e115f",
".git/objects/3a/38db72af025c839070473c25e60b8dcbac8855": "5261b022c91e058ea37dc133195f6592",
".git/objects/3b/b4889c529ef5248242eef38885d347df311ddc": "863885efd53cd3594157134109d3a726",
".git/objects/3d/d029bc14232c513c9314910f786eb20f5c46d0": "6f688d70136ef4615fef70889a98e7cc",
".git/objects/3e/026d57ee8caefbedf90a9b84e51a79ea07a524": "60c63df9068788df772d89cf052479b3",
".git/objects/41/5c059c8094b888b0159fdedfd4e3cb08a8028e": "86914685ccd40e82a7fe5b70459fb9f7",
".git/objects/41/a54afa6b3e2b152d1bd5f20eb24402d7f7a6d4": "29e2fe6f524441586c95420810b436ab",
".git/objects/41/c73a4241c8ee26895946bc3e3a5a107455716a": "9abacfe08caf6c4a1b0b9a5d1b1c603c",
".git/objects/42/59163b7ffbaf252d62e47ef924bbdc33a49c62": "ed49448a53e828f9dfb2f79292bd6107",
".git/objects/43/cdd325df5b86db3d613368e0680333f557f7af": "d78b11a780c9dd032e46238f81a9a6ca",
".git/objects/44/79da9168d33988145a857797431e1b6d642baa": "5c0325dcb74214ae5b0a8146b7124293",
".git/objects/44/ff6922e2e87a9f7fb9df63e0d34b9a7412b783": "418ab82332b1bfe7f3c6dfa51eda13fa",
".git/objects/46/01a838ffcfb5b065b0a640850b6a0a7242545d": "b60ea95e437b19122ab2bda6709062e9",
".git/objects/46/9abb79940d7ef3c42b21b1fc27804b01cc2438": "882ac534fe7540d204723ccf0d5ec044",
".git/objects/46/c5b449a8ce029a09b2ed22f9dd9d381ab3dc54": "b868c7bbd846e4457342329a6430fbe5",
".git/objects/49/a3c8c3b7772d38b661ba3f5b39cc7d24a8630e": "1457860b1b146a2b9e9cfd8caa25c1a9",
".git/objects/4a/7e424afc5bbd3308c61c1ef4a09cd56a40e5e6": "95aedabac35a999dafe172fd074b021e",
".git/objects/4a/ca8be2ce215bc10990c6a70b733d4677062adc": "8a2067b991dd8986fc94ce2515e784aa",
".git/objects/4d/fb0127a30661fb2cb5687b9f03107627d208bd": "2bf3c012b86b50cff07d2b2ac22b2076",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/54/f2f80eb69196e9d2d38f770b30f0fb48d0cbdd": "71cefc82b679fd483d3f4876b87efd37",
".git/objects/5a/cbe62a09c63a3f2d42ffff0b7a2a6bc0048582": "f8d2d6a34fe606b3df32672c7f158f80",
".git/objects/5a/e97e5582476f738ab62e7015cf26acaf3ed2f6": "0c5e568d5ed46fe9877032df7857e90d",
".git/objects/5f/69567f4f20007e7c35d2eb3198accea1899e88": "df1ea5f9d37e39aa9938840565f34070",
".git/objects/62/97d2b4af861b8fb933c81a46426443109725ca": "8855ce5596a4bb09ae77735928e787a3",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/64/4af829e19e36c2ab838396b11425f1ff3baac1": "ce65504b5a3b690c3f38d2f7ccf43bb3",
".git/objects/65/bfadd47f7554cb7548f3c4e149eb2c7690fe30": "0a547d8a663a91c102b5d3c6328d22a8",
".git/objects/66/2b0411fca5b4bb6e43cb1603cbb8432d7a2538": "0a479d2bd7679ae594ae7a119d8ff8a1",
".git/objects/67/ef4df89dbd4ff32e4e54e81e7ae1fb81dfd667": "00745d642ec9ae6fcf8245c63c026f8c",
".git/objects/6b/4ba8afffc8684063dde7d4a4c069a67cdc7571": "c80ccbdb4beb12688156e380cfd92fd4",
".git/objects/6b/bf93df548feb011bb495875ea109c56b033d2c": "1ed176c3efcc5887306f43726bbca3d8",
".git/objects/6c/524b07d8f38d850a66f690074e4bf67628133b": "7275fadb585a6b558cd363be33d31fbf",
".git/objects/6f/03ba445e834025af4ec9bb46cf4ad0854f9372": "68503e4f5bdf54226d84e7720f2f5270",
".git/objects/70/010cc4761157d9d7cc2d082cf342e63fe1190a": "baf21d1dacab382149ee93266543ff40",
".git/objects/71/6da84fe34fe3ababcece16bdac46c7de321c22": "fafef5eaf0a9298e5828760aaf6e4a6e",
".git/objects/7a/03918fbaa5f9694b001bf5b09c9a68cd08f3a0": "d8dc6caa501585211ac2c78d45402c4e",
".git/objects/7a/5397c6f3749eabcdf64e429bb64ac01d271fad": "f6c655b6baddaef39ccf8a559cd88a8e",
".git/objects/7a/9e055aad02fccd4f6f2728f5552470bbc8e304": "98cf8507089c8813caf794d0a27deb25",
".git/objects/7a/ba95ed7bc69870c0d5100fe6f5d90b47158d98": "38633fe5c05ef48271a6a4db8e9c201e",
".git/objects/7c/c5ed65ca765aaf27a752d139cd56d2dc8f5c51": "3097710cd9b8efa18b2b94247b3eb369",
".git/objects/7d/438041a852f76b57ae90b7b745425a1ed8ee18": "a44c3300087f6fba9e86d7e7642aeb5d",
".git/objects/7e/b6a2dd205a662a7c7d278603a5086338d1e16b": "6ae2ebf08b6e2db4b6e7977bf0515002",
".git/objects/7e/ba796ec3663d7ba201b8ced6033dead1e1e981": "cb569a67e1958ad2f1037d66f9fe4664",
".git/objects/80/ba2437ad66005cfa951e427354bb2f5ddfeffa": "7ee83e49f72eeb1d1e2944e64eafd46f",
".git/objects/81/5e0f2ead6982a8ad29c7cdbffa20bbc64f996e": "fd23a30e728a42daa261bc162fa66d80",
".git/objects/82/43d4fe3aded13989c712a849707c643dbbe3c5": "99b72a34c33992544ada17e307d17165",
".git/objects/83/13d2dd990ebf9c136983589dd396abb249046f": "d507d03e7f71e8cdce5d4b1805d0f34f",
".git/objects/85/53c296333f9e72e26e1b257c7b4e64cba82beb": "67ac328185f25b97b3ffba3b12e2d542",
".git/objects/86/a542b07b8cea4ae2cb391cd70180baea7f3656": "8744d277a74db8242bf6a20dc6de60dd",
".git/objects/87/7be5efc31e0573a560b33c13c5720cf93c51f7": "0e68387fe85810600058570922b9aca6",
".git/objects/87/8e3b8de34078652248d03265c1b5d1c816f50c": "212e19f658f926f00a51f35cebebc24e",
".git/objects/88/60650413e598bb16a8263bc6630e86bae1c155": "99ca864e7c24e99d57ff4f7ee98b6db7",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/7cb365cbc383522c75157e52510259d1fcac2f": "5c4b17de5cba6dac0e69071163b2a8a1",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/6f6ad35b0820e6326bb851900b6075b80d57b0": "eeea2471778c664677b8e7ec71d5693d",
".git/objects/8c/99266130a89547b4344f47e08aacad473b14e0": "41375232ceba14f47b99f9d83708cb79",
".git/objects/90/cc7b5f24ef7704ca446bca1e9d4cdb3a7dafb2": "5b05b82511e6af85f9ccb93fd47b6c6f",
".git/objects/91/0436e765c487a67052b7f7289b296de85c65d7": "0d219783e6b660ff5b09b863c574e20a",
".git/objects/95/98ac263e06068f32e575d4f6834d7f1ed03f27": "06cf9d532cc6f8db099166bc4f7bd2b4",
".git/objects/95/b420c8ab4830d4681679fc5492df55b8a2dfaa": "6e6202742ac9dae304da532fa3b602c4",
".git/objects/98/4a9a4dbde9b8892e29a7853a43dd3f0e741316": "a266b9480067491f958867ca636521fd",
".git/objects/99/044e12fd694b12dc7d1371dd3f4ff582e15240": "afb21ecc7de817e7514d6ecba8dc1a7d",
".git/objects/99/29ec8cccf09c8d5a75859eaded4b5af497695b": "a9f4d43dbcc5a865d5c403f9dbb1f517",
".git/objects/9b/bff3034e549bfec1781e26011171f534046fbc": "f72f4e9173eecba6c81f25f37e8259c2",
".git/objects/9d/28818f36066e6ce067daab22fe96c2b40688f0": "2af4b0a6bb83d2a8578b0a1dcdb9b1a4",
".git/objects/9d/64ff852c6102981bfc5946fc7db905cfdeb2af": "67b2319cac3da9feb69824458ed9c616",
".git/objects/9d/83d13aec11f3546b3e4ee629910da3d91ac261": "ef93a0c058666b61f8c4fa1d71c6eda2",
".git/objects/9e/c224c3c66c79c7bf141da9798140463db028a7": "c8ba87dcc4f75057eaafc8b7e21f4eca",
".git/objects/a2/5ddd3aa8f90b97fba1594b7b5241c0f530c412": "8343d85dc46687a619166d5394d6088b",
".git/objects/a2/8031e0305fe106ddea8178ff5fec6692f167a2": "e73aec4110453d808a3ec92c51fac078",
".git/objects/a2/f93bfcc5dd844648db5b584c02332ba8caad56": "d8aba22c658933d2ae10bf0810cc0e68",
".git/objects/a4/c9fdba07d24a13b42446d06e5e550038930d57": "b6aaa315381ea1d6872aac4b70ee39fa",
".git/objects/a6/76bcfa23cfa57663694b29a081cc267e4de6e0": "75589c274493ab43d497977c7dd41b07",
".git/objects/a8/cdfe0be295a73cf684e1ba0af4b9c4ecaccd83": "f38cd36e1f0a9b70652d8c4ba0e3cfeb",
".git/objects/a9/904908646bde13e37d701dc6a29102fcb005b2": "5319bdfa451580ee6ba1c829750dd8e7",
".git/objects/aa/0672184123015ce54c8a1dc5a95523f212621e": "3d2aae92aaf9bc345975a02d27a097df",
".git/objects/ad/a035d8d7f32a4033ed21286b0c78e4854ed53d": "f682be7cb0770d60a70ef7e290b47d51",
".git/objects/af/1197913970cd49c58b2dc81c059fd78dfa9aae": "60b1a540aa5d0c6e12bfb67741e76772",
".git/objects/b1/07ba09869356a390bd7ebf7744f2a226aa8718": "bbc3271fcf4a5acae6de8350c132f1c3",
".git/objects/b1/75cc5f8ae26ca376f51c0c8eca4395d5fca54e": "ce34328e44e195e7afb3add602712343",
".git/objects/b2/0c72c58d3f9129cb195ca6ac582f47348f87eb": "ed5c864d3d19ff878e1c51ecb8f97b95",
".git/objects/b2/11835b424af0c6fd406f9c7f43ad6d7062af04": "16ed3ba5bac74a2bf752a8a43f536cef",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/b0a5a0744eeacd3eae32a31d4d346171e56cca": "acaf60844a8719e24904b47c5500d521",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/00b1818e24b86873f921e4e70a18271753647d": "d768c7927526154290436cf0408bf56d",
".git/objects/ba/b72079ab193593ded3d8be2d37d528b15c3dc3": "26ba2ae174df5b3481539d1ed8d6063a",
".git/objects/ba/de4ec9433ebf0f8a3f7f5fab8f7d3744c327fc": "72cc1e3fd905b98b90fc3a405315c416",
".git/objects/bb/97e1c5ee0b905639063b5b6509b55e92239aad": "07ab04b7f18b7746a8627018bf3f558a",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bc/a0637130f9cb9118081729557ee50b7ab88126": "7e742692356fe18b406ffb93c66572af",
".git/objects/bf/1130d05fefcfad94c830b8d2cc7967ae606276": "d6ab3eec72fb810a3f4ba83d91a2213e",
".git/objects/bf/5c649c0b4c730dcd708f82763078441e84678d": "868690967c8c14fffbb92b39a5b30c54",
".git/objects/bf/9b7ff565ea63d13aa6f8b0517ee03799daa657": "cee369dc003624505586f569b47e4e44",
".git/objects/c1/324b523988aeccf21069921bac8037d1bbf3bb": "6bc81f67243fa1868d9152b8f47d4400",
".git/objects/c5/543e95481160e718fa2fc6d71e997c8d44bd6f": "9510284283025e501eb3d58f76c23c47",
".git/objects/c6/de3f5c912baaef19daba3314031a41c19ddb14": "ac8fe5013b976c4911d20f787edbc908",
".git/objects/c7/badc02cd3ebc082cf3c96b53ec9a6ac9d1efb6": "f6749770d610952f10e3df096212a0f8",
".git/objects/c8/2ca6881485a6622ba5e9f2fb0ba320cd1bbaf5": "626b5e86c9c6975c0d7659cec0b2c72c",
".git/objects/c8/b5769d51f87afe5aa2ea78a6675af3be0d1c7b": "a1ee38ec451a3ff68f3a121b1f588c3e",
".git/objects/cb/38915892502e1546014ccaace6377a3a619edb": "39628e824b06339506e91625faa92fd2",
".git/objects/d0/6a03527776f6485043f6e10f323533c1a7aa4a": "d6ad42a55b909db9ff2fb1cb416c7b1a",
".git/objects/d0/7bc1b1ac3833e7f89e153778f717d4bb1e3de0": "2b07fb1caae4690eb064ae274c8a4574",
".git/objects/d0/da4e128f5965cfa65e0329aaf4f2e20e325241": "881dfb6607738f0a2a436ac99d138723",
".git/objects/d1/a183943eac8fd823ba23e1991ff9b292d49e1b": "033ae3665d80f702a846bf37a216b377",
".git/objects/d3/5c589ea35321aee880221d3952cd586264cfe5": "3284327eb84e20b22dd196aa85447569",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d4/42ec2962e5512ab773e8dc7554272ac4fa283c": "705a16c80bd10625ef2b44f4728d8828",
".git/objects/d4/5dc029fca06df1292d917a5d8a5329cdba5258": "bd7976910962292aa3de20b9157d9b3a",
".git/objects/d5/a3d85140ce174ab2bac58ee1541daaff80f8a7": "568384472807a667174142be02dad0a2",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/c8e50dd4c4e035604aa8453d98d204bfca7129": "db7411802ff9e23e74a7e9e79ab3acbb",
".git/objects/d9/0fce95f2a7ac00029d4c79cc6bee964fcbadfa": "4c552126d570ff835978acb2e3156549",
".git/objects/d9/42251f81f6755c5b51b890a833d9d2e5de101f": "0f82dfd08579b69e98c75c9ce699edb0",
".git/objects/d9/4fd886fe0d0edba1c7058fd72552bdb9c6e51a": "238f569f4a822e2645db106fed09dc36",
".git/objects/db/21abc9cf2c47c49d2afd38f63ae31ecf3f5e77": "982b061d9217177425e93f1e118c6661",
".git/objects/db/2ba508e2e86b40cb5a8ffcb79fa64e8006f1ac": "54713b14a6a09dca92b6bd5ae820679e",
".git/objects/dd/2eed1370585178db81284ed6b5eb1b67acd8dd": "41d7123fb32cc132c527ebeb1620547a",
".git/objects/df/455a1d2566c01d0f256869e60e16f788cc861d": "a1f95498b5de7821426e5f69d43226c5",
".git/objects/df/5627f8b960eb5984bbe83489ea85729ea0c242": "f29c50e7fd16f998ebc37e985cd40755",
".git/objects/df/af7eead6725fa2fe404f4ae33c3b3fbdfcf57d": "640efdb6277f8827e00f6e654b79b322",
".git/objects/df/c0f02c8db89f3e8ad32f2b9dc950cf3a6168c5": "519cd8b4fa1aa62f7c363b17ab3def57",
".git/objects/e0/390ac6cd20a1b35b6f51ddf4d03a2d220f250c": "4709add28b683dc1fd1466ad050cca71",
".git/objects/e0/88011298c1a95731a74cab8b159ecbdc40a049": "f76647a2761d698ca1fd9b46a7cdabdb",
".git/objects/e1/366ef6fb236a138ac4ec635b738d6427ec8732": "635331228684c47717e7afa298a06758",
".git/objects/e4/db9bd4cf9c0eee298d44b6423a8574fbfb5d2d": "b942cab897e74aa06f3826fb92229061",
".git/objects/e7/9dfa0fac635c75a2c84f74fa17f9f63d39320e": "f7df9848d571134d562598ee4231ae4c",
".git/objects/e8/05a3240a44205699c0415d874d6979f5bc39e1": "f3837b86c3f24a5862b370d8e1fd201d",
".git/objects/e8/f46be8f1d90dc1aeeb0fdf0bb9fdffb4255f5d": "d7f85931f9db40534b3ae0ab023b39a6",
".git/objects/ea/3b0e2a3545a9fd748e5c4450ef95159fbd12f9": "6acab9591f9764d111bbf49984bdab08",
".git/objects/ea/cfd62e969ff402bd6e8bec1d3c8f350c9bda8c": "9a05e22152a1b5baf41f4f19220ad610",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/eb/9e1fe12270791a9fee0b41efcfb69343fb69a3": "dfc88428471aedda40349dc1f686bdea",
".git/objects/ee/c7a43ab8d7fca99841d10ce11d1dd306a7f34a": "553e7cb0e6a89fb54fbe2a211c4761d0",
".git/objects/ef/751953cf65ebb03f18bf070e7996f028c85a77": "794c38e5099e15124a5f1b9d990d3d34",
".git/objects/f1/3f40da74de1a86e2d03c967da0f2b26161a066": "33eb927e1a255c2e212bd52d4aa97618",
".git/objects/f2/90cbba8117bfd0bf7610305988b3323ba1da3b": "62fc6c449d2ac5582b65c8621cc28df5",
".git/objects/f4/f71db7c4006f7ca97e9066bb2c5a98c2f6dee6": "0d31c8e647fcecdcc85472bcf59d6528",
".git/objects/f5/a2ad9b22c32cd3a38f402ae50ee6b11a3cd0e9": "6d572a4622e84d86d2aa3e10dd30d8e6",
".git/objects/f6/2537e846ecb22bc62fff0fd83d1ee440439ae3": "7f5eb31b14d3959a95c7ba4fd5a7d3ac",
".git/objects/fa/65280a3eb66639553dbbab277b9db67251b4a5": "dae6bcc0366899cfe6af3df2834d000e",
".git/objects/fd/b7e096d8f8c01b42d3f293a2b1192c6c778196": "c7970fd145c679bf128413e684341a3c",
".git/objects/fe/1ff20f1cb6850fa2762d55684a6b09ac93da5e": "98c63d8de4eb7c446276dc898bf265e0",
".git/refs/heads/main": "cc1769620a7804addadb20be6fd793de",
".git/refs/remotes/origin/main": "cc1769620a7804addadb20be6fd793de",
"404.html": "40d1eac948b9676790e5850c262d5eee",
"assets/AssetManifest.bin": "83efaba9009c05c9dffd3aba962e6bd6",
"assets/AssetManifest.json": "8626764caacc094c2c6a2a9935feb1ea",
"assets/assets/fonts/dk-magical-brush/magical_brush.otf": "22842e3ac77483882d784a422e003eee",
"assets/assets/fonts/pfdinserif-1/DINBold.otf": "84a689f5f8748b5848c3dcbfa2be006e",
"assets/assets/fonts/pfdinserif-1/DINPro.otf": "48fcd5814250f4405be88910bfb1484f",
"assets/assets/image/contact.json": "eaa31ff1924fda1f2f89d2ffabe558b8",
"assets/assets/image/dads.png": "99ddee4d6ecbda7152ce62c6a8e32fad",
"assets/assets/image/dot.png": "240803f1510a8a21b7be51b4846a2f8f",
"assets/assets/image/error.json": "4a61d51cbb1148f2b3a8a3cbbb027f63",
"assets/assets/image/fb.svg": "3b54f84534999f24e78efb2fdd4ed1b2",
"assets/assets/image/hat.svg": "bc73cd074761aa6a7a928c516da94c80",
"assets/assets/image/hero-background-1.png": "b549692c1e34f0b1f68a44ff9db79d17",
"assets/assets/image/ig.svg": "d4222a15684c9192af9c3af460d34d5e",
"assets/assets/image/like.json": "be49fa4b07cf20bfd1bbcff45e9561d1",
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
"assets/FontManifest.json": "3e7d8703a47d6d9dc3ab718d47f74aa7",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "5598d221b4f4fd7420299f1bc7155070",
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
"index.html": "5bb33bf70c2f8604df67123ce3d56946",
"/": "5bb33bf70c2f8604df67123ce3d56946",
"loading.gif": "917cf8b79ee6f970a6e12faae132758a",
"main.dart.js": "58df3633dac6b5f21dd65bc0efae0c40",
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
