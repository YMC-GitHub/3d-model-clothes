#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
source "$THIS_FILE_PATH/path-resolve.sh"

PROJECT_PATH=$(path_resolve "$THIS_FILE_PATH" "../")

rm -rf $(path_resolve "$PROJECT_PATH" "archives")
rm -rf $(path_resolve "$PROJECT_PATH" "autoback")
rm -rf $(path_resolve "$PROJECT_PATH" "downloads")
rm -rf $(path_resolve "$PROJECT_PATH" "export")
rm -rf $(path_resolve "$PROJECT_PATH" "express")
rm -rf $(path_resolve "$PROJECT_PATH" "import")
rm -rf $(path_resolve "$PROJECT_PATH" "materiallibraries")
rm -rf $(path_resolve "$PROJECT_PATH" "previews")
rm -rf $(path_resolve "$PROJECT_PATH" "proxies")
rm -rf $(path_resolve "$PROJECT_PATH" "renderoutput")
rm -rf $(path_resolve "$PROJECT_PATH" "renderpresets")
rm -rf $(path_resolve "$PROJECT_PATH" "sceneassets")
rm -rf $(path_resolve "$PROJECT_PATH" "scenes")
rm -rf $(path_resolve "$PROJECT_PATH" "vpost")
rm -rf $(path_resolve "$PROJECT_PATH" "*.mxp")
## file-usage
# ./scripts/rm-3dmax2018-project-dir.sh
