#!/usr/bin/env bash

echo '{"name": "mackenzie-grab-dataset",'
echo '"datatheme": { "name": "mackenzie.grab", "version": "1.0.1", "repository": "https://github.com/tesera/datatheme-mackenzie-grab.git"},'
echo '"resources": ['
    cat ./schemas/grab_data.json
    echo ,
    cat ./schemas/grab_meta.json
echo ']}'