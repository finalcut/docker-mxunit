# What is mxunit
[Mxunit](http://mxunit.org/) is a unit testing framework for coldfusion.  It was developed [a bunch of by people other than me](http://wiki.mxunit.org/display/default/MXUnit+Documentation).

## How to use this Image
=============

### start the image

```
  docker run -it --name mxunit finalcut/mxunit
```
After the container starts feel free to `exit` it.  The container does not need to be running to be used.


### connect to it from another container

```
  docker run -d -p 8880:80 -v /var/www:/var/www --volumes-from mxunit finalcut/coldfusion10
```

The --volumes-from switch is what exposes the volume /tmp/mxunit from the finalcut/mxunit container.
Once your coldfusion container is running you will probably want to add a global mapping to mxunit

```cfm
<cfscript>
    // Login is always required.
        adminObj = createObject("component","cfide.adminapi.administrator");
        adminObj.login("Adm1n$");
        mapObj = createObject("component", "cfide.adminapi.extensions");
        mapObj.setMapping("mxunit", "/tmp/mxunit");
</cfscript>
```
