--- setup_20.x.sh.orig	2024-12-30 05:52:18.550000000 +0000
+++ setup_20.x.sh	2024-12-30 05:54:13.250000000 +0000
@@ -48,7 +48,7 @@ install_pre_reqs() {
     fi
 
     # Run 'apt-get install'
-    if ! apt-get install -y apt-transport-https ca-certificates curl gnupg; then
+    if ! apt-get install -y -o Dir::Cache::archives="/tmp/apt-archives" --download-only apt-transport-https ca-certificates curl gnupg; then
         handle_error "$?" "Failed to install packages"
     fi
 
