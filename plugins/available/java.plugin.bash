cite about-plugin
about-plugin 'Java and JAR helper functions'

function jar_manifest {
  about "extracts the specified JAR file's MANIFEST file and prints it to stdout"
  group 'java'
  param '1: JAR file to extract the MANIFEST from'
  example 'jar_manifest lib/foo.jar'

  unzip -c $1 META-INF/MANIFEST.MF
}

function set_java_home {
    local extra_args=
    if [ -n "$1" ]
    then
        extra_args="-v $1"
    fi
    [ -x /usr/libexec/java_home ] && export JAVA_HOME="$(/usr/libexec/java_home $extra_args)"
}

set_java_home $JAVA_VERSION

