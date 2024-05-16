set -euxo pipefail

AFTER=true time ruby --disable-gems -I/Users/jacklynma/side-projects/heap-profiler/lib:/Users/jacklynma/side-projects/rubygems/lib:/Users/jacklynma/side-projects/rubygems/bundler/lib $(pwd)/bundle.rb $@

ruby -I/Users/jacklynma/side-projects/heap-profiler/lib /Users/jacklynma/side-projects/heap-profiler/exe/heap-profiler heap-prof.after -m 10 -r --batch-size 10000000
