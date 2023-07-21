Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35E575C9B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 16:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 165B64179B;
	Fri, 21 Jul 2023 14:22:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 165B64179B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689949334;
	bh=mKxcX9bQSDigXZ52uK3JPm9WhAjo9SLdwc+89p4BeU4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nixwinh57+zTKCP/ELC8RG21uW/oJLyTQj1ozx214QAz6x6pCnXY4Lqtg4297//76
	 lb7yjfUFLPR0afjlmHeqVsEEedjOz14TR4WpPZPLwrUfu9iBKA0C8ZPC8+imYiGP4H
	 UnYB0fyzn9KY8Tg+PTp54wy4aKoK1/pLUZcvYWCjqi7O08tzcTudjNlkGrh8neg1iX
	 SYN+1asPEMtY56ZdZ3bHNXLVKUvMqP2bPmv171VxDf7Jh/CM//IBXMZT9HzKbJmCZk
	 E0MycowWhT/tpF9mnNS+1twSHVQbC8jGO6+52n88dxoSrIbV2qWBej3/AwRoIaQ5EC
	 +BE0j68xV19Ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVrynvOJrJIt; Fri, 21 Jul 2023 14:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94C0C40135;
	Fri, 21 Jul 2023 14:22:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94C0C40135
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07FE11BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F3BE4179B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F3BE4179B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwvOAnI5rm9P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 14:21:57 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F93C41799
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F93C41799
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="433263398"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="433263398"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 07:14:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868256464"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2023 07:14:48 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F208535448;
 Fri, 21 Jul 2023 15:14:45 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jul 2023 09:15:29 +0200
Message-ID: <20230721071532.613888-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689949317; x=1721485317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yi54X10/YqTNo8M3U94YO+YRyuOw9dwTb+uRbi50Hcc=;
 b=RQDBSlgEOLsBlVQBMKAgDS2AetsUeva4liHa1wktP+/lnErtVUwbb0CL
 +4wOqHbohEXQ43B6nE9pbdDovtZEZjySP8kitVcupdUsaBitmZQuOVTvL
 w4jRTEKyp4PQMz7DCjzKvzEafXkWrSlVYChjMDkbj1/WdKInUXZfz9pYx
 46IKqBTCKGeney+3bFK0DIWvnWm1aDCXU4XT/hLgrrIzNEr69fhtD8GXO
 wK1ZEHZW/yAyG6h3peSbpJCWrY35jqOE46DWoph/LLIv/nkuRXDqYT49w
 2lhoTC0pdu8t+KCwfx9VTx2bmU/On9LYXFX33kRc+YuZ9SRY20TB4LC8O
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RQDBSlgE
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/6] pfcp: add PFCP module
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
Cc: jiri@resnulli.us, andy@kernel.org, netdev@vger.kernel.org,
 idosch@nvidia.com, jesse.brandeburg@intel.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
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
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
---
v2: Fixed typos
---
 drivers/net/Kconfig  |  13 +++
 drivers/net/Makefile |   1 +
 drivers/net/pfcp.c   | 223 +++++++++++++++++++++++++++++++++++++++++++
 include/net/pfcp.h   |  13 +++
 4 files changed, 250 insertions(+)
 create mode 100644 drivers/net/pfcp.c
 create mode 100644 include/net/pfcp.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 368c6f5b327e..8f94b8b2b2e4 100644
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
index e26f98f897c5..2cded0a3ed4b 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -37,6 +37,7 @@ obj-$(CONFIG_GENEVE) += geneve.o
 obj-$(CONFIG_BAREUDP) += bareudp.o
 obj-$(CONFIG_GTP) += gtp.o
 obj-$(CONFIG_NLMON) += nlmon.o
+obj-$(CONFIG_PFCP) += pfcp.o
 obj-$(CONFIG_NET_VRF) += vrf.o
 obj-$(CONFIG_VSOCKMON) += vsockmon.o
 obj-$(CONFIG_MHI_NET) += mhi_net.o
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
new file mode 100644
index 000000000000..3ab2e93e0b45
--- /dev/null
+++ b/drivers/net/pfcp.c
@@ -0,0 +1,223 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* PFCP according to 3GPP TS 29.244
+ *
+ * Copyright (C) 2022, Intel Corporation.
+ * (C) 2022 by Wojciech Drewek <wojciech.drewek@intel.com>
+ *
+ * Author: Wojciech Drewek <wojciech.drewek@intel.com>
+ */
+
+#include <linux/module.h>
+#include <linux/netdevice.h>
+#include <linux/rculist.h>
+#include <linux/skbuff.h>
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
+	dev->netdev_ops	= &pfcp_netdev_ops;
+	dev->needs_free_netdev	= true;
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
+		goto exit;
+	}
+
+	err = register_netdevice(dev);
+	if (err) {
+		netdev_dbg(dev, "failed to register pfcp netdev %d\n", err);
+		goto exit_reg_netdev;
+	}
+
+	pn = net_generic(dev_net(dev), pfcp_net_id);
+	list_add_rcu(&pfcp->list, &pn->pfcp_dev_list);
+
+	netdev_dbg(dev, "registered new PFCP interface\n");
+
+	return 0;
+
+exit_reg_netdev:
+	pfcp_del_sock(pfcp);
+exit:
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
+		goto exit;
+
+	err = rtnl_link_register(&pfcp_link_ops);
+	if (err)
+		goto exit_subsys;
+	return 0;
+
+exit_subsys:
+	unregister_pernet_subsys(&pfcp_net_ops);
+exit:
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
index 000000000000..88f0815e40d2
--- /dev/null
+++ b/include/net/pfcp.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _PFCP_H_
+#define _PFCP_H_
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
