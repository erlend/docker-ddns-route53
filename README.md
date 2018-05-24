# ddns-route53

Simple dynamic DNS updater script using Amazon Route53 by [mthssdrbrg](https://github.com/mthssdrbrg/ddns-route53).

## Configuration

### Alternative 1) configuration in env-file

Just add the environment variables `AWS_ACCESS_KEY_ID` and
`AWS_SECRET_ACCESS_KEY` to a [env file](https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e---env---env-file).

Then specify the file with the `--env-file` argument on `docker run`.

### Alternative 2) configuration in volume

Create a container for storing the configuration:

```
docker run -it --name=ddns-data erlend/ddsn-route53 aws configure
```

Then specify the container name by running with `--volumes-from=ddns-data`.

*You could use an existing aws-cli configuration by running with
`-v $HOME/.aws:/home/ddns/.aws`*

You must also make sure to [apply a proper policy](https://github.com/mthssdrbrg/ddns-route53#installation) to the user or role.

## Usage

```sh
docker run --rm [CONFIG_ARGUMENT_HERE] erlend/ddns-route53 -z ZONE_ID -r RECORD
```

For more information run `docker run --rm erlend/ddns-route53` or visit the [git
repo](https://github.com/mthssdrbrg/ddns-route53).
