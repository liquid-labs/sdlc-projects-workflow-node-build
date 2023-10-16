# This file was generated by @liquid-labs/catalyst-builder-workflow-local-make-node. Refer to
# https://npmjs.com/package/@liquid-labs/catalyst-builder-workflow-local-make-node for further details

CATALYST_DATA_SELECTOR=\( -path "*/test/data/*"  -o -path "*/test/data-*/*" -o -path "*/test-data/*" \)

# all test data (cli and lib)
CATALYST_TEST_DATA_SRC:=$(shell find $(SRC) -type f $(CATALYST_DATA_SELECTOR))
CATALYST_TEST_DATA_BUILT:=$(patsubst $(SRC)/%, $(TEST_STAGING)/%, $(CATALYST_TEST_DATA_SRC))
