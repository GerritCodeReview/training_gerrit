ifeq ($(origin ICONS_DIR), undefined)
    ICONS_DIR := $(shell locate "asciidoc/icons" |head -n 1)
endif

.PHONY:
all:    eclipse-and-gerrit \
	gerrit-and-code-review-best-practices \
	gerrit-new-features-2.1.8-to-2.4 \
	gerrit-new-features-2.5 \
	gerrit-new-features-2.6 \
	git-gerrit-workshop \
	submit-type-with-prolog \
 	index
	
.PHONY:
eclipse-and-gerrit:
	$(Q)mkdir -p target/presentations;presentations/eclipse-and-gerrit/makeslides $(ICONS_DIR)

.PHONY:
gerrit-and-code-review-best-practices:
	$(Q)presentations/gerrit-and-code-review-best-practices/makeslides $(ICONS_DIR)

.PHONY:
gerrit-new-features-2.1.8-to-2.4:
	$(Q)presentations/gerrit-new-features-2.1.8-to-2.4/makeslides $(ICONS_DIR)

.PHONY:
gerrit-new-features-2.5:
	$(Q)presentations/gerrit-new-features-2.5/makeslides $(ICONS_DIR)

.PHONY:
gerrit-new-features-2.6:
	$(Q)presentations/gerrit-new-features-2.6/makeslides $(ICONS_DIR)

.PHONY:
git-gerrit-workshop:
	$(Q)presentations/git-gerrit-workshop/makeslides $(ICONS_DIR)

.PHONY:
submit-type-with-prolog:
	$(Q)presentations/submit-type-with-prolog/makeslides $(ICONS_DIR)

.PHONY:
index:
	$(Q)asciidoc -o target/index.html index.txt

.PHONY:
clean:
	rm -rf target/*
