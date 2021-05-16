cd packages || exit 1
git apply --ignore-space-change --ignore-whitespace '../mingw-w64-libxml2.patch' || exit 1
cd mingw-w64-libxml2 || exit 1
dos2unix PKGBUILD || exit 1
MINGW_ARCH=mingw64 makepkg-mingw -sLf --nosign --noconfirm --skippgpcheck --noprogressbar --skipchecksums || exit 1
