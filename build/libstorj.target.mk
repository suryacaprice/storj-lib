# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libstorj
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=libstorj' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/home/caprice/.node-gyp/8.12.0/include/node \
	-I/home/caprice/.node-gyp/8.12.0/src \
	-I/home/caprice/.node-gyp/8.12.0/deps/openssl/config \
	-I/home/caprice/.node-gyp/8.12.0/deps/openssl/openssl/include \
	-I/home/caprice/.node-gyp/8.12.0/deps/uv/include \
	-I/home/caprice/.node-gyp/8.12.0/deps/zlib \
	-I/home/caprice/.node-gyp/8.12.0/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I/home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/include \
	-I/home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=libstorj' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/home/caprice/.node-gyp/8.12.0/include/node \
	-I/home/caprice/.node-gyp/8.12.0/src \
	-I/home/caprice/.node-gyp/8.12.0/deps/openssl/config \
	-I/home/caprice/.node-gyp/8.12.0/deps/openssl/openssl/include \
	-I/home/caprice/.node-gyp/8.12.0/deps/uv/include \
	-I/home/caprice/.node-gyp/8.12.0/deps/zlib \
	-I/home/caprice/.node-gyp/8.12.0/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I/home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/include \
	-I/home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/include

OBJS := \
	$(obj).target/$(TARGET)/binding.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libnettle.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libgnutls.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libhogweed.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libjson-c.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libgmp.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libcurl.a -Wl,--no-whole-archive

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libnettle.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libgnutls.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libhogweed.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libjson-c.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libgmp.a -Wl,--whole-archive /home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/depends/lib/libcurl.a -Wl,--no-whole-archive

LIBS := \
	/home/caprice/Documents/storj-lib/libstorj-2.0.0-beta3/lib/libstorj.a

$(obj).target/storj.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/storj.node: LIBS := $(LIBS)
$(obj).target/storj.node: TOOLSET := $(TOOLSET)
$(obj).target/storj.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/storj.node
# Add target alias
.PHONY: libstorj
libstorj: $(builddir)/storj.node

# Copy this to the executable output path.
$(builddir)/storj.node: TOOLSET := $(TOOLSET)
$(builddir)/storj.node: $(obj).target/storj.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/storj.node
# Short alias for building this executable.
.PHONY: storj.node
storj.node: $(obj).target/storj.node $(builddir)/storj.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/storj.node

