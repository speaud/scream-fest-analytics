# Setup

1. You need Docker installed and running
1. Create a `.env` file in the root directory (i.e., `touch .env`) then declare the following environment variables
  * ```
    JUPYTER_CONTAINER_PORT=8888
    JUPYTER_LOCALHOST_PORT=8888
    PACKAGE_NAME=scream_fest_analytics
    ```
3. Build the image `bin/build.bash`
1. Run a container `bin/run.bash`

After you run a contanier, you'll see Jupyter access details in the console. Here is a example:
```
    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-8-open.html
    Or copy and paste one of these URLs:
        http://3817cbf406b9:8888/?token=449cfb5a7349558fb89d2f35e96070c1fc4c9a0a7b81eef7
     or http://127.0.0.1:8888/?token=449cfb5a7349558fb89d2f35e96070c1fc4c9a0a7b81eef7
```

# Usage

Task | Command
-|-
Build the image|`bin/build.bash`
Run a container|`bin/run.bash`
Tunnel into the running container|`bin/exec.bash`
Stop the container|`bin/stop.bash`
Test development environment workflow (build, start, run, and stop) and run pytest|`bin/e2e_test`
