#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
source "$THIS_FILE_PATH/path-resolve.sh"

PROJECT_PATH=$(path_resolve "$THIS_FILE_PATH" "../")

src="${PROJECT_PATH}" &&
  des="${PROJECT_PATH}" &&
  mkdir -p "${des}/src/" &&
  mv "${src}/src/football-export.ms" "${des}/src/cloth-export.ms"
mv "${src}/src/football-max.ms" "${des}/src/cloth-max.ms"
mv "${src}/src/football-uvw.ms" "${des}/src/cloth-uvw.ms"

#file-usage
# ./scripts/mv.sh
