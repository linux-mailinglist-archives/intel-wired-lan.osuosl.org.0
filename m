Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BBC808DC8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 17:49:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B908183D2A;
	Thu,  7 Dec 2023 16:48:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B908183D2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701967738;
	bh=ohHQRxdzzDUtLdf2v8gdOG0eRb/mjKF3wpnd7m0SLCs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uElPzTcVjIyMe8Bg61jQ4dnMfE5dKs/6XLXl4bPMGRt5MtO1mD3r+2YrSJIFFRVVr
	 fu8vuOalmRtJvaHTfRVUmgqb0c4bg/pA3ZEcIlcj4JjDcCu1+6ExPKG6aVNk4NmS0p
	 a6Cuz68RXxDsVYg8us0zOfSXgQuX7zlzCik7fm2M/pw+Imm23mCyCiMcST5/hBimY0
	 fjPhAGC0+7dcXo0/PnZYZFixyF2WxBgRxXvchg22AklvHnaPVvhpGE7JX8vVmS6/Mt
	 Xbv+GZ/mEnKcSZjTWCVXLei63GRZSjn7bPpV44UujOIZVPRaPC/OneUlKZI2yMdCAa
	 Of8jYeSfO1fQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdbD88a3IaHO; Thu,  7 Dec 2023 16:48:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18DFE83CED;
	Thu,  7 Dec 2023 16:48:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18DFE83CED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17E661BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFE36420F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFE36420F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A--f3bZIaMuh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 16:48:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB1794210F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB1794210F
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="373759561"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="373759561"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 08:48:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="775477351"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="775477351"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2023 08:48:38 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 16CCE35429;
 Thu,  7 Dec 2023 16:48:36 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Dec 2023 17:49:08 +0100
Message-ID: <20231207164911.14330-5-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701967721; x=1733503721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oATl+5skT1o6b7uXUtIlvTWpLNq2QG4O+3v2RN8YE7Q=;
 b=RSIM7vrBzJGmruSidjw1Y/bjmGETuS2CdrwDM+Ok5uDXiiwIe91kndDg
 vfs5w6sTSN3qs9vmkYHP1MWcgxko5nn1Qa6plh1Pw7yoEkjFUQukSQiZM
 j17fviUIWYvFC5RMlPHF3cD1WEnZSASOrGabILF53Q5zvdsDfVkoLkSl+
 Cy09Cg7zsUHnSSMronPW55c4TPAxxzcUZoWr28blfnKLe435mkm1XXLgA
 CqlJklshjD0rZDjQEBRw44WQdRppjdr/PPXO5vxwtRk8vWt8HDVS2JloW
 0G5oxHkQQYjmcwNyKGWjy5vzN5FJIGwYAZQxlg1NwLT0Xs8/X418+9ylo
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RSIM7vrB
Subject: [Intel-wired-lan] [PATCH iwl-next v4 4/7] pfcp: add PFCP module
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
Cc: jiri@resnulli.us, andy@kernel.org, wojciech.drewek@intel.com,
 netdev@vger.kernel.org, idosch@nvidia.com, jesse.brandeburg@intel.com,
 aleksander.lobakin@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Packet Forwarding Control Protocol (PFCP) is a 3GPP Protocol
used between the control plane and the user plane function.
It is specified in TS 29.244[1].

Note that this module is not designed to support this Protocol
in the kernel space. There is no support for parsing any PFCP messages.
There is no API that could be used by any userspace daemon.
Basically it does not support PFCP. This protocol is sophisticated
and there is no need for implementing it in the kernel. The purpose
of this module is to allow users to setup software and hardware offload
of PFCP packets using tc tool.

When user requests to create a PFCP device, a new socket is created.
The socket is set up with port number 8805 which is specific for
PFCP [29.244 4.2.2]. This allow to receive PFCP request messages,
response messages use other ports.

Note that only one PFCP netdev can be created.

Only IPv4 is supported at this time.

[1] https://portal.3gpp.org/desktopmodules/Specifications/SpecificationDetails.aspx?specificationId=3111

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/Kconfig  |  13 +++
 drivers/net/Makefile |   1 +
 drivers/net/pfcp.c   | 223 +++++++++++++++++++++++++++++++++++++++++++
 include/net/pfcp.h   |  17 ++++
 4 files changed, 254 insertions(+)
 create mode 100644 drivers/net/pfcp.c
 create mode 100644 include/net/pfcp.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index af0da4bb429b..0af6ac053292 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -290,6 +290,19 @@ config GTP
 	  To compile this drivers as a module, choose M here: the module
 	  will be called gtp.
 
+config PFCP
+	tristate "Packet Forwarding Control Protocol (PFCP)"
+	depends on INET
+	select NET_UDP_TUNNEL
+	help
+	  This allows one to create PFCP virtual interfaces that allows to
+	  set up software and hardware offload of PFCP packets.
+	  Note that this module does not support PFCP protocol in the kernel space.
+	  There is no support for parsing any PFCP messages.
+
+	  To compile this drivers as a module, choose M here: the module
+	  will be called pfcp.
+
 config AMT
 	tristate "Automatic Multicast Tunneling (AMT)"
 	depends on INET && IP_MULTICAST
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 7cab36f94782..9c053673d6b2 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -38,6 +38,7 @@ obj-$(CONFIG_GENEVE) += geneve.o
 obj-$(CONFIG_BAREUDP) += bareudp.o
 obj-$(CONFIG_GTP) += gtp.o
 obj-$(CONFIG_NLMON) += nlmon.o
+obj-$(CONFIG_PFCP) += pfcp.o
 obj-$(CONFIG_NET_VRF) += vrf.o
 obj-$(CONFIG_VSOCKMON) += vsockmon.o
 obj-$(CONFIG_MHI_NET) += mhi_net.o
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
new file mode 100644
index 000000000000..3f1ee0ae7111
--- /dev/null
+++ b/drivers/net/pfcp.c
@@ -0,0 +1,223 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * PFCP according to 3GPP TS 29.244
+ *
+ * Copyright (C) 2022, Intel Corporation.
+ */
+
+#include <linux/module.h>
+#include <linux/netdevice.h>
+#include <linux/rculist.h>
+#include <linux/skbuff.h>
+#include <linux/types.h>
+
+#include <net/udp.h>
+#include <net/udp_tunnel.h>
+#include <net/pfcp.h>
+
+struct pfcp_dev {
+	struct list_head	list;
+
+	struct socket		*sock;
+	struct net_device	*dev;
+	struct net		*net;
+};
+
+static unsigned int pfcp_net_id __read_mostly;
+
+struct pfcp_net {
+	struct list_head	pfcp_dev_list;
+};
+
+static void pfcp_del_sock(struct pfcp_dev *pfcp)
+{
+	udp_tunnel_sock_release(pfcp->sock);
+	pfcp->sock = NULL;
+}
+
+static void pfcp_dev_uninit(struct net_device *dev)
+{
+	struct pfcp_dev *pfcp = netdev_priv(dev);
+
+	pfcp_del_sock(pfcp);
+}
+
+static int pfcp_dev_init(struct net_device *dev)
+{
+	struct pfcp_dev *pfcp = netdev_priv(dev);
+
+	pfcp->dev = dev;
+
+	return 0;
+}
+
+static const struct net_device_ops pfcp_netdev_ops = {
+	.ndo_init		= pfcp_dev_init,
+	.ndo_uninit		= pfcp_dev_uninit,
+	.ndo_get_stats64	= dev_get_tstats64,
+};
+
+static const struct device_type pfcp_type = {
+	.name = "pfcp",
+};
+
+static void pfcp_link_setup(struct net_device *dev)
+{
+	dev->netdev_ops = &pfcp_netdev_ops;
+	dev->needs_free_netdev = true;
+	SET_NETDEV_DEVTYPE(dev, &pfcp_type);
+
+	dev->hard_header_len = 0;
+	dev->addr_len = 0;
+
+	dev->type = ARPHRD_NONE;
+	dev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
+	dev->priv_flags |= IFF_NO_QUEUE;
+
+	netif_keep_dst(dev);
+}
+
+static struct socket *pfcp_create_sock(struct pfcp_dev *pfcp)
+{
+	struct udp_tunnel_sock_cfg tuncfg = {};
+	struct udp_port_cfg udp_conf = {
+		.local_ip.s_addr	= htonl(INADDR_ANY),
+		.family			= AF_INET,
+	};
+	struct net *net = pfcp->net;
+	struct socket *sock;
+	int err;
+
+	udp_conf.local_udp_port = htons(PFCP_PORT);
+
+	err = udp_sock_create(net, &udp_conf, &sock);
+	if (err)
+		return ERR_PTR(err);
+
+	setup_udp_tunnel_sock(net, sock, &tuncfg);
+
+	return sock;
+}
+
+static int pfcp_add_sock(struct pfcp_dev *pfcp)
+{
+	pfcp->sock = pfcp_create_sock(pfcp);
+
+	return PTR_ERR_OR_ZERO(pfcp->sock);
+}
+
+static int pfcp_newlink(struct net *net, struct net_device *dev,
+			struct nlattr *tb[], struct nlattr *data[],
+			struct netlink_ext_ack *extack)
+{
+	struct pfcp_dev *pfcp = netdev_priv(dev);
+	struct pfcp_net *pn;
+	int err;
+
+	pfcp->net = net;
+
+	err = pfcp_add_sock(pfcp);
+	if (err) {
+		netdev_dbg(dev, "failed to add pfcp socket %d\n", err);
+		goto exit_err;
+	}
+
+	err = register_netdevice(dev);
+	if (err) {
+		netdev_dbg(dev, "failed to register pfcp netdev %d\n", err);
+		goto exit_del_pfcp_sock;
+	}
+
+	pn = net_generic(dev_net(dev), pfcp_net_id);
+	list_add_rcu(&pfcp->list, &pn->pfcp_dev_list);
+
+	netdev_dbg(dev, "registered new PFCP interface\n");
+
+	return 0;
+
+exit_del_pfcp_sock:
+	pfcp_del_sock(pfcp);
+exit_err:
+	pfcp->net = NULL;
+	return err;
+}
+
+static void pfcp_dellink(struct net_device *dev, struct list_head *head)
+{
+	struct pfcp_dev *pfcp = netdev_priv(dev);
+
+	list_del_rcu(&pfcp->list);
+	unregister_netdevice_queue(dev, head);
+}
+
+static struct rtnl_link_ops pfcp_link_ops __read_mostly = {
+	.kind		= "pfcp",
+	.priv_size	= sizeof(struct pfcp_dev),
+	.setup		= pfcp_link_setup,
+	.newlink	= pfcp_newlink,
+	.dellink	= pfcp_dellink,
+};
+
+static int __net_init pfcp_net_init(struct net *net)
+{
+	struct pfcp_net *pn = net_generic(net, pfcp_net_id);
+
+	INIT_LIST_HEAD(&pn->pfcp_dev_list);
+	return 0;
+}
+
+static void __net_exit pfcp_net_exit(struct net *net)
+{
+	struct pfcp_net *pn = net_generic(net, pfcp_net_id);
+	struct pfcp_dev *pfcp;
+	LIST_HEAD(list);
+
+	rtnl_lock();
+	list_for_each_entry(pfcp, &pn->pfcp_dev_list, list)
+		pfcp_dellink(pfcp->dev, &list);
+
+	unregister_netdevice_many(&list);
+	rtnl_unlock();
+}
+
+static struct pernet_operations pfcp_net_ops = {
+	.init	= pfcp_net_init,
+	.exit	= pfcp_net_exit,
+	.id	= &pfcp_net_id,
+	.size	= sizeof(struct pfcp_net),
+};
+
+static int __init pfcp_init(void)
+{
+	int err;
+
+	err = register_pernet_subsys(&pfcp_net_ops);
+	if (err)
+		goto exit_err;
+
+	err = rtnl_link_register(&pfcp_link_ops);
+	if (err)
+		goto exit_unregister_subsys;
+	return 0;
+
+exit_unregister_subsys:
+	unregister_pernet_subsys(&pfcp_net_ops);
+exit_err:
+	pr_err("loading PFCP module failed: err %d\n", err);
+	return err;
+}
+late_initcall(pfcp_init);
+
+static void __exit pfcp_exit(void)
+{
+	rtnl_link_unregister(&pfcp_link_ops);
+	unregister_pernet_subsys(&pfcp_net_ops);
+
+	pr_info("PFCP module unloaded\n");
+}
+module_exit(pfcp_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Wojciech Drewek <wojciech.drewek@intel.com>");
+MODULE_DESCRIPTION("Interface driver for PFCP encapsulated traffic");
+MODULE_ALIAS_RTNL_LINK("pfcp");
diff --git a/include/net/pfcp.h b/include/net/pfcp.h
new file mode 100644
index 000000000000..3f9ebf27a8ff
--- /dev/null
+++ b/include/net/pfcp.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _PFCP_H_
+#define _PFCP_H_
+
+#include <linux/netdevice.h>
+#include <linux/string.h>
+#include <linux/types.h>
+
+#define PFCP_PORT 8805
+
+static inline bool netif_is_pfcp(const struct net_device *dev)
+{
+	return dev->rtnl_link_ops &&
+	       !strcmp(dev->rtnl_link_ops->kind, "pfcp");
+}
+
+#endif
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
