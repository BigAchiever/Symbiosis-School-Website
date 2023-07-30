require("esbuild").build({
  entryPoints: ["./build/web/flutter.js", "./build/web/main.dart.js"],
  bundle: true,
  minify: true,
  allowOverwrite: true,
  treeShaking: true,
  outdir: "../build/web/",
});
