: ### This script is suitible for both Linux and Windows ###
: # The gh-update.sh is a symbolic link to gh-update.bat

: # Download OSM data if needed
wget -N http://download.geofabrik.de/central-america/jamaica-latest.osm.pbf
: # build new routing data"
docker-compose run --rm graphhopper import /usr/src/app/jamaica-latest.osm.pbf -o /data/new-gh/
: # replace the existing routing data
docker-compose run --rm --entrypoint "bash -c" graphhopper "rm -fr /data/default-gh ; mv /data/new-gh /data/default-gh"
: # re/start the service as appropriate
docker-compose restart graphhopper || docker-compose up -d  graphhopper
