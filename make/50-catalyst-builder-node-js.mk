# This file was generated by @liquid-labs/catalyst-builder-workflow-local-make-node. Refer to
# https://npmjs.com/package/@liquid-labs/catalyst-builder-workflow-local-make-node for further details

#####
# build dist/catalyst-builder-workflow-local-make-node.js
#####

CATALYST_CATALYST_BUILDER_NODE_JS:=$(DIST)/catalyst-builder-workflow-local-make-node.js
CATALYST_CATALYST_BUILDER_NODE_JS_ENTRY=$(SRC)/index.mjs
BUILD_TARGETS+=$(CATALYST_CATALYST_BUILDER_NODE_JS)

$(CATALYST_CATALYST_BUILDER_NODE_JS): package.json $(CATALYST_ALL_NON_TEST_JS_FILES_SRC)
	JS_BUILD_TARGET=$(CATALYST_CATALYST_BUILDER_NODE_JS_ENTRY) \
	  JS_OUT=$@ \
	  $(CATALYST_ROLLUP) --config $(CATALYST_ROLLUP_CONFIG)

#####
# end dist/catalyst-builder-workflow-local-make-node.js
#####
