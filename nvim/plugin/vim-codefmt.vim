call glaive***REMOVED***Install(***REMOVED***
Glaive codefmt google_java_executable="java -jar /Users/zshen/Documents/google-java-format-1.12.0-all-deps.jar"

" auto formating
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildi***REMOVED***er
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END
