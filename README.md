
Hey, this is just a wrapper around the docker container for IRC, running on muh server

* everything is hardcoded all to hell right now
* thanks to the fact that docker volumes can't see symlinks,
    as of right now every cert renewal will require that the conf be changed to point to the new cert
    and the IRC container be rebooted.
