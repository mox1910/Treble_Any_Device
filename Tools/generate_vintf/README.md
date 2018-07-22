# generate_vintf

Usage:
----------
    ./generate.sh

# assemble_vintf

Checks if a given manifest / matrix file is valid and fill in build-time flags into the given file.

Usage:
----------
    assemble_vintf
        -h 
            Display full help text.
        -i <input file>[:<input file>[...]]
            A list of input files. Format is automatically detected for the
            first file, and the remaining files must have the same format.
            Files other than the first file should only have <hal> defined;
            other entries are ignored.
        -o <output file>
            Optional output file. If not specified, write to stdout.
        -m
            a compatible compatibility matrix is
            generated instead; for example, given a device manifest,
            a framework compatibility matrix is generated. This flag
            is ignored when input is a compatibility matrix.
        -c [<check file>]
            After writing the output file, check compatibility between
            output file and check file.
            If -c is set but the check file is not specified, a warning
            message is written to stderr. Return 0.
            If the check file is specified but is not compatible, an error
            message is written to stderr. Return 1.
        --kernel=<version>:<android-base.cfg>[:<android-base-arch.cfg>[...]]
            Add a kernel entry to framework compatibility matrix.
            Ignored for other input format.
            <version> has format: 3.18
            <android-base.cfg> is the location of android-base.cfg
            <android-base-arch.cfg> is the location of an optional
            arch-specific config fragment, more than one may be specified
