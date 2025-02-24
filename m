Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB981A430B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 00:23:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EEB180F13;
	Mon, 24 Feb 2025 23:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IGvfABBtHftm; Mon, 24 Feb 2025 23:23:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02A7B80E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740439402;
	bh=fpaJdIXVHvbS7wfP6NDpymc0t0c2rEus8iFrUxfHs1c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G1fXiP6QhCDLVhV2oZsT9p0sA1BEt36/zqHHt9HixB1xrxI9b87QMKKcVIB+f5IpA
	 j0PjQU1TFuCsGvmwJLHfNCGaN9GKUKhCPgu0Lm6mqsUrJJ0MqMnVV7qF6qHimHOAB+
	 6GRONY8y04cbdGGqz+NudIyypxi7F30GGsyokoevHQ83G1LgfLXihVQ571s+DDswok
	 rRt295VOxeoFTfT3qvbzuQQRCmOjBGNjQTY+5YcWN3ptpEjlqQAXrIH04KPeY6cC7a
	 pl5TJ7JELjiykXmHPfFoO+3nIKUKKrdNmv5Q4fOTgTOYaaABbS8zHr6TiEUi8cP9KO
	 3YGxhA/13HzQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02A7B80E98;
	Mon, 24 Feb 2025 23:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D1911531
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37B6160590
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNd1TmT6d7UQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 23:23:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6D2F860781
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D2F860781
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D2F860781
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:23:16 +0000 (UTC)
X-CSE-ConnectionGUID: oeFgFcrSQAi3CeakKVCVMg==
X-CSE-MsgGUID: mPC86yQlQRKsuVYyVroMdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40406741"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40406741"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:23:16 -0800
X-CSE-ConnectionGUID: IeYZEdD0SDC/I4K0ahO3bQ==
X-CSE-MsgGUID: S9jyQtTjT32k7VP+6oSkeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="115997860"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.244.43])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:23:10 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Feb 2025 16:22:27 -0700
Message-ID: <20250224232228.990783-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250224232228.990783-1-ahmed.zaki@intel.com>
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740439397; x=1771975397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hPujxlQXl1wFkVtGHaPX61YAUwQi+g+Z5zLvtQWyEu0=;
 b=NM/Vr/sg3OdtEK4akqfc6IL8b/e6XJTnUPAotRsVesjldPbA6xB02KLT
 JCBi0c0VzinEOh1DPUN0i76R5mOdljrQE8DN1Mw3Lw8Bl5e5xul5tuh0I
 /ugrBHDyon8pjn7/nRJyuWRTs5aC3Q4aMpo2Lm1xLyHNiajiz+uX2Bzl3
 ccbUo3ljr+ae9eLCb1SVjsQSL6lFDNAXHZRC4d58rN4dGn6YdyEELnxiS
 twpyhcR0HXjV18ccyI4BDf5dznnBp/jZspLCdfybuqRGcYZyQrKaYzYna
 T6UsDIAWMB+3VCMrONqBRKZDg++n5JD6FctLeGWd18Wo6fux8wzfxGm7u
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NM/Vr/sg
Subject: [Intel-wired-lan] [PATCH net-next v9 6/6] selftests: drv-net: add
 tests for napi IRQ affinity notifiers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>

Add tests to check that the napi retained the IRQ after down/up,
multiple changes in the number of rx queues and after
attaching/releasing XDP program.

Tested on ice and idpf:

   # NETIF=<iface> tools/testing/selftests/drivers/net/hw/irq.py
    KTAP version 1
    1..4
    ok 1 irq.check_irqs_reported
    ok 2 irq.check_reconfig_queues
    ok 3 irq.check_reconfig_xdp
    ok 4 irq.check_down
    # Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0

Tested-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 .../testing/selftests/drivers/net/hw/Makefile |  4 +
 tools/testing/selftests/drivers/net/hw/irq.py | 99 +++++++++++++++++++
 .../selftests/drivers/net/hw/xdp_dummy.bpf.c  | 13 +++
 .../selftests/drivers/net/lib/py/env.py       |  8 +-
 4 files changed, 123 insertions(+), 1 deletion(-)
 create mode 100755 tools/testing/selftests/drivers/net/hw/irq.py
 create mode 100644 tools/testing/selftests/drivers/net/hw/xdp_dummy.bpf.c

diff --git a/tools/testing/selftests/drivers/net/hw/Makefile b/tools/testing/selftests/drivers/net/hw/Makefile
index ae783e18be83..73e7b826a141 100644
--- a/tools/testing/selftests/drivers/net/hw/Makefile
+++ b/tools/testing/selftests/drivers/net/hw/Makefile
@@ -10,6 +10,7 @@ TEST_PROGS = \
 	ethtool_rmon.sh \
 	hw_stats_l3.sh \
 	hw_stats_l3_gre.sh \
+	irq.py \
 	loopback.sh \
 	nic_link_layer.py \
 	nic_performance.py \
@@ -33,9 +34,12 @@ TEST_INCLUDES := \
 # YNL files, must be before "include ..lib.mk"
 YNL_GEN_FILES := ncdevmem
 TEST_GEN_FILES += $(YNL_GEN_FILES)
+TEST_GEN_FILES += $(patsubst %.c,%.o,$(wildcard *.bpf.c))
 
 include ../../../lib.mk
 
 # YNL build
 YNL_GENS := ethtool netdev
 include ../../../net/ynl.mk
+
+include ../../../net/bpf.mk
diff --git a/tools/testing/selftests/drivers/net/hw/irq.py b/tools/testing/selftests/drivers/net/hw/irq.py
new file mode 100755
index 000000000000..42ab98370245
--- /dev/null
+++ b/tools/testing/selftests/drivers/net/hw/irq.py
@@ -0,0 +1,99 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0
+
+from lib.py import ksft_run, ksft_exit
+from lib.py import ksft_ge, ksft_eq
+from lib.py import KsftSkipEx
+from lib.py import ksft_disruptive
+from lib.py import EthtoolFamily, NetdevFamily
+from lib.py import NetDrvEnv
+from lib.py import cmd, ip, defer
+
+
+def read_affinity(irq) -> str:
+    with open(f'/proc/irq/{irq}/smp_affinity', 'r') as fp:
+        return fp.read().lstrip("0,").strip()
+
+
+def write_affinity(irq, what) -> str:
+    if what != read_affinity(irq):
+        with open(f'/proc/irq/{irq}/smp_affinity', 'w') as fp:
+            fp.write(what)
+
+
+def check_irqs_reported(cfg) -> None:
+    """ Check that device reports IRQs for NAPI instances """
+    napis = cfg.netnl.napi_get({"ifindex": cfg.ifindex}, dump=True)
+    irqs = sum(['irq' in x for x in napis])
+
+    ksft_ge(irqs, 1)
+    ksft_eq(irqs, len(napis))
+
+
+def _check_reconfig(cfg, reconfig_cb) -> None:
+    napis = cfg.netnl.napi_get({"ifindex": cfg.ifindex}, dump=True)
+    for n in reversed(napis):
+        if 'irq' in n:
+            break
+    else:
+        raise KsftSkipEx(f"Device has no NAPI with IRQ attribute (#napis: {len(napis)}")
+
+    old = read_affinity(n['irq'])
+    # pick an affinity that's not the current one
+    new = "3" if old != "3" else "5"
+    write_affinity(n['irq'], new)
+    defer(write_affinity, n['irq'], old)
+
+    reconfig_cb(cfg)
+
+    ksft_eq(read_affinity(n['irq']), new, comment="IRQ affinity changed after reconfig")
+
+
+def check_reconfig_queues(cfg) -> None:
+    def reconfig(cfg) -> None:
+        channels = cfg.ethnl.channels_get({'header': {'dev-index': cfg.ifindex}})
+        if channels['combined-count'] == 0:
+            rx_type = 'rx'
+        else:
+            rx_type = 'combined'
+        cur_queue_cnt = channels[f'{rx_type}-count']
+        max_queue_cnt = channels[f'{rx_type}-max']
+
+        cmd(f"ethtool -L {cfg.ifname} {rx_type} 1")
+        cmd(f"ethtool -L {cfg.ifname} {rx_type} {max_queue_cnt}")
+        cmd(f"ethtool -L {cfg.ifname} {rx_type} {cur_queue_cnt}")
+
+    _check_reconfig(cfg, reconfig)
+
+
+def check_reconfig_xdp(cfg) -> None:
+    def reconfig(cfg) -> None:
+        ip(f"link set dev %s xdp obj %s sec xdp" %
+            (cfg.ifname, cfg.rpath("xdp_dummy.bpf.o")))
+        ip(f"link set dev %s xdp off" % cfg.ifname)
+
+    _check_reconfig(cfg, reconfig)
+
+
+@ksft_disruptive
+def check_down(cfg) -> None:
+    def reconfig(cfg) -> None:
+        ip("link set dev %s down" % cfg.ifname)
+        ip("link set dev %s up" % cfg.ifname)
+
+    _check_reconfig(cfg, reconfig)
+
+
+def main() -> None:
+    with NetDrvEnv(__file__, nsim_test=False) as cfg:
+        cfg.ethnl = EthtoolFamily()
+        cfg.netnl = NetdevFamily()
+
+        ksft_run([check_irqs_reported, check_reconfig_queues,
+                  check_reconfig_xdp, check_down],
+                 args=(cfg, ))
+    ksft_exit()
+
+
+if __name__ == "__main__":
+    main()
diff --git a/tools/testing/selftests/drivers/net/hw/xdp_dummy.bpf.c b/tools/testing/selftests/drivers/net/hw/xdp_dummy.bpf.c
new file mode 100644
index 000000000000..d988b2e0cee8
--- /dev/null
+++ b/tools/testing/selftests/drivers/net/hw/xdp_dummy.bpf.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define KBUILD_MODNAME "xdp_dummy"
+#include <linux/bpf.h>
+#include <bpf/bpf_helpers.h>
+
+SEC("xdp")
+int xdp_dummy_prog(struct xdp_md *ctx)
+{
+	return XDP_PASS;
+}
+
+char _license[] SEC("license") = "GPL";
diff --git a/tools/testing/selftests/drivers/net/lib/py/env.py b/tools/testing/selftests/drivers/net/lib/py/env.py
index 96b33b5ef9dd..fd4d674e6c72 100644
--- a/tools/testing/selftests/drivers/net/lib/py/env.py
+++ b/tools/testing/selftests/drivers/net/lib/py/env.py
@@ -58,14 +58,20 @@ class NetDrvEnv(NetDrvEnvBase):
     """
     Class for a single NIC / host env, with no remote end
     """
-    def __init__(self, src_path, **kwargs):
+    def __init__(self, src_path, nsim_test=None, **kwargs):
         super().__init__(src_path)
 
         self._ns = None
 
         if 'NETIF' in self.env:
+            if nsim_test is True:
+                raise KsftXfailEx("Test only works on netdevsim")
+
             self.dev = ip("-d link show dev " + self.env['NETIF'], json=True)[0]
         else:
+            if nsim_test is False:
+                raise KsftXfailEx("Test does not work on netdevsim")
+
             self._ns = NetdevSimDev(**kwargs)
             self.dev = self._ns.nsims[0].dev
         self.ifname = self.dev['ifname']
-- 
2.43.0

