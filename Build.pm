use v6;
use Panda::Common;
use Panda::Builder;
use LibraryMake;
use Shell::Command;

class Build is Panda::Builder {
    method build($workdir) {
        mkpath "$workdir/resources";
        make("$workdir/src", "$workdir/resources");
    }
}
