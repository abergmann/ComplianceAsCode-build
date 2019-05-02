# ComplianceAsCode-build
This Docker container can be used to build SLE12 ComplianceAsCode profiles.

To build the container:
```
#> docker build -t complianceascode-build .
```

To run the container:
```
#> mkdir out
#> docker run -it --rm -v $PWD/out:/home/build/out complianceascode-build
```

