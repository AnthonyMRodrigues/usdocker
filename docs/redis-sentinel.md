# Useful script - Help for 'redis'

## Start the redis-sentinel service

```
usdocker redis-sentinel up
```

## Stop the redis-sentinel service 

```
usdocker redis-sentinel down
```

## Connect to the redis-sentinel bash

```
usdocker redis-sentinel connect
```

## Customize "<usd_home>/redis-sentinel/environment"

```
REDIS-SENTINEL_IMAGE=miko2u/redis-sentinel
REDIS-SENTINEL_PORT=26379
REDIS-SENTINEL_FOLDER=/var/lib/redis-sentinel
```