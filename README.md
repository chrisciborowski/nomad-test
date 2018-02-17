# nomad-test

Get both nomad and consul:
```
$ wget https://releases.hashicorp.com/consul/1.0.6/consul_1.0.6_linux_amd64.zip?_ga=2.157883453.607422611.1518640403-1753635178.1500039494
$ wget https://releases.hashicorp.com/nomad/0.7.1/nomad_0.7.1_linux_amd64.zip?_ga=2.191715242.1496675832.1518630644$15465111.1502989434
```

Unzip and start up the daemons:
```
$ nomad agent -config=nomad.hcl
$ consul agent -dev -client=0.0.0.0 -dns-port=53 -recursor=8.8.8.8
```

Some basic nomad commands
```
$ nomad plan nomad-test.nomad
$ nomad run nomad-test.nomad
$ nomad status
$ nomad logs <alloc_id>
$ nomad stop -purge nomad-test
```
