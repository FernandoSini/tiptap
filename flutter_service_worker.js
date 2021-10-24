'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "a253c3c57b8a0d075ba5527b17a4662e",
"index.html": "75014bde12c5e9ad9224c58527bb5aac",
"/": "75014bde12c5e9ad9224c58527bb5aac",
"main.dart.js": "a907b4cf8c60d0776c7680b4573e5718",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"podpah.png": "e6a323c85a3b96a8dadd80a6a2033b93",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3ea15c775524270133cb1083f30681ae",
".git/config": "9e8bdd75feda6806b560ab55c7449ffb",
".git/objects/61/1eb0a6b9c5d8d24dfda181f69b7d4a3adddb96": "017c3df18154470fdbb140a5462def27",
".git/objects/95/490cbbc0b2ab50ddcb21a96c58ccc4763f2522": "c93d61e53eca8b557da29c0c6c849e19",
".git/objects/3e/26d7be63d961b6eb9b44c558ee3c856971ccd0": "dbdb20565910b0e28f78ae558b28499b",
".git/objects/50/07f6b06dd3cba258471a823799bf605dc058e5": "62af5df3e04b2667618351a2c568b3f5",
".git/objects/50/5f9681e95e0d6e38119b8c6a749258838c2872": "f25143b7a047faeaa65561b071ad01d0",
".git/objects/04/4ca850b8dec48efe4076178be1b698b2cc4758": "e978222b648bcbe2ce9a61d45e0b1fde",
".git/objects/32/be4bf36313a1656b3932181a7ca965f6ad1c93": "f61a2c2e32dc6fe08b262fa874e6273c",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/0b/f8e0cd04eadd87cf78487a934dc052f5f5fa2b": "0a603339b11023ef286af37ca66cc5c4",
".git/objects/0b/2637252b7dd00222c82284698426e7e1baf71f": "4b5f847e8e97ab2a71ac162c24cc2ccc",
".git/objects/5a/ac7b342856b499d4cd0348393b2052176ba3c8": "789e7a0c17cde8a58ec73b7908881b64",
".git/objects/5a/fc18949698af2743cf184bf3f1918668c0edd8": "396469699aa1748f4041ff7a76fa59d4",
".git/objects/9c/2de2e1189d70d4e73c4258f6063c813d38283f": "92ada47b4051010cd65c1c2fd7dfedb8",
".git/objects/9c/0b295412b783a1023c3d99bb0fde29bda508eb": "291402e273f03fbd7c7756e1c7f8ef2a",
".git/objects/02/f7b583a0bd91e870f29a2c7b2e15cc65942b91": "b703840db1cdac78864e0d4ef93db117",
".git/objects/02/5d0fb2480b4af0ca7b534fb75a44bec1bf33a0": "991d6007c07f695e05c21ebcc5fdeafd",
".git/objects/ac/7f80b819980cb65354f124415ba75ae1a5129a": "ee6f3a7fc3c75236b6b13f00b64dc25d",
".git/objects/ad/ca2903bf848674fa743d941ae062e5b73075f8": "c265e4045238f29ac6fd1b17d6e833ff",
".git/objects/d7/bd1b96483cad35193522523af108f3cb3a8a7c": "f49c25810c930ae564cfebffb0b769fe",
".git/objects/d0/d75575cc576ab9dd44918b06ee10c65da37bac": "89ab2556641e2c129cbab88ad7917f0c",
".git/objects/d0/0ec0001b09fa9b28d0e92478633e8155d41441": "ac24cbc6126d078ca6e9ac5a2f964903",
".git/objects/d0/54569ac0ecb8b36a74378eac1ec363e8a61e6f": "52f43eeda76ac999ce9eb834d30e1d24",
".git/objects/bd/5c90c7452e65c371b3095f11c51ea61aa0a935": "d7e031d68eedcd86ca6755d23e52e64b",
".git/objects/d6/8a14e27979f76b576e099759a221f52d250fec": "ebafb1664a0b23225b85bcbc6c33d6c7",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e2/6adfe3edebf276fe51dd473b551915aeda0996": "c9f0b27b81b2f59de34364a2c04c61d5",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/fd/b922259b3ae3fb95bfc15f0b69f3c7e24409de": "9d70f5e785424ee935002f32d6275019",
".git/objects/f5/94c57c51d3c18fad230acf3fbfa15d1ad12ec7": "54a197e6be92b67143a92286660f5fce",
".git/objects/ca/953fac0b08e8f3ef601212814a39189cdea7b1": "c77961d6fe53957152c45b25dddacd45",
".git/objects/ed/518ab0d9620d356518c4b45b48308adf0e4aa5": "5cfcb173a790871f6978806a215eb35a",
".git/objects/c6/5d6814b85b6f0b71ec6f2ec6f0cb5aebdc8cc0": "5286d82d99c12e3012ce97714cf57373",
".git/objects/c6/20ddaf96f50b4196d433f081b32d119f274f29": "7b99ed418eabbb35dddbe990ab3a3f8d",
".git/objects/ec/1dc9383b7bf28ff3a21dcfc4127895697494c8": "620d3f70ad76b21a405eccaf386186a7",
".git/objects/18/373f398127e199cea339b4e6a47093244fdf60": "abc9c0ed1086e935cca19f801750bfc7",
".git/objects/27/752c4be787ebb069f3d2843d6596a7d6543380": "5fab5774a1a5e2e8d9213651028159a7",
".git/objects/42/f2f13cf24f058c489dfad0dc2fc3da89987c55": "4b6754e7e8d953a3e32774b5d67133dc",
".git/objects/45/bbff1c823f6b6b6f147e173cce2da7ed02245e": "372e3b2a97e93026f397639571098c9a",
".git/objects/80/62c6a5b26e847f513ed4847a2ff890b5304f0a": "4d3d79a85dc8b2e1617f37ad6fdd654a",
".git/objects/17/e8f6d2ca0bc2b2bd73bf51065c3ad0f806be44": "e894751060cf340b9012dec453350fc4",
".git/objects/8a/9721f273e846acdd7c6d8697d917b9b03819b3": "9731640c30d8a6e3146476d62cbbc2b3",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/26/e00e913f614aedf3bc32c1993d4b60a25c1184": "d3aaec0fc659161f4423cb28395ea125",
".git/objects/2f/87513e3f7f09c6646d72b5155861c660d3ebd8": "9359c018cc1fe1991180f70c7f1d2eaa",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/9f/6f7dfb765bf8f231a66b458b58f6c63a8f79fd": "75a210e7f8dd87a91119d6af67e05795",
".git/objects/9f/f72938ef85cbb6d93560a6a08dc1ef16825233": "1e0acfb5e53629fd2bae2ef1679a4566",
".git/objects/07/ea65836ff75b7fb86ecb7d7bbe47de99f57364": "bb2464ad61b958b4f6dfc36f1ffcd40d",
".git/objects/6e/ec64c8281e2169edb0b9aa381f83f239352572": "fbc9b4c475ac2f6b74c67eb74559c338",
".git/objects/36/691d37e372dbc10e5687d36b8d25e471cb7a06": "590582fa1489987c7465bdbf51912a9c",
".git/objects/36/17e59c45db8b00046d4dd2243443af3cf8be2f": "c12f26e4970c2a577032c9d2612c520e",
".git/objects/5d/f184e75ca967a43a461bd386589ef9a16836d6": "2f7ccfd229341d0b5fc29110deb93971",
".git/objects/5e/ab63a695351c07c2f51eb80bfc491396234b73": "0ae2248c58c81a34972fceaa9c1f8490",
".git/objects/08/e4613764efb386facd8b8811ac7b4164b3bb39": "1ef88dc5cb94ce5c4cd1f9c95cfabdb4",
".git/objects/08/fd45471b659599ed05f65e2ac74bbb44c06be7": "f651230fec585b389b2dcf7c78a52038",
".git/objects/08/2ee85228684a06a2cd2ae04ba1942095f86640": "ab79bac3f188a8a8267f971bef4b87ed",
".git/objects/97/b7c31fc84d0e19a9ce986f0bce25d5b5b04bec": "9d7959266f9893eed0579c1d87c353d5",
".git/objects/97/e5ca7872c1745d197fc01705e7e92c1b382ad5": "039348b6fc20ae12c29bd3eed8f24bd0",
".git/objects/97/10677ac55882a1016cdc54078a25d0f8a6d799": "4903b7113fd2a7ed4f6dd9683d664a3e",
".git/objects/63/0c571fef63b7215a530424d46bcb4324a532ff": "87403c6757509a9b7ac96790c23f7651",
".git/objects/0a/71d552b672ae5d0abd7a9b28fd9b6162dfb320": "e8d6519183890037e502b4346d78a412",
".git/objects/90/2f86e4092fe351cf47d02a7258a2c9405d1294": "7590c56c901c6ab1d1679551dbae9c73",
".git/objects/d3/360128f4f055204d4cbfbe6fe3d02e900bdc9f": "1c0dea349514274eef37c4e0d0cf56e2",
".git/objects/d3/8c3f83abca21da50a511a3d32c0e1a2199d23e": "a1cd72b4f07d42e720b1d0c82517fbac",
".git/objects/dd/62373ff888dd3e056b318c06cf4ba291f1b67a": "e48d4268369161054fd99ca0e4cfcfe7",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/846189a3235935ef2ae2abcfa1c0af3c56fd6d": "45275474e0ab2aa58dabdee04402e84b",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a6/0c41fa541e01314207653f49961ed66aab5788": "f138eb7b4322d5b8c17809fa8c68c063",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/6d26338d777f2ca94778915ec027de9236dbbe": "559593bf9413ccf9412aa8f0b6f3ac4b",
".git/objects/ef/ab0c4bc5ec30dd82ca39f9d35f20baf0b28fb8": "8c9306501d777ad9d5398aba0ff90420",
".git/objects/e1/b75b7a4780d825b6f7647edd6d0eaecfa11193": "6747b9f9e945560799367d07069acc42",
".git/objects/cc/901b377ad5f6b8990784d4ecec537580f0331c": "5abc529049b6550fd140f54873a54ceb",
".git/objects/cc/10065849fd4df72b91fbbe37d256842f559fc0": "e526aa72c2e75b2418c3c53ce857809e",
".git/objects/f7/5a3def7461b772f9ba799b79c3e77a3b42311c": "b4b917d620a89df7d72c0260ed87ff27",
".git/objects/ff/185c909d0319c6c347a890c780a7cf7afb36aa": "c44adecf9b49f380fc2bfa15d60270eb",
".git/objects/e9/0afe99441488de6911ea07a8266fe56480e758": "eb33f22cd5b897ff2eb80ba57c13e02d",
".git/objects/e7/bb2bcb3dc7f4199e6ffcde5485be1a3695bd92": "e56256df8f5c1ff48088f3ccf59651ea",
".git/objects/ce/33dbabac3dc50e147d8c6fd750520da33ae7e4": "b371bc64cb7153291e7a8286766f7bd3",
".git/objects/e0/929074f81460940e12022ba539b5042a05e7af": "6906b967ee38f1d5ce61f33524c6bd50",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/79/f77d706091b78b373f2580e5c6b2aa593a78e3": "75ab8ef783d452cafbe258b9c8adacbd",
".git/objects/41/bf729662163683725b3dcb6b01d18d42a893bf": "58caab59d6fb4f5273e0351261a2ac16",
".git/objects/83/7483b256e6089641b93cd88981d0f473ec321f": "89987752b19cf1866a293e0c764b6ce1",
".git/objects/1b/70c18b2346ba5431e7da3741ade46b845b8ccf": "f46d7cbfd239c633a7624d6d78359797",
".git/objects/48/6ca15553e21d43fa00010165b148186406caee": "0c396365e412bd7bd4324a53e78912c5",
".git/objects/48/217617005575345943d8460b76c03381fed224": "6eb02af7684e2da217c7c7aea938335e",
".git/objects/70/7737a7c502baaa0f08386d10b2851c384c1aac": "779bbc15efd0515f5cb89aeeb4800394",
".git/objects/84/6a56b9ae58489480c6a4692d65ef479ff03adb": "1f742fdb971fab0b46f00b4b28181898",
".git/objects/8d/32d8878dec162e57c8ef076573c5fa56042823": "c83727c7952e1f0e60bf254f9271d666",
".git/objects/8c/febafe248fd8d69f4c41e09e81c2740a16fbec": "7b5a11b61dec8df6788c8c469191dad4",
".git/objects/8c/9ba8a91b7e0c5dcdfcd4a2ba69708202fe309c": "303ae5a8d507c95c0dc79171d9776d46",
".git/objects/2b/10951110a76f1730975bd6d3a68756fb7cbb23": "26f3ff782c3335ca530b4e00d5c3ac6c",
".git/objects/47/9e3e5aa9f5a5db3d9e3be08a1edc3f03b6c1af": "be35c45c6a13bab80280ad9999b226c3",
".git/objects/8b/7977460592410bf5ff8d8145c1fdd941f5d266": "6d06f1275c218d6ef3807063f9224a47",
".git/objects/8e/cefdeb32f7645b8982cf37dabd67bd6eb844db": "431873ea4c2e1292b80eb5e8dceee177",
".git/objects/8e/807acaf9799dbf75c28650dd890bbf9f2d9648": "fa8adbd17d181f655666ca1c1d78136c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "20c91713091fc873a7973a2e5ed5b9d3",
".git/logs/refs/heads/main": "20c91713091fc873a7973a2e5ed5b9d3",
".git/logs/refs/remotes/origin/main": "c144975ffa1e8f78da70c05a64383062",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/refs/heads/main": "d005add9104b6143664f69c5b22ae0ac",
".git/refs/remotes/origin/main": "d005add9104b6143664f69c5b22ae0ac",
".git/index": "05282ee03e7cae604842ce6fabdcaff0",
".git/COMMIT_EDITMSG": "cf8f351536d95481d0eabc23571dd903",
"assets/AssetManifest.json": "f7908d22e1d04814d35191edb212f2f9",
"assets/NOTICES": "a9114a2e5acb5ef3c61a110b5b1ab439",
"assets/FontManifest.json": "e3637cec141ff037b4151edf1c0411cb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttericon/lib/fonts/Octicons.ttf": "7242d2fe9e36eb4193d2bc7e521779bf",
"assets/packages/fluttericon/lib/fonts/Maki.ttf": "9ecdcd7d24a2461a55d532b86b2740bd",
"assets/packages/fluttericon/lib/fonts/Brandico.ttf": "791921e9b25210e2551b6eda3f86c733",
"assets/packages/fluttericon/lib/fonts/Entypo.ttf": "58edfaf27b1032ea4778b69297c02b5a",
"assets/packages/fluttericon/lib/fonts/Fontelico.ttf": "3a1e1cecf0a3eae6be5cba3677379ba2",
"assets/packages/fluttericon/lib/fonts/Iconic.ttf": "34e12214307f5f7cf7bc62086fbf55a3",
"assets/packages/fluttericon/lib/fonts/LineariconsFree.ttf": "276b1d61e45eb9b2dde9482545d9e3ac",
"assets/packages/fluttericon/lib/fonts/RpgAwesome.ttf": "99232001effca5cf2b5aa92cc3f3e892",
"assets/packages/fluttericon/lib/fonts/Typicons.ttf": "3386cae1128e52caf268508d477fb660",
"assets/packages/fluttericon/lib/fonts/FontAwesome.ttf": "799bb4e5c577847874f20bd0e9b38a9d",
"assets/packages/fluttericon/lib/fonts/Zocial.ttf": "c29d6e34d8f703a745c6f18d94ce316d",
"assets/packages/fluttericon/lib/fonts/WebSymbols.ttf": "4fd66aa74cdc6e5eaff0ec916ac269c6",
"assets/packages/fluttericon/lib/fonts/Linecons.ttf": "2d0ac407ed11860bf470cb01745fb144",
"assets/packages/fluttericon/lib/fonts/FontAwesome5.ttf": "221b27a41202ddd33990e299939e4504",
"assets/packages/fluttericon/lib/fonts/Elusive.ttf": "23f24df0388819e94db2b3c19841841c",
"assets/packages/fluttericon/lib/fonts/MfgLabs.ttf": "09daa533ea11600a98e3148b7531afe3",
"assets/packages/fluttericon/lib/fonts/Meteocons.ttf": "8b9c7982496155bb39c67eaf2a243731",
"assets/packages/fluttericon/lib/fonts/ModernPictograms.ttf": "5046c536516be5b91c15eb7795e0352d",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/logohaya.jpeg": "b576ff18ca1642a4793e5c06dcac752b",
"assets/assets/igaoemitico.jpeg": "e5717cf51a61a3c30de95f53e6f8afaa",
"assets/assets/igaoemitico.png": "bc397f5cf139579ae332ec9ac7baab5a",
"assets/assets/miticoeigao.jpeg": "cac18a99dc9f3eeea525dc737dcbdf6d",
"assets/assets/podpah.png": "e6a323c85a3b96a8dadd80a6a2033b93",
"assets/assets/logohayashi.png": "76e74afc9add8579f0548eb14d5a6ffd",
"assets/assets/podcastmaiszikadainternet.jpeg": "4ab98fc6645d0aa95291fd8922ee85c2"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
