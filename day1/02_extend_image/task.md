# Extend previous image

1. Create new Dockefile and base on previous image
2. Add label to Dockerfile

```Dockerfile
LABEL <label_key> ="<label_value>"
```
3. Create new ENTRYPOINT or/and CMD
4. Build image


## Display image history

```sh
<?> history <?>
```

## Find image by label

```sh
<??> ls -f label="<?>=<?>"
```

## Run container with label

```sh
<??> --label owner=<name> <?>
```

1. Run with `--name <name>` flag


## Find your container by label

```sh
<??> -f "label=<?>=<?>"
```
1. Remove container 
2. Run with `--rm` flag
3. Try to find it again