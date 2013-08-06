export HS_STATIC=$HOME/code/work/handshake/Handshake/djserver/handshake/static

Cake dist
cp dist/swagger*.js $HS_STATIC/tastypie_swagger/js/
cp dist/lib/*.js $HS_STATIC/tastypie_swagger/js/lib/
cp dist/css/* $HS_STATIC/tastypie_swagger/css/
