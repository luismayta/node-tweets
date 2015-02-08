class curl {
    package { "curl":
        ensure => installed,
        require => Exec["manager update"],
    }
}
