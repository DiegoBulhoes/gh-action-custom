#!/bin/sh -l

repository="https://api.github.com/repos/torvalds/linux"
echo $repository

response=$(curl "${repository}" | jq ".description")
echo $response

echo "::set-output name=response::$response"