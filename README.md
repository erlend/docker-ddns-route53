# ddns-route53

Simple dynamic DNS updater script using Amazon Route53 by [mthssdrbrg](https://github.com/mthssdrbrg/ddns-route53).

## Configuration

Configure AWS with the environment variables `AWS_ACCESS_KEY_ID` and
`AWS_SECRET_ACCESS_KEY`. You should probably use a [env file](https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e---env---env-file) to keep this sensitive information out of the shell's history.

You must also make sure to [apply a proper policy](https://github.com/mthssdrbrg/ddns-route53#installation) to the user or role.

## Usage

```sh
docker run --rm --env-file route53.env erlend/ddns-route53 -z ZONE_ID -r RECORD
```

For more information run `docker run --rm erlend/ddns-route53` or see the [git repo](https://github.com/mthssdrbrg/ddns-route53).
