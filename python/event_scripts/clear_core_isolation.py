#!/usr/bin/python

from jnpr.junos import Device
from jnpr.junos.utils.config import Config

dev = Device()
dev.open()
config_set = """
delete interfaces xe-0/0/9 disable
delete interfaces xe-0/0/10 disable
delete interfaces xe-0/0/11 disable
"""
cu = Config(dev)
cu.lock()
cu.load(config_set, format="set", merge=True)
cu.commit()
cu.unlock()
dev.close()