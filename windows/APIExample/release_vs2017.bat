pushd Release
pushd Language

del *.exp
del *.pdb
del *.lib
del *.iobj
del *.ipdb

popd Language

del *.pdb
del *.log
del *.ipdb
del *.iobj

IF NOT EXIST vcruntime140.dll (
  copy C:\Windows\SysWOW64\VCRuntime140.dll Release\
)

IF NOT EXIST mfc140u.dll (
  copy C:\Windows\SysWOW64\mfc140u.dll Release\
)

popd Release
pause