# Readme


## Prepare repo

Before rendering the blog locally or pushing new changes to the output repo, the _[prep.sh]_ needs to be run in order to fetch Hugo (for rendering locally) and fetching the output submodule with the content to be pushed. Run the following (from within the _[tools]_ directory):
```
./prep.sh
```


## Render current

In order to render the current source, run the _[render.sh]_ script. This will make use of the Hugo server downloaded in the previous step. This will also update the _[output]_ submodule. Usually no changes will be needed to the script, but if a custom IP needs to be used (for example if the environment is Windows Subsystem for Linux (WSL)), just uncomment the line:

```
#default_ip="127.0.0.1"
```

And specify the IP for Hugo to listen at.

Finally, run the following (from within the _[tools]_ directory):

```
./render.sh
```


## Deploy changes

To deploy the current output to the final repository that hosts the blog, just run the following (from within the _[tools]_ directory): 

```
./deploy.sh
```