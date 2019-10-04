#!/bin/sh

[ -n "$HELLOMVC_APP_NAME" ] || exit 1
[ -n "$HELLOMVC_ENVIRONMENT" ] || exit 1
[ -n "$HELLOMVC_PUBLISH_TO" ] || exit 1

case "$HELLOMVC_ENVIRONMENT" in
  Development|Staging) publish_config=Debug ;;
  *) publish_config=Release ;;
esac

dotnet publish $HELLOMVC_APP_NAME --configuration $publish_config --output $HELLOMVC_PUBLISH_TO
