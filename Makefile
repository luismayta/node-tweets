# Makefile.
# See INSTALL for details.

# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)
BIN_DIR = $(ROOT_DIR)/bin
DATA_DIR = $(ROOT_DIR)/var
SCRIPT_DIR = $(ROOT_DIR)/script

WGET = wget
PYTHON = $(VIRTUALENV_DIR)/bin/python

# Bin scripts
ANSIBLE_PROVISION= $(shell) $(SCRIPT_DIR)/provision.sh
ANSIBLE_DEPLOY= $(shell) $(SCRIPT_DIR)/deploy.sh
CREATE_DATABASE = $(shell) $(SCRIPT_DIR)/create_database.sh
CLEAN = $(shell) $(SCRIPT_DIR)/clean.sh
CLEAN_MIGRATIONS = $(shell) $(SCRIPT_DIR)/clean_migrations.sh
SETUP = $(shell) $(SCRIPT_DIR)/setup.sh
TEST = $(shell) $(SCRIPT_DIR)/test.sh
ROLES_ANSIBLE = $(shell) $(SCRIPT_DIR)/roles_ansible.sh
PLUGINS_VAGRANT = $(shell) $(SCRIPT_DIR)/plugins_vagrant.sh
RUNSERVER = $(shell) $(SCRIPT_DIR)/runserver.sh
SYNC = $(shell) $(SCRIPT_DIR)/sync.sh

install:
  $(SETUP)



plugins_vagrant:
	$(PLUGINS_VAGRANT)


roles:
	$(ROLES_ANSIBLE)


ansible_provision:
	$(ANSIBLE_PROVISION)


ansible_deploy:
	$(ANSIBLE_DEPLOY)


clean:
	$(CLEAN)


setup:
	$(SETUP)


deploy:
	$(ANSIBLE_PROVISION)
	$(ANSIBLE_DEPLOY)


distclean: clean
	rm -rf $(ROOT_DIR)/lib
	rm -rf $(ROOT_DIR)/*.egg-info
	rm -rf $(ROOT_DIR)/demo/*.egg-info


maintainer-clean: distclean
	rm -rf $(BIN_DIR)
	rm -rf $(ROOT_DIR)/lib/


runserver:
	$(RUNSERVER)


sync:
	$(SYNC)
