Bench image on Online Labs
==========================

[![GuardRails badge](https://badges.production.guardrails.io/moul/scaleway-image-bench.svg)](https://www.guardrails.io)

Scripts to build the Bench image on Online Labs

This image is built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the official [Docker](https://github.com/online-labs/image-app-docker) image.

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/online-labs/image-tools#docker-based-builder)

---

Install
-------

Build and write the image to /dev/nbd1 (see [documentation](https://doc.cloud.online.net/howto/create_image.html))

    $ make install

Push the image on S3 (requires `s3cmd`)

    $ make publish_on_s3 S3_URL=s3://my-bucket/my-subdir/

Full list of commands available at: [online-labs/image-tools](https://github.com/online-labs/image-tools/tree/master#commands)
