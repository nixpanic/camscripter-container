# CamScripter Container

This CamScripter Container provides the NPM modele [Camscripter
Raspberry](https://www.npmjs.com/package/camscripter-raspberry) as a container
image. The container image can be deployed on small (Raspberry Pi) systems for
running micro apps in the CamScripter environment.

## Usage

Run the container image:

```shell
$ podman run --rm --publish=52520:52520 ghcr.io/nixpanic/camscripter-container:latest
```

Of course it is possible to use Docker instead of `podman` as well.

Once the container image is running, port 52520 on the local system can be
accessed to use the CamScripter service. Point a browser to
[`http://localhost:52520`](http://localhost:52520).

## Firewall

Copy `firewalld-camscripter.xml` to `/etc/firewalld/services/camscripter.xml`
on the system where the container is going to run. After that, the following
command will open up port tcp/52520 on the firewall:

```shell
firewall-cmd --add-service=camscripter --permanent
```
