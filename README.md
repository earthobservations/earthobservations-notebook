# earthobservations-notebook

## About
`earthobservations-notebook` is a community Jupyter Docker Stack image.

The image includes some gems on top of the [cgspatial-notebook] image, which is
in turn based on the [datascience-notebook] and the [scipy-notebook] images.


## Bootstrapping phase
- We are following the guidelines at [Jupyter Community Stacks].
- It is a new notebook and actively looking for contributors.
- Our mission is _standing on the shoulder of giants_ without _reinventing the wheel_.


## Build
The image is not yet available on any container registry. So, we have to build
it beforehand.
```sh
docker build --tag=earthobservations/earthobservations-notebook .
```


## Run
Invoke an _ephemeral_ container running a Jupyter Notebook server and expose it
on port 8888.
```sh
docker run -it --rm --publish=8888:8888 earthobservations/earthobservations-notebook
```
The server logs will appear in the terminal. Visiting
`http://<hostname>:8888/?token=<token>` in a browser loads JupyterLab, where
`hostname` is the name of the computer running docker and `token` is the secret
token printed in the console. Docker destroys the container after notebook
server exit.


## Credits
Kudos go to all people from the community for tirelessly working on the
foundation infrastructure. You know who you are.



[Jupyter Community Stacks]: https://jupyter-docker-stacks.readthedocs.io/en/latest/contributing/stacks.html
[cgspatial-notebook]: https://github.com/SCiO-systems/cgspatial-notebook
[datascience-notebook]: https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook
[scipy-notebook]: https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook
