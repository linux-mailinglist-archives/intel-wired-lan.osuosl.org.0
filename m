Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E549649BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 17:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07473418AB;
	Thu, 29 Aug 2024 15:18:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RrdNNzKebnyT; Thu, 29 Aug 2024 15:18:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2463405BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724944702;
	bh=zTGuuzlXD3iCOvOdCTNLyK5gprM/SES7Ucqw69P1mPw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9w798NVWyJfSfTrbgXvQhd7Sp+G81HqpkombKbt7cbc5uW1it+9nc36TTxmA5o+5h
	 VAtv9BxJnXTgbIqpYvpTwrO1DVT8T5/zKwh5usUg8rBFTasfAyKawcTO1tx1rM6i9R
	 vAXtxtPLsJ55MUWJZwnq6/oaVJIebhJTkukgooFrkQtf2THrVhHvvSFkOa7CKfn3nF
	 6WvW+yxr4ZyossVG42tQZtOBIFTw3xbDMOR4cV+6V4vDZe4mV48p7krQlUGxPhdjyo
	 g9+Dmg1PDrQ5+ijFxNmD32Qy58pNy2VmX0g4vAEvwnVdwuoPigKNBfzkofk0kXtCgF
	 rSD9vBXqQajLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2463405BD;
	Thu, 29 Aug 2024 15:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 270331BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 128B340223
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RlFbNRmi-kWK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 15:18:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DF2B4016D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DF2B4016D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DF2B4016D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:17 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-79-UqI7-FxEOxSI-yUfAMgtCQ-1; Thu,
 29 Aug 2024 11:18:11 -0400
X-MC-Unique: UqI7-FxEOxSI-yUfAMgtCQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5AE121955BF2; Thu, 29 Aug 2024 15:18:09 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.217])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id C38563002249; Thu, 29 Aug 2024 15:18:04 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 29 Aug 2024 17:17:01 +0200
Message-ID: <d1fe533039fe636f0fe905ebe90bcfa8226352a2.1724944117.git.pabeni@redhat.com>
In-Reply-To: <cover.1724944116.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1724944697;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zTGuuzlXD3iCOvOdCTNLyK5gprM/SES7Ucqw69P1mPw=;
 b=Avhq8ChT6MgagkLTWFjrgaVNTt2tFbNviWm0+fQTXohUZ6JsIt52Vho1yrKENdDoZ/beCu
 bhC4e+v5+9DgE6DIkDMKfAuj8DAf5WdMKGpNNkpF0kUrlgcQlKoFVaOavQdFmqpJwCzaqJ
 lvuedXNBEHTRuhyCH37CT0dSkuniSBc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Avhq8ChT
Subject: [Intel-wired-lan] [PATCH v5 net-next 08/12] testing: net-drv: add
 basic shaper test
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Leverage a basic/dummy netdevsim implementation to do functional
coverage for NL interface.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v4 -> v5:
  - updated to new driver API
  - more consistent indentation

rfc v1 -> v2:
  - added more test-cases WRT nesting and grouping
---
 drivers/net/Kconfig                           |   1 +
 drivers/net/netdevsim/netdev.c                |  43 +++
 tools/testing/selftests/drivers/net/Makefile  |   1 +
 tools/testing/selftests/drivers/net/shaper.py | 290 ++++++++++++++++++
 .../testing/selftests/net/lib/py/__init__.py  |   1 +
 tools/testing/selftests/net/lib/py/ynl.py     |   5 +
 6 files changed, 341 insertions(+)
 create mode 100755 tools/testing/selftests/drivers/net/shaper.py

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 9920b3a68ed1..1fd5acdc73c6 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -641,6 +641,7 @@ config NETDEVSIM
 	depends on PTP_1588_CLOCK_MOCK || PTP_1588_CLOCK_MOCK=n
 	select NET_DEVLINK
 	select PAGE_POOL
+	select NET_SHAPER
 	help
 	  This driver is a developer testing tool and software model that can
 	  be used to test various control path networking APIs, especially
diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
index 017a6102be0a..3c18191c7448 100644
--- a/drivers/net/netdevsim/netdev.c
+++ b/drivers/net/netdevsim/netdev.c
@@ -22,6 +22,7 @@
 #include <net/netdev_queues.h>
 #include <net/page_pool/helpers.h>
 #include <net/netlink.h>
+#include <net/net_shaper.h>
 #include <net/pkt_cls.h>
 #include <net/rtnetlink.h>
 #include <net/udp_tunnel.h>
@@ -475,6 +476,47 @@ static int nsim_stop(struct net_device *dev)
 	return 0;
 }
 
+static int nsim_shaper_set(struct net_shaper_binding *binding,
+			   const struct net_shaper_handle *handle,
+			   const struct net_shaper_info *shaper,
+			   struct netlink_ext_ack *extack)
+{
+	return 0;
+}
+
+static int nsim_shaper_del(struct net_shaper_binding *binding,
+			   const struct net_shaper_handle *handle,
+			   struct netlink_ext_ack *extack)
+{
+	return 0;
+}
+
+static int nsim_shaper_group(struct net_shaper_binding *binding,
+			     int leaves_count,
+			     const struct net_shaper_handle *leaves_handles,
+			     const struct net_shaper_info *leaves,
+			     const struct net_shaper_handle *root_handle,
+			     const struct net_shaper_info *root,
+			     struct netlink_ext_ack *extack)
+{
+	return 0;
+}
+
+static int nsim_shaper_cap(struct net_shaper_binding *binding,
+			   enum net_shaper_scope scope,
+			   unsigned long *flags)
+{
+	*flags = ULONG_MAX;
+	return 0;
+}
+
+static const struct net_shaper_ops nsim_shaper_ops = {
+	.set			= nsim_shaper_set,
+	.delete			= nsim_shaper_del,
+	.group			= nsim_shaper_group,
+	.capabilities		= nsim_shaper_cap,
+};
+
 static const struct net_device_ops nsim_netdev_ops = {
 	.ndo_start_xmit		= nsim_start_xmit,
 	.ndo_set_rx_mode	= nsim_set_rx_mode,
@@ -496,6 +538,7 @@ static const struct net_device_ops nsim_netdev_ops = {
 	.ndo_bpf		= nsim_bpf,
 	.ndo_open		= nsim_open,
 	.ndo_stop		= nsim_stop,
+	.net_shaper_ops		= &nsim_shaper_ops,
 };
 
 static const struct net_device_ops nsim_vf_netdev_ops = {
diff --git a/tools/testing/selftests/drivers/net/Makefile b/tools/testing/selftests/drivers/net/Makefile
index 39fb97a8c1df..25aec5c081df 100644
--- a/tools/testing/selftests/drivers/net/Makefile
+++ b/tools/testing/selftests/drivers/net/Makefile
@@ -9,6 +9,7 @@ TEST_PROGS := \
 	ping.py \
 	queues.py \
 	stats.py \
+	shaper.py
 # end of TEST_PROGS
 
 include ../../lib.mk
diff --git a/tools/testing/selftests/drivers/net/shaper.py b/tools/testing/selftests/drivers/net/shaper.py
new file mode 100755
index 000000000000..ed1ceba13915
--- /dev/null
+++ b/tools/testing/selftests/drivers/net/shaper.py
@@ -0,0 +1,290 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0
+
+from lib.py import ksft_run, ksft_exit, ksft_eq, ksft_true, KsftSkipEx
+from lib.py import NetshaperFamily
+from lib.py import NetDrvEnv
+from lib.py import NlError
+from lib.py import cmd
+import glob
+import sys
+
+def get_shapers(cfg, nl_shaper) -> None:
+    try:
+        shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                                dump=True)
+    except NlError as e:
+        if e.error == 95:
+            raise KsftSkipEx("shapers not supported by the device")
+        raise
+
+    # Default configuration: no shapers configured.
+    ksft_eq(len(shapers), 0)
+
+def get_caps(cfg, nl_shaper) -> None:
+    try:
+        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex},
+                                 dump=True)
+    except NlError as e:
+        if e.error == 95:
+            raise KsftSkipEx("shapers not supported by the device")
+        raise
+
+    # Each device implementing shaper support must support some
+    # features in at least a scope.
+    ksft_true(len(caps)> 0)
+
+def set_qshapers(cfg, nl_shaper) -> None:
+    try:
+        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex,
+                                 'scope':'queue'})
+    except NlError as e:
+        if e.error == 95:
+            cfg.queues = False;
+            raise KsftSkipEx("shapers not supported by the device")
+        raise
+    if not 'support-bw-max' in caps or not 'support-metric-bps' in caps:
+            raise KsftSkipEx("device does not support queue scope shapers with bw_max and metric bps")
+
+    nl_shaper.set({'ifindex': cfg.ifindex,
+                   'shaper': {'handle': {'scope': 'queue', 'id': 1},
+                              'metric': 'bps',
+                              'bw-max': 10000}})
+    nl_shaper.set({'ifindex': cfg.ifindex,
+                   'shaper': {'handle': {'scope': 'queue', 'id': 2},
+                              'metric': 'bps',
+                              'bw-max': 20000}})
+
+    # Querying a specific shaper not yet configured must fail.
+    raised = False
+    try:
+        shaper_q0 = nl_shaper.get({'ifindex': cfg.ifindex,
+                                   'handle': {'scope': 'queue', 'id': 0}})
+    except (NlError):
+        raised = True
+    ksft_eq(raised, True)
+
+    shaper_q1 = nl_shaper.get({'ifindex': cfg.ifindex,
+                              'handle': {'scope': 'queue', 'id': 1}})
+    ksft_eq(shaper_q1, {'ifindex': cfg.ifindex,
+                        'parent': {'scope': 'netdev'},
+                        'handle': {'scope': 'queue', 'id': 1},
+                        'metric': 'bps',
+                        'bw-max': 10000})
+
+    shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                            dump=True)
+    ksft_eq(shapers, [{'ifindex': cfg.ifindex,
+                       'parent': {'scope': 'netdev'},
+                       'handle': {'scope': 'queue', 'id': 1},
+                       'metric': 'bps',
+                       'bw-max': 10000},
+                      {'ifindex': cfg.ifindex,
+                       'parent': {'scope': 'netdev'},
+                       'handle': {'scope': 'queue', 'id': 2},
+                       'metric': 'bps',
+                       'bw-max': 20000}])
+
+def del_qshapers(cfg, nl_shaper) -> None:
+    if not cfg.queues:
+        raise KsftSkipEx("queue shapers not supported by device, skipping delete")
+
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'queue', 'id': 2}})
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'queue', 'id': 1}})
+    shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                            dump=True)
+    ksft_eq(len(shapers), 0)
+
+def set_nshapers(cfg, nl_shaper) -> None:
+    # Check required features.
+    try:
+        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex,
+                                  'scope':'netdev'})
+    except NlError as e:
+        if e.error == 95:
+            cfg.netdev = False;
+            raise KsftSkipEx("shapers not supported by the device")
+        raise
+    if not 'support-bw-max' in caps or not 'support-metric-bps' in caps:
+            raise KsftSkipEx("device does not support nested netdev scope shapers with weight")
+
+    nl_shaper.set({'ifindex': cfg.ifindex,
+                   'shaper': {
+                        'handle': {'scope': 'netdev', 'id': 0},
+                        'bw-max': 100000}})
+
+    shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                            dump=True)
+    ksft_eq(shapers, [{'ifindex': cfg.ifindex,
+                       'handle': {'scope': 'netdev'},
+                       'metric': 'bps',
+                       'bw-max': 100000}])
+
+def del_nshapers(cfg, nl_shaper) -> None:
+    if not cfg.netdev:
+        raise KsftSkipEx("netdev shaper not supported by device, skipping delete")
+
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'netdev'}})
+    shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                            dump=True)
+    ksft_eq(len(shapers), 0)
+
+def basic_groups(cfg, nl_shaper) -> None:
+    if not cfg.netdev:
+        raise KsftSkipEx("netdev shaper not supported by the device")
+    try:
+        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex,
+                                  'scope':'queue'})
+    except NlError as e:
+        if e.error == 95:
+            cfg.queues = False;
+            raise KsftSkipEx("shapers not supported by the device")
+        raise
+    if not 'support-weight' in caps:
+            raise KsftSkipEx("device does not support queue scope shapers with weight")
+
+    node_handle = nl_shaper.group({
+                        'ifindex': cfg.ifindex,
+                        'leaves':[{'handle': {'scope': 'queue', 'id': 1},
+                                   'weight': 1},
+                                  {'handle': {'scope': 'queue', 'id': 2},
+                                   'weight': 2}],
+                         'node': {'handle': {'scope':'netdev'},
+                                  'metric': 'bps',
+                                  'bw-max': 10000}})
+    ksft_eq(node_handle, {'ifindex': cfg.ifindex,
+                          'handle': {'scope': 'netdev'}})
+
+    shaper = nl_shaper.get({'ifindex': cfg.ifindex,
+                            'handle': {'scope': 'queue', 'id': 1}})
+    ksft_eq(shaper, {'ifindex': cfg.ifindex,
+                     'parent': {'scope': 'netdev'},
+                     'handle': {'scope': 'queue', 'id': 1},
+                     'weight': 1 })
+
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'queue', 'id': 2}})
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'queue', 'id': 1}})
+
+    # Deleting all the leaves shaper does not affect the node one
+    # when the latter has 'netdev' scope.
+    shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                            dump=True)
+    ksft_eq(len(shapers), 1)
+
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'netdev'}})
+
+def qgroups(cfg, nl_shaper) -> None:
+    try:
+        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex,
+                                  'scope':'node'})
+    except NlError as e:
+        if e.error == 95:
+            raise KsftSkipEx("shapers not supported by the device")
+        raise
+    if not 'support-bw-max' in caps or not 'support-metric-bps' in caps:
+            raise KsftSkipEx("device does not support node scope shapers with bw_max and metric bps")
+    try:
+        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex,
+                                  'scope':'queue'})
+    except NlError as e:
+        if e.error == 95:
+            raise KsftSkipEx("shapers not supported by the device")
+        raise
+    if not 'support-nesting' in caps or not 'support-weight' in caps or not 'support-metric-bps' in caps:
+            raise KsftSkipEx("device does not support nested queue scope shapers with weight")
+
+    node_handle = nl_shaper.group({
+                   'ifindex': cfg.ifindex,
+                   'leaves':[{'handle': {'scope': 'queue', 'id': 1},
+                              'metric': 'bps', 'weight': 3},
+                             {'handle': {'scope': 'queue', 'id': 2},
+                              'metric': 'bps', 'weight': 2}],
+                   'node': {'handle': {'scope':'node'},
+                            'metric': 'bps',
+                            'bw-max': 10000}})
+    node_id = node_handle['handle']['id']
+
+    shaper = nl_shaper.get({'ifindex': cfg.ifindex,
+                            'handle': {'scope': 'queue', 'id': 1}})
+    ksft_eq(shaper, {'ifindex': cfg.ifindex,
+                     'parent': {'scope': 'node', 'id': node_id},
+                     'handle': {'scope': 'queue', 'id': 1},
+                     'weight': 3})
+
+    # Grouping to a specified, not existing node scope shaper must fail
+    raised = False
+    try:
+        nl_shaper.group({
+                   'ifindex': cfg.ifindex,
+                   'leaves':[{'handle': {'scope': 'queue', 'id': 3},
+                              'metric': 'bps',
+                              'weight': 3}],
+                   'node': {'handle': {'scope':'node', 'id': node_id + 1},
+                            'metric': 'bps',
+                            'bw-max': 10000}})
+
+    except (NlError):
+        raised = True
+    ksft_eq(raised, True)
+
+    node_handle = nl_shaper.group({
+                   'ifindex': cfg.ifindex,
+                   'leaves':[{'handle': {'scope': 'queue', 'id': 3},
+                              'metric': 'bps',
+                              'weight': 4}],
+                   'node': {'handle': {'scope':'node', 'id': node_id}}})
+    ksft_eq(node_handle, {'ifindex': cfg.ifindex,
+                          'handle': {'scope': 'node', 'id': node_id}})
+
+    shaper = nl_shaper.get({'ifindex': cfg.ifindex,
+                            'handle': {'scope': 'queue', 'id': 3}})
+    ksft_eq(shaper, {'ifindex': cfg.ifindex,
+                     'parent': {'scope': 'node', 'id': node_id},
+                     'handle': {'scope': 'queue', 'id': 3},
+                     'weight': 4})
+
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'queue', 'id': 2}})
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'queue', 'id': 1}})
+
+    # Deleting a non empty group will move the leaves downstream.
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'node', 'id': node_id}})
+    shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                            dump=True)
+    ksft_eq(shapers, [{'ifindex': cfg.ifindex,
+                       'parent': {'scope': 'netdev'},
+                       'handle': {'scope': 'queue', 'id': 3},
+                       'weight': 4}])
+
+    # Finish and verify the complete cleanup.
+    nl_shaper.delete({'ifindex': cfg.ifindex,
+                      'handle': {'scope': 'queue', 'id': 3}})
+    shapers = nl_shaper.get({'ifindex': cfg.ifindex},
+                            dump=True)
+    ksft_eq(len(shapers), 0)
+
+def main() -> None:
+    with NetDrvEnv(__file__, queue_count=4) as cfg:
+        cfg.queues = True
+        cfg.netdev = True
+        ksft_run([get_shapers,
+                  get_caps,
+                  set_qshapers,
+                  del_qshapers,
+                  set_nshapers,
+                  del_nshapers,
+                  basic_groups,
+                  qgroups], args=(cfg, NetshaperFamily()))
+    ksft_exit()
+
+
+if __name__ == "__main__":
+    main()
diff --git a/tools/testing/selftests/net/lib/py/__init__.py b/tools/testing/selftests/net/lib/py/__init__.py
index b6d498d125fe..54d8f5eba810 100644
--- a/tools/testing/selftests/net/lib/py/__init__.py
+++ b/tools/testing/selftests/net/lib/py/__init__.py
@@ -6,3 +6,4 @@ from .netns import NetNS
 from .nsim import *
 from .utils import *
 from .ynl import NlError, YnlFamily, EthtoolFamily, NetdevFamily, RtnlFamily
+from .ynl import NetshaperFamily
diff --git a/tools/testing/selftests/net/lib/py/ynl.py b/tools/testing/selftests/net/lib/py/ynl.py
index 1ace58370c06..a0d689d58c57 100644
--- a/tools/testing/selftests/net/lib/py/ynl.py
+++ b/tools/testing/selftests/net/lib/py/ynl.py
@@ -47,3 +47,8 @@ class NetdevFamily(YnlFamily):
     def __init__(self):
         super().__init__((SPEC_PATH / Path('netdev.yaml')).as_posix(),
                          schema='')
+
+class NetshaperFamily(YnlFamily):
+    def __init__(self):
+        super().__init__((SPEC_PATH / Path('net_shaper.yaml')).as_posix(),
+                         schema='')
-- 
2.45.2

