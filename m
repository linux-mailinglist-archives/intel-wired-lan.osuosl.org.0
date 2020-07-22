Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E28E8228D8D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jul 2020 03:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86A1688329;
	Wed, 22 Jul 2020 01:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62r+llmAYzab; Wed, 22 Jul 2020 01:27:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 842DE87FEB;
	Wed, 22 Jul 2020 01:27:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 619711BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5BEA987FED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jp1gzKQUU8OB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jul 2020 01:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 547AF87F46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:25 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD434207BB;
 Wed, 22 Jul 2020 01:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595381245;
 bh=zRkwhRvpdNq120/ZiGCcOBfhVXCbkyEhFLdko4G28eA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C8goXtA86Dk6C5hAGUc2/DA/hD94VehqNv1Z8V0FJ/61/Ff38gkDg1yuLSoQHtmi7
 qn8Yn+86Cd9VeN9te1h2StyrkTRSqRbVOiz0b2PEMA0gd8KlxiiKQDnqpdsPOUkWCn
 O68CG56I4FZLm+ME9Yb7x+BCaoukrSGIXfA6OoAQ=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Date: Tue, 21 Jul 2020 18:27:10 -0700
Message-Id: <20200722012716.2814777-2-kuba@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200722012716.2814777-1-kuba@kernel.org>
References: <20200722012716.2814777-1-kuba@kernel.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 1/7] udp_tunnel: add the
 ability to share port tables
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unfortunately recent Intel NIC designs share the UDP port table
across netdevs. So far the UDP tunnel port state was maintained
per netdev, we need to extend that to cater to Intel NICs.

Expect NICs to allocate the info structure dynamically and link
to the state from there. All the shared NICs will record port
offload information in the one instance of the table so we need
to make sure that the use count can accommodate larger numbers.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 include/net/udp_tunnel.h  | 24 ++++++++++
 net/ipv4/udp_tunnel_nic.c | 96 +++++++++++++++++++++++++++++++++++----
 2 files changed, 110 insertions(+), 10 deletions(-)

diff --git a/include/net/udp_tunnel.h b/include/net/udp_tunnel.h
index dd20ce99740c..7615d0d4d071 100644
--- a/include/net/udp_tunnel.h
+++ b/include/net/udp_tunnel.h
@@ -195,11 +195,27 @@ enum udp_tunnel_nic_info_flags {
 	UDP_TUNNEL_NIC_INFO_IPV4_ONLY	= BIT(2),
 };
 
+struct udp_tunnel_nic;
+
+#define UDP_TUNNEL_NIC_MAX_SHARING_DEVICES	(U16_MAX / 2)
+
+struct udp_tunnel_nic_shared {
+	struct udp_tunnel_nic *udp_tunnel_nic_info;
+
+	struct list_head devices;
+};
+
+struct udp_tunnel_nic_shared_node {
+	struct net_device *dev;
+	struct list_head list;
+};
+
 /**
  * struct udp_tunnel_nic_info - driver UDP tunnel offload information
  * @set_port:	callback for adding a new port
  * @unset_port:	callback for removing a port
  * @sync_table:	callback for syncing the entire port table at once
+ * @shared:	reference to device global state (optional)
  * @flags:	device flags from enum udp_tunnel_nic_info_flags
  * @tables:	UDP port tables this device has
  * @tables.n_entries:		number of entries in this table
@@ -208,6 +224,12 @@ enum udp_tunnel_nic_info_flags {
  * Drivers are expected to provide either @set_port and @unset_port callbacks
  * or the @sync_table callback. Callbacks are invoked with rtnl lock held.
  *
+ * Devices which (misguidedly) share the UDP tunnel port table across multiple
+ * netdevs should allocate an instance of struct udp_tunnel_nic_shared and
+ * point @shared at it.
+ * There must never be more than %UDP_TUNNEL_NIC_MAX_SHARING_DEVICES devices
+ * sharing a table.
+ *
  * Known limitations:
  *  - UDP tunnel port notifications are fundamentally best-effort -
  *    it is likely the driver will both see skbs which use a UDP tunnel port,
@@ -229,6 +251,8 @@ struct udp_tunnel_nic_info {
 	/* all at once */
 	int (*sync_table)(struct net_device *dev, unsigned int table);
 
+	struct udp_tunnel_nic_shared *shared;
+
 	unsigned int flags;
 
 	struct udp_tunnel_nic_table_info {
diff --git a/net/ipv4/udp_tunnel_nic.c b/net/ipv4/udp_tunnel_nic.c
index f0dbd9905a53..f15e247e9ef0 100644
--- a/net/ipv4/udp_tunnel_nic.c
+++ b/net/ipv4/udp_tunnel_nic.c
@@ -18,8 +18,9 @@ enum udp_tunnel_nic_table_entry_flags {
 struct udp_tunnel_nic_table_entry {
 	__be16 port;
 	u8 type;
-	u8 use_cnt;
 	u8 flags;
+	u16 use_cnt;
+#define UDP_TUNNEL_NIC_USE_CNT_MAX	U16_MAX
 	u8 hw_priv;
 };
 
@@ -369,6 +370,8 @@ udp_tunnel_nic_entry_adj(struct udp_tunnel_nic *utn,
 	bool dodgy = entry->flags & UDP_TUNNEL_NIC_ENTRY_OP_FAIL;
 	unsigned int from, to;
 
+	WARN_ON(entry->use_cnt + (u32)use_cnt_adj > U16_MAX);
+
 	/* If not going from used to unused or vice versa - all done.
 	 * For dodgy entries make sure we try to sync again (queue the entry).
 	 */
@@ -668,6 +671,7 @@ static void
 udp_tunnel_nic_replay(struct net_device *dev, struct udp_tunnel_nic *utn)
 {
 	const struct udp_tunnel_nic_info *info = dev->udp_tunnel_nic_info;
+	struct udp_tunnel_nic_shared_node *node;
 	unsigned int i, j;
 
 	/* Freeze all the ports we are already tracking so that the replay
@@ -679,7 +683,12 @@ udp_tunnel_nic_replay(struct net_device *dev, struct udp_tunnel_nic *utn)
 	utn->missed = 0;
 	utn->need_replay = 0;
 
-	udp_tunnel_get_rx_info(dev);
+	if (!info->shared) {
+		udp_tunnel_get_rx_info(dev);
+	} else {
+		list_for_each_entry(node, &info->shared->devices, list)
+			udp_tunnel_get_rx_info(node->dev);
+	}
 
 	for (i = 0; i < utn->n_tables; i++)
 		for (j = 0; j < info->tables[i].n_entries; j++)
@@ -735,20 +744,39 @@ udp_tunnel_nic_alloc(const struct udp_tunnel_nic_info *info,
 	return NULL;
 }
 
+static void udp_tunnel_nic_free(struct udp_tunnel_nic *utn)
+{
+	unsigned int i;
+
+	for (i = 0; i < utn->n_tables; i++)
+		kfree(utn->entries[i]);
+	kfree(utn->entries);
+	kfree(utn);
+}
+
 static int udp_tunnel_nic_register(struct net_device *dev)
 {
 	const struct udp_tunnel_nic_info *info = dev->udp_tunnel_nic_info;
+	struct udp_tunnel_nic_shared_node *node = NULL;
 	struct udp_tunnel_nic *utn;
 	unsigned int n_tables, i;
 
 	BUILD_BUG_ON(sizeof(utn->missed) * BITS_PER_BYTE <
 		     UDP_TUNNEL_NIC_MAX_TABLES);
+	/* Expect use count of at most 2 (IPv4, IPv6) per device */
+	BUILD_BUG_ON(UDP_TUNNEL_NIC_USE_CNT_MAX <
+		     UDP_TUNNEL_NIC_MAX_SHARING_DEVICES * 2);
 
+	/* Check that the driver info is sane */
 	if (WARN_ON(!info->set_port != !info->unset_port) ||
 	    WARN_ON(!info->set_port == !info->sync_table) ||
 	    WARN_ON(!info->tables[0].n_entries))
 		return -EINVAL;
 
+	if (WARN_ON(info->shared &&
+		    info->flags & UDP_TUNNEL_NIC_INFO_OPEN_ONLY))
+		return -EINVAL;
+
 	n_tables = 1;
 	for (i = 1; i < UDP_TUNNEL_NIC_MAX_TABLES; i++) {
 		if (!info->tables[i].n_entries)
@@ -759,9 +787,33 @@ static int udp_tunnel_nic_register(struct net_device *dev)
 			return -EINVAL;
 	}
 
-	utn = udp_tunnel_nic_alloc(info, n_tables);
-	if (!utn)
-		return -ENOMEM;
+	/* Create UDP tunnel state structures */
+	if (info->shared) {
+		node = kzalloc(sizeof(*node), GFP_KERNEL);
+		if (!node)
+			return -ENOMEM;
+
+		node->dev = dev;
+	}
+
+	if (info->shared && info->shared->udp_tunnel_nic_info) {
+		utn = info->shared->udp_tunnel_nic_info;
+	} else {
+		utn = udp_tunnel_nic_alloc(info, n_tables);
+		if (!utn) {
+			kfree(node);
+			return -ENOMEM;
+		}
+	}
+
+	if (info->shared) {
+		if (!info->shared->udp_tunnel_nic_info) {
+			INIT_LIST_HEAD(&info->shared->devices);
+			info->shared->udp_tunnel_nic_info = utn;
+		}
+
+		list_add_tail(&node->list, &info->shared->devices);
+	}
 
 	utn->dev = dev;
 	dev_hold(dev);
@@ -776,7 +828,33 @@ static int udp_tunnel_nic_register(struct net_device *dev)
 static void
 udp_tunnel_nic_unregister(struct net_device *dev, struct udp_tunnel_nic *utn)
 {
-	unsigned int i;
+	const struct udp_tunnel_nic_info *info = dev->udp_tunnel_nic_info;
+
+	/* For a shared table remove this dev from the list of sharing devices
+	 * and if there are other devices just detach.
+	 */
+	if (info->shared) {
+		struct udp_tunnel_nic_shared_node *node, *first;
+
+		list_for_each_entry(node, &info->shared->devices, list)
+			if (node->dev == dev)
+				break;
+		if (node->dev != dev)
+			return;
+
+		list_del(&node->list);
+		kfree(node);
+
+		first = list_first_entry_or_null(&info->shared->devices,
+						 typeof(*first), list);
+		if (first) {
+			udp_tunnel_drop_rx_info(dev);
+			utn->dev = first->dev;
+			goto release_dev;
+		}
+
+		info->shared->udp_tunnel_nic_info = NULL;
+	}
 
 	/* Flush before we check work, so we don't waste time adding entries
 	 * from the work which we will boot immediately.
@@ -789,10 +867,8 @@ udp_tunnel_nic_unregister(struct net_device *dev, struct udp_tunnel_nic *utn)
 	if (utn->work_pending)
 		return;
 
-	for (i = 0; i < utn->n_tables; i++)
-		kfree(utn->entries[i]);
-	kfree(utn->entries);
-	kfree(utn);
+	udp_tunnel_nic_free(utn);
+release_dev:
 	dev->udp_tunnel_nic = NULL;
 	dev_put(dev);
 }
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
