# datatheme-pgyi

> !WIP: this is work in progress.

A Datatheme is a defined [Tabular Datapackage](http://dataprotocols.org/tabular-data-package/). Essentially a Class from which you can base your Tabular Datapackage from. The intent is to have one place to define and version the data model using the [JSON Table Schema](http://dataprotocols.org/json-table-schema/).


You build the Datatheme into a base ``datapackage.json`` file which you can extend for your purpose.

A datatheme consists of a ``datatheme.json`` file which describes itself and paths to all schema resources referenced by this theme.

````
$ cat datatheme.json
{
    "name": "mackenzie.grab",
    "version": "1.0.1",
    "repository": "http://github.com/tesera/datatheme-mackenzie-grab.git",
    "author": "Yves Richard",
    "description": "Datatheme for Mackenzie Basin Grab data.",
    "schemas": [
        "./schemas/grab_data.json",
        "./schemas/grab_meta.json"
    ]
}
````

####Building into a datapackage.json file (datatheme to datapackage)
````
$ sh ./dt2dp.sh > datapackage.json
````

When deploying to S3 use:
bash publi.sh put dev.mackenzie.grab
In .env file dev.mackenzie is the DATATHEME_ROOT and .[theme] is resolved dynamically. 

cat grab_data.csv | awk -v action=validate -f www/awk/grab_data.awk
