# ComplianceAsCode-build
This Docker container can be used to build SLE12 ComplianceAsCode profiles.

To build the container:
```
#> docker build -t complianceascode-build .
```

To run the container:
```
#> mkdir build
#> chmod 777 build
#> docker run -it --rm -v $PWD/build:/home/build/out complianceascode-build
```

