# Israel Hiking Map Graphopper router using Docker

## Installation

- Download this repository
- Run `./ele-update.sh` in the downloaded directory. It will make the IHM elevation data available for use by Graphhopper.

## Activation and updated
Run `./gh-update.sh` in order to
- Download the OSM data
- Calculate new routing data cache from it
- Start, or restart, Graphhopper with the new routing data cache

This script can be run periodically in order to update the routing data cache.