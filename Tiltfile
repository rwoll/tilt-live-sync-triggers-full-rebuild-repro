docker_compose("./docker-compose.yml")

dc_resource("ui")
docker_build(
    "rwoll/tilt-repro:offline",
    ".",
    live_update=[
        # when package.json changes, we need to do a full build
        fall_back_on(["package.json", "package-lock.json"]),
        # Map the local source code into the container under /src
        sync(".", "/src"),
    ],
)
