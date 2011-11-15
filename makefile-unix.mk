
# Copyright (C) Ngwsx


NGINX_BIN=nginx
NGINX_DIR=../../nginx
ADDON_DIR=$(PWD)

include $(NGINX_DIR)/unix.args

CONF_ARGS= \
	$(CORE_CONF_ARGS) \
	--with-debug \
	--without-select_module \
	$(HTTP_CONF_ARGS) \
	--without-http-cache \
	--without-http_charset_module \
	--without-http_gzip_module \
	--without-http_ssi_module \
	--without-http_userid_module \
	--without-http_access_module \
	--without-http_auth_basic_module \
	--without-http_autoindex_module \
	--without-http_status_module \
	--without-http_geo_module \
	--without-http_map_module \
	--without-http_split_clients_module \
	--without-http_referer_module \
	--without-http_rewrite_module \
	--without-http_proxy_module \
	--without-http_fastcgi_module \
	--without-http_uwsgi_module \
	--without-http_scgi_module \
	--without-http_memcached_module \
	--without-http_limit_zone_module \
	--without-http_limit_req_module \
	--without-http_empty_gif_module \
	--without-http_browser_module \
	--without-http_upstream_ip_hash_module \
	--add-module=$(ADDON_DIR)

include $(NGINX_DIR)/unix.mk
