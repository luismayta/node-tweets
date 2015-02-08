class mongodb {

    $packages = [
        "mongodb-10gen=2.4.1",
        #"mongodb-org=2.4.1",
        #"mongodb-org-server=2.4.1",
        #"mongodb-org-shell=2.4.1",
        #"mongodb-org-mongos=2.4.1",
        #"mongodb-org-tools=2.4.1",
    ]

    package
    {
      $packages:
        ensure  => latest,
        require => [Exec["apt-get update"]],
    }

    exec { "add key mongo":
        command => "apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10",
        require => [Package["build-essential"]],
        unless =>  "ls -l /etc/apt/sources.list.d/mongodb.list"
              
        #logoutput => "on_failure",
    }

    file { "/etc/apt/sources.list.d/mongodb.list":
        content=> 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen',
        require => [Exec["add key mongo"]],
    }
    
    exec { "apt-get update":
        refreshonly => true,
        subscribe => File["/etc/apt/sources.list.d/mongodb.list"],
    }
}
