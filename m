Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E40675AF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 18:17:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D49A41D25;
	Fri, 20 Jan 2023 17:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D49A41D25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674235048;
	bh=UvfcSf+Qfkcj87PUiPpoWAqaLB0dovyGpY63nEA712c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f6jrYpOh52yzE2zzKAs2Ti8OrHoUuCQmTUstdAn7RCaBLt5iCfkiwkpG7QeTB0o/S
	 ASXQi8BRzFcmgKT1zqL3ARhFzrM7BkpFhkYoExQY5PZVgEVvwnAo7VU4ZM0fZQx1qR
	 F2aJzLuSWNRz+CYFKy4mMP3ibnK4ahHTdQa1aHRVsTFVFMs3s5E3yeiFTDXxQ6vdtG
	 9FeiJFtTsr11hadGzYOMEJSvHogRMTANEkn6YtWDc9vvWwf4tL29knnSi4s0kgU+2k
	 ItzWTp7//sWZKtTIOBf2psWVnPsNa/NbMDcojSI1W8fFG3oK4gjz/BwRTfDF9DgGrK
	 BlPJGU3RohY8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-TjeHQB6wE5; Fri, 20 Jan 2023 17:17:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7592441C81;
	Fri, 20 Jan 2023 17:17:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7592441C81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0158C1BF584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0265408F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0265408F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHvOHbRnRmD6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 17:17:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85B8C400E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85B8C400E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C5CB262007;
 Fri, 20 Jan 2023 17:17:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9B3DC433EF;
 Fri, 20 Jan 2023 17:17:17 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Fri, 20 Jan 2023 18:16:50 +0100
Message-Id: <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1674234430.git.lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674235038;
 bh=JSpWMe11XO9OfPAe/bM9OgfjRlsPuvzt2NwQRLvV3l8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dAq4+cvZNat2I3ufQQa6rhFcTHDaOnqT/vqgZ4g+U0j9NLROeFixEFtp4JUfF+wjP
 Fdb58K0zgKCr2GV8it87TxNKb3jKvA0RyLxq1BElxEQLmXSmCWcR1ZsWxJts61zkiR
 iigU+NWdcR87hKv5RsCcrJXGDNk0jlslmlA4/gE5nwUqweuRhoZhfHZ5aZO2N/Eue0
 pBVgqcTgdzVYXA0tb5klgwGKjM+68UWdflvpKv/6e4j2Pl96vIUrde2Xxg0gbTh1AM
 b/3peCRDXGnx5rEICxLCTjENScGlwpctM0BF7ZRf2UbWrqhwJ9pKPXCUlrkdK/WvgG
 ZiRnQ6KLOaFqw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dAq4+cvZ
Subject: [Intel-wired-lan] [PATCH bpf-next 1/7] netdev-genl: create a simple
 family for netdev stuff
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>

Add a Netlink spec-compatible family for netdevs.
This is a very simple implementation without much
thought going into it.

It allows us to reap all the benefits of Netlink specs,
one can use the generic client to issue the commands:

  $ ./gen.py --spec netdev.yaml --do dev_get --json='{"ifindex": 2}'
  {'ifindex': 2, 'xdp-features': 31}

  $ ./gen.py --spec netdev.yaml --dump dev_get
  [{'ifindex': 1, 'xdp-features': 0}, {'ifindex': 2, 'xdp-features': 31}]

the generic python library does not have flags-by-name
support, yet, but we also don't have to carry strings
in the messages, as user space can get the names from
the spec.

Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Co-developed-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 Documentation/netlink/specs/netdev.yaml |  72 ++++++++++
 include/linux/netdevice.h               |   2 +
 include/net/xdp.h                       |   3 +
 include/uapi/linux/netdev.h             |  66 +++++++++
 net/core/Makefile                       |   3 +-
 net/core/netdev-genl-gen.c              |  48 +++++++
 net/core/netdev-genl-gen.h              |  23 +++
 net/core/netdev-genl.c                  | 178 ++++++++++++++++++++++++
 tools/include/uapi/linux/netdev.h       |  66 +++++++++
 9 files changed, 460 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/netlink/specs/netdev.yaml
 create mode 100644 include/uapi/linux/netdev.h
 create mode 100644 net/core/netdev-genl-gen.c
 create mode 100644 net/core/netdev-genl-gen.h
 create mode 100644 net/core/netdev-genl.c
 create mode 100644 tools/include/uapi/linux/netdev.h

diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
new file mode 100644
index 000000000000..6445fa5af9d3
--- /dev/null
+++ b/Documentation/netlink/specs/netdev.yaml
@@ -0,0 +1,72 @@
+name: netdev
+
+doc:
+  netdev configuration over generic netlink.
+
+definitions:
+  -
+    type: enum
+    name: xdp-feat
+    entries: [ aborted, drop, pass, redirect,
+               ndo-xmit, xsk-zerocopy,
+               hw-offload, rx-sg, ndo-xmit-sg
+    ]
+
+attribute-sets:
+  -
+    name: dev
+    attributes:
+      -
+        name: ifindex
+        doc: netdev ifindex
+        type: u32
+        value: 1
+        checks:
+          min: 1
+      -
+        name: pad
+        type: pad
+      -
+        name: xdp-features
+        doc: Bitmask of enabled xdp-features.
+        type: u64
+        enum: xdp-feat
+        enum-as-flags: true
+
+operations:
+  list:
+    -
+      name: dev-get
+      doc: Get / dump information about a netdev.
+      value: 1
+      attribute-set: dev
+      do:
+        request:
+          attributes:
+            - ifindex
+        reply: &dev-all
+          attributes:
+            - ifindex
+            - xdp-features
+      dump:
+        reply: *dev-all
+    -
+      name: dev-add-ntf
+      doc: Notification about device appearing.
+      notify: dev-get
+      mcgrp: mgmt
+    -
+      name: dev-del-ntf
+      doc: Notification about device disappearing.
+      notify: dev-get
+      mcgrp: mgmt
+    -
+      name: dev-change-ntf
+      doc: Notification about device configuration being changed.
+      notify: dev-get
+      mcgrp: mgmt
+
+mcast-groups:
+  list:
+    -
+      name: mgmt
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index aad12a179e54..5c2ebc214583 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -47,6 +47,7 @@
 #include <uapi/linux/netdevice.h>
 #include <uapi/linux/if_bonding.h>
 #include <uapi/linux/pkt_cls.h>
+#include <uapi/linux/netdev.h>
 #include <linux/hashtable.h>
 #include <linux/rbtree.h>
 #include <net/net_trackers.h>
@@ -2048,6 +2049,7 @@ struct net_device {
 
 	/* Read-mostly cache-line for fast-path access */
 	unsigned int		flags;
+	xdp_features_t		xdp_features;
 	unsigned long long	priv_flags;
 	const struct net_device_ops *netdev_ops;
 	int			ifindex;
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 55dbc68bfffc..3d37460f0bdb 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -7,6 +7,7 @@
 #define __LINUX_NET_XDP_H__
 
 #include <linux/skbuff.h> /* skb_shared_info */
+#include <uapi/linux/netdev.h>
 
 /**
  * DOC: XDP RX-queue information
@@ -43,6 +44,8 @@ enum xdp_mem_type {
 	MEM_TYPE_MAX,
 };
 
+typedef u32 xdp_features_t;
+
 /* XDP flags for ndo_xdp_xmit */
 #define XDP_XMIT_FLUSH		(1U << 0)	/* doorbell signal consumer */
 #define XDP_XMIT_FLAGS_MASK	XDP_XMIT_FLUSH
diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
new file mode 100644
index 000000000000..254fc336d469
--- /dev/null
+++ b/include/uapi/linux/netdev.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/netdev.yaml */
+/* YNL-GEN uapi header */
+
+#ifndef _UAPI_LINUX_NETDEV_H
+#define _UAPI_LINUX_NETDEV_H
+
+#define NETDEV_FAMILY_NAME	"netdev"
+#define NETDEV_FAMILY_VERSION	1
+
+enum netdev_xdp_act {
+	NETDEV_XDP_ACT_ABORTED_BIT,
+	NETDEV_XDP_ACT_DROP_BIT,
+	NETDEV_XDP_ACT_PASS_BIT,
+	NETDEV_XDP_ACT_TX_BIT,
+	NETDEV_XDP_ACT_REDIRECT_BIT,
+	NETDEV_XDP_ACT_NDO_XMIT_BIT,
+	NETDEV_XDP_ACT_XSK_ZEROCOPY_BIT,
+	NETDEV_XDP_ACT_HW_OFFLOAD_BIT,
+	NETDEV_XDP_ACT_RX_SG_BIT,
+	NETDEV_XDP_ACT_NDO_XMIT_SG_BIT
+};
+
+#define NETDEV_XDP_ACT_ABORTED		BIT(NETDEV_XDP_ACT_ABORTED_BIT)
+#define NETDEV_XDP_ACT_DROP		BIT(NETDEV_XDP_ACT_DROP_BIT)
+#define NETDEV_XDP_ACT_PASS		BIT(NETDEV_XDP_ACT_PASS_BIT)
+#define NETDEV_XDP_ACT_TX		BIT(NETDEV_XDP_ACT_TX_BIT)
+#define NETDEV_XDP_ACT_REDIRECT		BIT(NETDEV_XDP_ACT_REDIRECT_BIT)
+#define NETDEV_XDP_ACT_NDO_XMIT		BIT(NETDEV_XDP_ACT_NDO_XMIT_BIT)
+#define NETDEV_XDP_ACT_XSK_ZEROCOPY	BIT(NETDEV_XDP_ACT_XSK_ZEROCOPY_BIT)
+#define NETDEV_XDP_ACT_HW_OFFLOAD	BIT(NETDEV_XDP_ACT_HW_OFFLOAD_BIT)
+#define NETDEV_XDP_ACT_RX_SG		BIT(NETDEV_XDP_ACT_RX_SG_BIT)
+#define NETDEV_XDP_ACT_NDO_XMIT_SG	BIT(NETDEV_XDP_ACT_NDO_XMIT_SG_BIT)
+
+#define NETDEV_XDP_ACT_BASIC		(NETDEV_XDP_ACT_DROP |	\
+					 NETDEV_XDP_ACT_PASS |	\
+					 NETDEV_XDP_ACT_TX |	\
+					 NETDEV_XDP_ACT_ABORTED)
+#define NETDEV_XDP_ACT_FULL		(NETDEV_XDP_ACT_BASIC |	\
+					 NETDEV_XDP_ACT_REDIRECT)
+#define NETDEV_XDP_ACT_ZC		(NETDEV_XDP_ACT_FULL |	\
+					 NETDEV_XDP_ACT_XSK_ZEROCOPY)
+
+enum {
+	NETDEV_A_DEV_IFINDEX = 1,
+	NETDEV_A_DEV_PAD,
+	NETDEV_A_DEV_XDP_FEATURES,
+
+	__NETDEV_A_DEV_MAX,
+	NETDEV_A_DEV_MAX = (__NETDEV_A_DEV_MAX - 1)
+};
+
+enum {
+	NETDEV_CMD_DEV_GET = 1,
+	NETDEV_CMD_DEV_ADD_NTF,
+	NETDEV_CMD_DEV_DEL_NTF,
+	NETDEV_CMD_DEV_CHANGE_NTF,
+
+	__NETDEV_CMD_MAX,
+	NETDEV_CMD_MAX = (__NETDEV_CMD_MAX - 1)
+};
+
+#define NETDEV_MCGRP_MGMT	"mgmt"
+
+#endif /* _UAPI_LINUX_NETDEV_H */
diff --git a/net/core/Makefile b/net/core/Makefile
index 10edd66a8a37..8f367813bc68 100644
--- a/net/core/Makefile
+++ b/net/core/Makefile
@@ -12,7 +12,8 @@ obj-$(CONFIG_SYSCTL) += sysctl_net_core.o
 obj-y		     += dev.o dev_addr_lists.o dst.o netevent.o \
 			neighbour.o rtnetlink.o utils.o link_watch.o filter.o \
 			sock_diag.o dev_ioctl.o tso.o sock_reuseport.o \
-			fib_notifier.o xdp.o flow_offload.o gro.o
+			fib_notifier.o xdp.o flow_offload.o gro.o \
+			netdev-genl.o netdev-genl-gen.o
 
 obj-$(CONFIG_NETDEV_ADDR_LIST_TEST) += dev_addr_lists_test.o
 
diff --git a/net/core/netdev-genl-gen.c b/net/core/netdev-genl-gen.c
new file mode 100644
index 000000000000..affb427c3b89
--- /dev/null
+++ b/net/core/netdev-genl-gen.c
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/netdev.yaml */
+/* YNL-GEN kernel source */
+
+#include <net/netlink.h>
+#include <net/genetlink.h>
+
+#include "netdev-genl-gen.h"
+
+#include <linux/netdev.h>
+
+// NETDEV_CMD_DEV_GET - do
+static const struct nla_policy netdev_dev_get_nl_policy[NETDEV_A_DEV_IFINDEX + 1] = {
+	[NETDEV_A_DEV_IFINDEX] = NLA_POLICY_MIN(NLA_U32, 1),
+};
+
+// Ops table for netdev
+static const struct genl_split_ops netdev_nl_ops[2] = {
+	{
+		.cmd		= NETDEV_CMD_DEV_GET,
+		.doit		= netdev_nl_dev_get_doit,
+		.policy		= netdev_dev_get_nl_policy,
+		.maxattr	= NETDEV_A_DEV_IFINDEX,
+		.flags		= GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd	= NETDEV_CMD_DEV_GET,
+		.dumpit	= netdev_nl_dev_get_dumpit,
+		.flags	= GENL_CMD_CAP_DUMP,
+	},
+};
+
+static const struct genl_multicast_group netdev_nl_mcgrps[] = {
+	[NETDEV_NLGRP_MGMT] = { "mgmt", },
+};
+
+struct genl_family netdev_nl_family __ro_after_init = {
+	.name		= NETDEV_FAMILY_NAME,
+	.version	= NETDEV_FAMILY_VERSION,
+	.netnsok	= true,
+	.parallel_ops	= true,
+	.module		= THIS_MODULE,
+	.split_ops	= netdev_nl_ops,
+	.n_split_ops	= ARRAY_SIZE(netdev_nl_ops),
+	.mcgrps		= netdev_nl_mcgrps,
+	.n_mcgrps	= ARRAY_SIZE(netdev_nl_mcgrps),
+};
diff --git a/net/core/netdev-genl-gen.h b/net/core/netdev-genl-gen.h
new file mode 100644
index 000000000000..8bdbe61e9d74
--- /dev/null
+++ b/net/core/netdev-genl-gen.h
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/netdev.yaml */
+/* YNL-GEN kernel header */
+
+#ifndef _LINUX_NETDEV_GEN_H
+#define _LINUX_NETDEV_GEN_H
+
+#include <net/netlink.h>
+#include <net/genetlink.h>
+
+#include <linux/netdev.h>
+
+int netdev_nl_dev_get_doit(struct sk_buff *skb, struct genl_info *info);
+int netdev_nl_dev_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb);
+
+enum {
+	NETDEV_NLGRP_MGMT,
+};
+
+extern struct genl_family netdev_nl_family;
+
+#endif /* _LINUX_NETDEV_GEN_H */
diff --git a/net/core/netdev-genl.c b/net/core/netdev-genl.c
new file mode 100644
index 000000000000..ad1751adb3c6
--- /dev/null
+++ b/net/core/netdev-genl.c
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/netdevice.h>
+#include <linux/notifier.h>
+#include <linux/rtnetlink.h>
+#include <net/net_namespace.h>
+#include <net/sock.h>
+
+#include "netdev-genl-gen.h"
+
+static int
+netdev_nl_dev_fill(struct net_device *netdev, struct sk_buff *rsp,
+		   u32 portid, u32 seq, int flags, u32 cmd)
+{
+	void *hdr;
+	int err;
+
+	hdr = genlmsg_put(rsp, portid, seq, &netdev_nl_family, flags, cmd);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	if (nla_put_u32(rsp, NETDEV_A_DEV_IFINDEX, netdev->ifindex) ||
+	    nla_put_u64_64bit(rsp, NETDEV_A_DEV_XDP_FEATURES,
+			      netdev->xdp_features, NETDEV_A_DEV_PAD)) {
+		genlmsg_cancel(rsp, hdr);
+		return -EINVAL;
+	}
+
+	genlmsg_end(rsp, hdr);
+
+	return 0;
+}
+
+static void
+netdev_genl_dev_notify(struct net_device *netdev, int cmd)
+{
+	struct sk_buff *ntf;
+
+	if (!genl_has_listeners(&netdev_nl_family, dev_net(netdev),
+				NETDEV_NLGRP_MGMT))
+		return;
+
+	ntf = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!ntf)
+		return;
+
+	if (netdev_nl_dev_fill(netdev, ntf, 0, 0, 0, cmd)) {
+		nlmsg_free(ntf);
+		return;
+	}
+
+	genlmsg_multicast_netns(&netdev_nl_family, dev_net(netdev), ntf,
+				0, NETDEV_NLGRP_MGMT, GFP_KERNEL);
+}
+
+int netdev_nl_dev_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net_device *netdev;
+	struct sk_buff *rsp;
+	u32 ifindex;
+	int err;
+
+	if (GENL_REQ_ATTR_CHECK(info, NETDEV_A_DEV_IFINDEX))
+		return -EINVAL;
+
+	ifindex = nla_get_u32(info->attrs[NETDEV_A_DEV_IFINDEX]);
+
+	rsp = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!rsp)
+		return -ENOMEM;
+
+	rtnl_lock();
+
+	netdev = __dev_get_by_index(genl_info_net(info), ifindex);
+	if (netdev)
+		err = netdev_nl_dev_fill(netdev, rsp, info->snd_portid,
+					 info->snd_seq, 0, info->genlhdr->cmd);
+	else
+		err = -ENODEV;
+
+	rtnl_unlock();
+
+	if (err)
+		goto err_free_msg;
+
+	return genlmsg_reply(rsp, info);
+
+err_free_msg:
+	nlmsg_free(rsp);
+	return err;
+}
+
+int netdev_nl_dev_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_device *netdev;
+	int idx = 0, s_idx;
+	int h, s_h;
+	int err;
+
+	s_h = cb->args[0];
+	s_idx = cb->args[1];
+
+	rtnl_lock();
+
+	for (h = s_h; h < NETDEV_HASHENTRIES; h++, s_idx = 0) {
+		struct hlist_head *head;
+
+		idx = 0;
+		head = &net->dev_index_head[h];
+		hlist_for_each_entry(netdev, head, index_hlist) {
+			if (idx < s_idx)
+				goto cont;
+			err = netdev_nl_dev_fill(netdev, skb,
+						 NETLINK_CB(cb->skb).portid,
+						 cb->nlh->nlmsg_seq, 0,
+						 NETDEV_CMD_DEV_GET);
+			if (err < 0)
+				break;
+cont:
+			idx++;
+		}
+	}
+
+	rtnl_unlock();
+
+	if (err != -EMSGSIZE)
+		return err;
+
+	cb->args[1] = idx;
+	cb->args[0] = h;
+	cb->seq = net->dev_base_seq;
+	nl_dump_check_consistent(cb, nlmsg_hdr(skb));
+
+	return skb->len;
+}
+
+static int netdev_genl_netdevice_event(struct notifier_block *nb,
+				       unsigned long event, void *ptr)
+{
+	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
+
+	switch (event) {
+	case NETDEV_REGISTER:
+		netdev_genl_dev_notify(netdev, NETDEV_CMD_DEV_ADD_NTF);
+		break;
+	case NETDEV_UNREGISTER:
+		netdev_genl_dev_notify(netdev, NETDEV_CMD_DEV_DEL_NTF);
+		break;
+	}
+
+	return NOTIFY_OK;
+}
+
+static struct notifier_block netdev_genl_nb = {
+	.notifier_call	= netdev_genl_netdevice_event,
+};
+
+static int __init netdev_genl_init(void)
+{
+	int err;
+
+	err = register_netdevice_notifier(&netdev_genl_nb);
+	if (err)
+		return err;
+
+	err = genl_register_family(&netdev_nl_family);
+	if (err)
+		goto err_unreg_ntf;
+
+	return 0;
+
+err_unreg_ntf:
+	unregister_netdevice_notifier(&netdev_genl_nb);
+	return err;
+}
+
+subsys_initcall(netdev_genl_init);
diff --git a/tools/include/uapi/linux/netdev.h b/tools/include/uapi/linux/netdev.h
new file mode 100644
index 000000000000..254fc336d469
--- /dev/null
+++ b/tools/include/uapi/linux/netdev.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/netdev.yaml */
+/* YNL-GEN uapi header */
+
+#ifndef _UAPI_LINUX_NETDEV_H
+#define _UAPI_LINUX_NETDEV_H
+
+#define NETDEV_FAMILY_NAME	"netdev"
+#define NETDEV_FAMILY_VERSION	1
+
+enum netdev_xdp_act {
+	NETDEV_XDP_ACT_ABORTED_BIT,
+	NETDEV_XDP_ACT_DROP_BIT,
+	NETDEV_XDP_ACT_PASS_BIT,
+	NETDEV_XDP_ACT_TX_BIT,
+	NETDEV_XDP_ACT_REDIRECT_BIT,
+	NETDEV_XDP_ACT_NDO_XMIT_BIT,
+	NETDEV_XDP_ACT_XSK_ZEROCOPY_BIT,
+	NETDEV_XDP_ACT_HW_OFFLOAD_BIT,
+	NETDEV_XDP_ACT_RX_SG_BIT,
+	NETDEV_XDP_ACT_NDO_XMIT_SG_BIT
+};
+
+#define NETDEV_XDP_ACT_ABORTED		BIT(NETDEV_XDP_ACT_ABORTED_BIT)
+#define NETDEV_XDP_ACT_DROP		BIT(NETDEV_XDP_ACT_DROP_BIT)
+#define NETDEV_XDP_ACT_PASS		BIT(NETDEV_XDP_ACT_PASS_BIT)
+#define NETDEV_XDP_ACT_TX		BIT(NETDEV_XDP_ACT_TX_BIT)
+#define NETDEV_XDP_ACT_REDIRECT		BIT(NETDEV_XDP_ACT_REDIRECT_BIT)
+#define NETDEV_XDP_ACT_NDO_XMIT		BIT(NETDEV_XDP_ACT_NDO_XMIT_BIT)
+#define NETDEV_XDP_ACT_XSK_ZEROCOPY	BIT(NETDEV_XDP_ACT_XSK_ZEROCOPY_BIT)
+#define NETDEV_XDP_ACT_HW_OFFLOAD	BIT(NETDEV_XDP_ACT_HW_OFFLOAD_BIT)
+#define NETDEV_XDP_ACT_RX_SG		BIT(NETDEV_XDP_ACT_RX_SG_BIT)
+#define NETDEV_XDP_ACT_NDO_XMIT_SG	BIT(NETDEV_XDP_ACT_NDO_XMIT_SG_BIT)
+
+#define NETDEV_XDP_ACT_BASIC		(NETDEV_XDP_ACT_DROP |	\
+					 NETDEV_XDP_ACT_PASS |	\
+					 NETDEV_XDP_ACT_TX |	\
+					 NETDEV_XDP_ACT_ABORTED)
+#define NETDEV_XDP_ACT_FULL		(NETDEV_XDP_ACT_BASIC |	\
+					 NETDEV_XDP_ACT_REDIRECT)
+#define NETDEV_XDP_ACT_ZC		(NETDEV_XDP_ACT_FULL |	\
+					 NETDEV_XDP_ACT_XSK_ZEROCOPY)
+
+enum {
+	NETDEV_A_DEV_IFINDEX = 1,
+	NETDEV_A_DEV_PAD,
+	NETDEV_A_DEV_XDP_FEATURES,
+
+	__NETDEV_A_DEV_MAX,
+	NETDEV_A_DEV_MAX = (__NETDEV_A_DEV_MAX - 1)
+};
+
+enum {
+	NETDEV_CMD_DEV_GET = 1,
+	NETDEV_CMD_DEV_ADD_NTF,
+	NETDEV_CMD_DEV_DEL_NTF,
+	NETDEV_CMD_DEV_CHANGE_NTF,
+
+	__NETDEV_CMD_MAX,
+	NETDEV_CMD_MAX = (__NETDEV_CMD_MAX - 1)
+};
+
+#define NETDEV_MCGRP_MGMT	"mgmt"
+
+#endif /* _UAPI_LINUX_NETDEV_H */
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
