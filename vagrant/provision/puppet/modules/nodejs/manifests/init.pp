class nodejs 
{      
    $modules_npm = [
      "bower",
      "grunt-cli",
    ]

    exec 
    { 
        "clone nodejs":
            command => "git clone https://github.com/joyent/node.git node",
            cwd           => "/var/tmp/",
            require => [Exec["manager update"], 
                        Package['git-core'], 
                        Package['curl'], 
                        Package['build-essential'], 
                        Package['openssl'], 
                        Package['libssl-dev']],
            unless =>  "ls -l /var/tmp/node"
    }
    
    exec 
    { 
        "configure nodejs":
            command       => "/var/tmp/node/configure --openssl-libpath=/usr/lib/ssl",
            cwd           => "/var/tmp/node/",
            unless        => "which node",
            require       => [Exec["clone nodejs"]],
            logoutput     => true
    }
    
    exec 
    { 
        "make nodejs":
            command       => "make",
            cwd           => "/var/tmp/node/",
            unless        => "which node",
            require       => [Exec["configure nodejs"]],
            logoutput     => true
    }
    
    exec 
    { 
        "make install nodejs":
            command       => "make install",
            cwd           => "/var/tmp/node/",
            unless        => "which node",
            require       => [Exec["make nodejs"]],
            logoutput     => true
    }
    
    exec 
    { 
        "install modules npm nodejs":
            command       => "npm install -g $modules_npm",
            onlyif        => "which npm",
            logoutput     => true
    }

}
