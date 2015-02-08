class essential {

  $packages = [
    "build-essential",
    "openssl",
    "libssl-dev",
    "git-core",
    ]

    package {
      $packages:
        ensure  => latest,
        require => Exec["manager update"],
    }
}
