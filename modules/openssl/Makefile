#
# Copyright (C) 2019 Waldemar Kozaczuk, Ltd.
#
# This work is open source software, licensed under the terms of the
# BSD license as described in the LICENSE file in the top-level directory.
#
SRC = $(shell readlink -f ../..)

module:
	$(SRC)/scripts/manifest_from_host.sh -l $(OPENSSL_DIR)/lib/libssl.so.1.1 > usr.manifest
	# From krb5-libs
	$(SRC)/scripts/manifest_from_host.sh -l $(KRB5)/lib/libgssapi_krb5.so.2 >> usr.manifest
	# From libselinux
	$(SRC)/scripts/manifest_from_host.sh -l $(LIBSELINUX)/lib/libselinux.so.1 >> usr.manifest
	# From xz-libs
	$(SRC)/scripts/manifest_from_host.sh -l $(XZ)/lib/liblzma.so.5 >> usr.manifest

.PHONY: module

clean:
	rm -rf usr.manifest
.PHONY: clean
