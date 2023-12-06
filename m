Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BE9807C63
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 00:37:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE37C403A4;
	Wed,  6 Dec 2023 23:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE37C403A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701905853;
	bh=3Em8/kWbzIQczkqQ1nRJjtGV+bB4efA5bIDMP4BBc00=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jXNrcTTQq5zG+fqwUvZzHZoPaiMF4hGVa/BFPY4GECLQLITkWNSve3mgy1qQWpc8g
	 2Sa2QXpk+/pDK+YlvH/pNzaLFgh/f4ohGCeW512YfRb8abixtSEG1Fdo8dqsm6rBAD
	 o8OOJaTTMepsr82vXQWgef32XHuFJ0/Sp/CVPMtoN06YR000/qUOMmw1dW1PaVHu4N
	 TebNh/27jCRZYOHrXuKQILecstWacWFDJvgK9gGL3PcNhblkDANqtjYuZzJmlY7XCr
	 w7xGjBk+jfm8128VD3wub6xDI7Dxz1Uvf53nJDaMMKaCuFGqa2gIsSn/lyEI87lAYB
	 vwbPcTGYTE8zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FM7QThlgMfhj; Wed,  6 Dec 2023 23:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42AEB404D8;
	Wed,  6 Dec 2023 23:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42AEB404D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B93251BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90BB041E66
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90BB041E66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zJkqa2I9Qlz9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 23:37:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A86141E61
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:37:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A86141E61
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="379163854"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="379163854"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:37:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="771486506"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="771486506"
Received: from traguzov-mobl4.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.62.75])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:37:09 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Dec 2023 16:36:36 -0700
Message-Id: <20231206233642.447794-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231206233642.447794-1-ahmed.zaki@intel.com>
References: <20231206233642.447794-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701905841; x=1733441841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kldcx5aW5GPpTf6kT8Lh9jjEJ9jKg6+4iV8NXqP6o7A=;
 b=XqWcBNBa8hIAnMgMrWrT6AFBmNYFexh2TiqGtKhpMd/UPIHuiiWJVwTU
 uhiAVUrO/xrKVEIylWp+D5DA/CgkCCqUxVKKObgqRdWNK0uD1F5M+tkXp
 HesqPA2yWJS3plEZq3Fhp/tBbELE13DlnKUCWT1kjSdHBAPj137ZiEZI5
 BwrFZlH3y/l3FJiD6cTJr3kceCFu6rnViQ44a6DEBQ7xOlAkbtu7iCA/Y
 8KmcnTPzy/Ul+77BBQ18vUnd9DU2iZpf2g8GwcMYeMsfjeztXxlCjLGO/
 qqLmKJ15qVJYJV+UXPW3AdHCIYhUH5CNH4fe2B5O2ISkMpwDG7XmnOCi8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XqWcBNBa
Subject: [Intel-wired-lan] [PATCH net-next v8 2/8] net: ethtool: get rid of
 get/set_rxfh_context functions
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, linux-doc@vger.kernel.org,
 vladimir.oltean@nxp.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 Subbaraya Sundeep <sbhatta@marvell.com>, willemdebruijn.kernel@gmail.com,
 Leon Romanovsky <leon@kernel.org>, corbet@lwn.net, gal@nvidia.com,
 Russell King <linux@armlinux.org.uk>, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Sunil Goutham <sgoutham@marvell.com>,
 Martin Habets <habetsm.xilinx@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 davem@davemloft.net, ecree.xilinx@gmail.com, hariprasad <hkelam@marvell.com>,
 horms@kernel.org, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the RSS context parameters to struct ethtool_rxfh_param and use the
get/set_rxfh to handle the RSS contexts as well.

This is part 2/2 of the fix suggested in [1]:

 - Add a rss_context member to the argument struct and a capability
   like cap_link_lanes_supported to indicate whether driver supports
   rss contexts, then you can remove *et_rxfh_context functions,
   and instead call *et_rxfh() with a non-zero rss_context.

Link: https://lore.kernel.org/netdev/20231121152906.2dd5f487@kernel.org/ [1]
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Marcin Wojtas <mw@semihalf.com>
CC: Russell King <linux@armlinux.org.uk>
CC: Sunil Goutham <sgoutham@marvell.com>
CC: Geetha sowjanya <gakula@marvell.com>
CC: Subbaraya Sundeep <sbhatta@marvell.com>
CC: hariprasad <hkelam@marvell.com>
CC: Saeed Mahameed <saeedm@nvidia.com>
CC: Leon Romanovsky <leon@kernel.org>
CC: Edward Cree <ecree.xilinx@gmail.com>
CC: Martin Habets <habetsm.xilinx@gmail.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  29 ++---
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  63 +++-------
 .../marvell/octeontx2/nic/otx2_ethtool.c      |  63 ++++------
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  37 ++----
 drivers/net/ethernet/sfc/ef100_ethtool.c      |   3 +-
 drivers/net/ethernet/sfc/ethtool.c            |   3 +-
 drivers/net/ethernet/sfc/ethtool_common.c     | 115 +++++++++---------
 drivers/net/ethernet/sfc/ethtool_common.h     |   6 -
 drivers/net/ethernet/sfc/siena/ethtool.c      |   3 +-
 .../net/ethernet/sfc/siena/ethtool_common.c   | 115 +++++++++---------
 .../net/ethernet/sfc/siena/ethtool_common.h   |   6 -
 include/linux/ethtool.h                       |  26 ++--
 net/ethtool/ioctl.c                           |  27 ++--
 net/ethtool/rss.c                             |   9 +-
 14 files changed, 205 insertions(+), 300 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7f991715a026..2a23f13ea9ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3198,11 +3198,18 @@ static u32 ice_get_rxfh_indir_size(struct net_device *netdev)
 	return np->vsi->rss_table_size;
 }
 
+/**
+ * ice_get_rxfh - get the Rx flow hash indirection table
+ * @netdev: network interface device structure
+ * @rxfh: pointer to param struct (indir, key, hfunc)
+ *
+ * Reads the indirection table directly from the hardware.
+ */
 static int
-ice_get_rxfh_context(struct net_device *netdev,
-		     struct ethtool_rxfh_param *rxfh, u32 rss_context)
+ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	u32 rss_context = rxfh->rss_context;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	u16 qcount, offset;
@@ -3264,19 +3271,6 @@ ice_get_rxfh_context(struct net_device *netdev,
 	return err;
 }
 
-/**
- * ice_get_rxfh - get the Rx flow hash indirection table
- * @netdev: network interface device structure
- * @rxfh: pointer to param struct (indir, key, hfunc)
- *
- * Reads the indirection table directly from the hardware.
- */
-static int
-ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
-{
-	return ice_get_rxfh_context(netdev, rxfh, 0);
-}
-
 /**
  * ice_set_rxfh - set the Rx flow hash indirection table
  * @netdev: network interface device structure
@@ -3301,6 +3295,9 @@ ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
 	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
+	if (rxfh->rss_context)
+		return -EOPNOTSUPP;
+
 	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
 		/* RSS not supported return error here */
 		netdev_warn(netdev, "RSS is not configured on this VSI!\n");
@@ -4218,6 +4215,7 @@ ice_get_module_eeprom(struct net_device *netdev,
 }
 
 static const struct ethtool_ops ice_ethtool_ops = {
+	.cap_rss_ctx_supported  = true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE |
 				     ETHTOOL_COALESCE_RX_USECS_HIGH,
@@ -4251,7 +4249,6 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_pauseparam		= ice_set_pauseparam,
 	.get_rxfh_key_size	= ice_get_rxfh_key_size,
 	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
-	.get_rxfh_context	= ice_get_rxfh_context,
 	.get_rxfh		= ice_get_rxfh,
 	.set_rxfh		= ice_set_rxfh,
 	.get_channels		= ice_get_channels,
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index ceef48ddd26e..9193cf61de26 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -5638,47 +5638,7 @@ static int mvpp2_ethtool_get_rxfh(struct net_device *dev,
 				  struct ethtool_rxfh_param *rxfh)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
-	int ret = 0;
-
-	if (!mvpp22_rss_is_supported(port))
-		return -EOPNOTSUPP;
-
-	if (rxfh->indir)
-		ret = mvpp22_port_rss_ctx_indir_get(port, 0, rxfh->indir);
-
-	rxfh->hfunc = ETH_RSS_HASH_CRC32;
-
-	return ret;
-}
-
-static int mvpp2_ethtool_set_rxfh(struct net_device *dev,
-				  struct ethtool_rxfh_param *rxfh,
-				  struct netlink_ext_ack *extack)
-{
-	struct mvpp2_port *port = netdev_priv(dev);
-	int ret = 0;
-
-	if (!mvpp22_rss_is_supported(port))
-		return -EOPNOTSUPP;
-
-	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
-	    rxfh->hfunc != ETH_RSS_HASH_CRC32)
-		return -EOPNOTSUPP;
-
-	if (rxfh->key)
-		return -EOPNOTSUPP;
-
-	if (rxfh->indir)
-		ret = mvpp22_port_rss_ctx_indir_set(port, 0, rxfh->indir);
-
-	return ret;
-}
-
-static int mvpp2_ethtool_get_rxfh_context(struct net_device *dev,
-					  struct ethtool_rxfh_param *rxfh,
-					  u32 rss_context)
-{
-	struct mvpp2_port *port = netdev_priv(dev);
+	u32 rss_context = rxfh->rss_context;
 	int ret = 0;
 
 	if (!mvpp22_rss_is_supported(port))
@@ -5695,12 +5655,13 @@ static int mvpp2_ethtool_get_rxfh_context(struct net_device *dev,
 	return ret;
 }
 
-static int mvpp2_ethtool_set_rxfh_context(struct net_device *dev,
-					  struct ethtool_rxfh_param *rxfh,
-					  u32 *rss_context, bool delete)
+static int mvpp2_ethtool_set_rxfh(struct net_device *dev,
+				  struct ethtool_rxfh_param *rxfh,
+				  struct netlink_ext_ack *extack)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
-	int ret;
+	u32 *rss_context = &rxfh->rss_context;
+	int ret = 0;
 
 	if (!mvpp22_rss_is_supported(port))
 		return -EOPNOTSUPP;
@@ -5712,7 +5673,7 @@ static int mvpp2_ethtool_set_rxfh_context(struct net_device *dev,
 	if (rxfh->key)
 		return -EOPNOTSUPP;
 
-	if (delete)
+	if (*rss_context && rxfh->rss_delete)
 		return mvpp22_port_rss_ctx_delete(port, *rss_context);
 
 	if (*rss_context == ETH_RXFH_CONTEXT_ALLOC) {
@@ -5721,8 +5682,13 @@ static int mvpp2_ethtool_set_rxfh_context(struct net_device *dev,
 			return ret;
 	}
 
-	return mvpp22_port_rss_ctx_indir_set(port, *rss_context, rxfh->indir);
+	if (rxfh->indir)
+		ret = mvpp22_port_rss_ctx_indir_set(port, *rss_context,
+						    rxfh->indir);
+
+	return ret;
 }
+
 /* Device ops */
 
 static const struct net_device_ops mvpp2_netdev_ops = {
@@ -5742,6 +5708,7 @@ static const struct net_device_ops mvpp2_netdev_ops = {
 };
 
 static const struct ethtool_ops mvpp2_eth_tool_ops = {
+	.cap_rss_ctx_supported	= true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_MAX_FRAMES,
 	.nway_reset		= mvpp2_ethtool_nway_reset,
@@ -5764,8 +5731,6 @@ static const struct ethtool_ops mvpp2_eth_tool_ops = {
 	.get_rxfh_indir_size	= mvpp2_ethtool_get_rxfh_indir_size,
 	.get_rxfh		= mvpp2_ethtool_get_rxfh,
 	.set_rxfh		= mvpp2_ethtool_set_rxfh,
-	.get_rxfh_context	= mvpp2_ethtool_get_rxfh_context,
-	.set_rxfh_context	= mvpp2_ethtool_set_rxfh_context,
 };
 
 /* Used for PPv2.1, or PPv2.2 with the old Device Tree binding that
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
index 16d4d5f858e2..2f02c642b891 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
@@ -831,11 +831,12 @@ static int otx2_rss_ctx_create(struct otx2_nic *pfvf,
 	return 0;
 }
 
-/* RSS context configuration */
-static int otx2_set_rxfh_context(struct net_device *dev,
-				 struct ethtool_rxfh_param *rxfh,
-				 u32 *rss_context, bool delete)
+/* Configure RSS table and hash key */
+static int otx2_set_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
+	u32 rss_context = DEFAULT_RSS_CONTEXT_GROUP;
 	struct otx2_nic *pfvf = netdev_priv(dev);
 	struct otx2_rss_ctx *rss_ctx;
 	struct otx2_rss_info *rss;
@@ -845,8 +846,11 @@ static int otx2_set_rxfh_context(struct net_device *dev,
 	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (*rss_context != ETH_RXFH_CONTEXT_ALLOC &&
-	    *rss_context >= MAX_RSS_GROUPS)
+	if (rxfh->rss_context)
+		rss_context = rxfh->rss_context;
+
+	if (rss_context != ETH_RXFH_CONTEXT_ALLOC &&
+	    rss_context >= MAX_RSS_GROUPS)
 		return -EINVAL;
 
 	rss = &pfvf->hw.rss_info;
@@ -860,28 +864,30 @@ static int otx2_set_rxfh_context(struct net_device *dev,
 		memcpy(rss->key, rxfh->key, sizeof(rss->key));
 		otx2_set_rss_key(pfvf);
 	}
-	if (delete)
-		return otx2_rss_ctx_delete(pfvf, *rss_context);
+	if (rxfh->rss_delete)
+		return otx2_rss_ctx_delete(pfvf, rss_context);
 
-	if (*rss_context == ETH_RXFH_CONTEXT_ALLOC) {
-		ret = otx2_rss_ctx_create(pfvf, rss_context);
+	if (rss_context == ETH_RXFH_CONTEXT_ALLOC) {
+		ret = otx2_rss_ctx_create(pfvf, &rss_context);
+		rxfh->rss_context = rss_context;
 		if (ret)
 			return ret;
 	}
 	if (rxfh->indir) {
-		rss_ctx = rss->rss_ctx[*rss_context];
+		rss_ctx = rss->rss_ctx[rss_context];
 		for (idx = 0; idx < rss->rss_size; idx++)
 			rss_ctx->ind_tbl[idx] = rxfh->indir[idx];
 	}
-	otx2_set_rss_table(pfvf, *rss_context);
+	otx2_set_rss_table(pfvf, rss_context);
 
 	return 0;
 }
 
-static int otx2_get_rxfh_context(struct net_device *dev,
-				 struct ethtool_rxfh_param *rxfh,
-				 u32 rss_context)
+/* Get RSS configuration */
+static int otx2_get_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh)
 {
+	u32 rss_context = DEFAULT_RSS_CONTEXT_GROUP;
 	struct otx2_nic *pfvf = netdev_priv(dev);
 	struct otx2_rss_ctx *rss_ctx;
 	struct otx2_rss_info *rss;
@@ -891,6 +897,8 @@ static int otx2_get_rxfh_context(struct net_device *dev,
 	rss = &pfvf->hw.rss_info;
 
 	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->rss_context)
+		rss_context = rxfh->rss_context;
 
 	if (!indir)
 		return 0;
@@ -918,25 +926,6 @@ static int otx2_get_rxfh_context(struct net_device *dev,
 	return 0;
 }
 
-/* Get RSS configuration */
-static int otx2_get_rxfh(struct net_device *dev,
-			 struct ethtool_rxfh_param *rxfh)
-{
-	return otx2_get_rxfh_context(dev, rxfh,
-				     DEFAULT_RSS_CONTEXT_GROUP);
-}
-
-/* Configure RSS table and hash key */
-static int otx2_set_rxfh(struct net_device *dev,
-			 struct ethtool_rxfh_param *rxfh,
-			 struct netlink_ext_ack *extack)
-{
-
-	u32 rss_context = DEFAULT_RSS_CONTEXT_GROUP;
-
-	return otx2_set_rxfh_context(dev, rxfh, &rss_context, 0);
-}
-
 static u32 otx2_get_msglevel(struct net_device *netdev)
 {
 	struct otx2_nic *pfvf = netdev_priv(netdev);
@@ -1317,6 +1306,7 @@ static void otx2_get_fec_stats(struct net_device *netdev,
 }
 
 static const struct ethtool_ops otx2_ethtool_ops = {
+	.cap_rss_ctx_supported	= true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_MAX_FRAMES |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE,
@@ -1339,8 +1329,6 @@ static const struct ethtool_ops otx2_ethtool_ops = {
 	.get_rxfh_indir_size	= otx2_get_rxfh_indir_size,
 	.get_rxfh		= otx2_get_rxfh,
 	.set_rxfh		= otx2_set_rxfh,
-	.get_rxfh_context	= otx2_get_rxfh_context,
-	.set_rxfh_context	= otx2_set_rxfh_context,
 	.get_msglevel		= otx2_get_msglevel,
 	.set_msglevel		= otx2_set_msglevel,
 	.get_pauseparam		= otx2_get_pauseparam,
@@ -1440,6 +1428,7 @@ static int otx2vf_get_link_ksettings(struct net_device *netdev,
 }
 
 static const struct ethtool_ops otx2vf_ethtool_ops = {
+	.cap_rss_ctx_supported	= true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_MAX_FRAMES |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE,
@@ -1458,8 +1447,6 @@ static const struct ethtool_ops otx2vf_ethtool_ops = {
 	.get_rxfh_indir_size	= otx2_get_rxfh_indir_size,
 	.get_rxfh		= otx2_get_rxfh,
 	.set_rxfh		= otx2_set_rxfh,
-	.get_rxfh_context	= otx2_get_rxfh_context,
-	.set_rxfh_context	= otx2_set_rxfh_context,
 	.get_ringparam		= otx2_get_ringparam,
 	.set_ringparam		= otx2_set_ringparam,
 	.get_coalesce		= otx2_get_coalesce,
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
index 110cb7973eae..0fe7ea88d567 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
@@ -1262,11 +1262,10 @@ static u32 mlx5e_get_rxfh_indir_size(struct net_device *netdev)
 	return mlx5e_ethtool_get_rxfh_indir_size(priv);
 }
 
-static int mlx5e_get_rxfh_context(struct net_device *dev,
-				  struct ethtool_rxfh_param *rxfh,
-				  u32 rss_context)
+int mlx5e_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 {
-	struct mlx5e_priv *priv = netdev_priv(dev);
+	struct mlx5e_priv *priv = netdev_priv(netdev);
+	u32 rss_context = rxfh->rss_context;
 	int err;
 
 	mutex_lock(&priv->state_lock);
@@ -1276,16 +1275,16 @@ static int mlx5e_get_rxfh_context(struct net_device *dev,
 	return err;
 }
 
-static int mlx5e_set_rxfh_context(struct net_device *dev,
-				  struct ethtool_rxfh_param *rxfh,
-				  u32 *rss_context, bool delete)
+int mlx5e_set_rxfh(struct net_device *dev, struct ethtool_rxfh_param *rxfh,
+		   struct netlink_ext_ack *extack)
 {
 	struct mlx5e_priv *priv = netdev_priv(dev);
+	u32 *rss_context = &rxfh->rss_context;
 	u8 hfunc = rxfh->hfunc;
 	int err;
 
 	mutex_lock(&priv->state_lock);
-	if (delete) {
+	if (*rss_context && rxfh->rss_delete) {
 		err = mlx5e_rx_res_rss_destroy(priv->rx_res, *rss_context);
 		goto unlock;
 	}
@@ -1307,25 +1306,6 @@ static int mlx5e_set_rxfh_context(struct net_device *dev,
 	return err;
 }
 
-int mlx5e_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
-{
-	return mlx5e_get_rxfh_context(netdev, rxfh, 0);
-}
-
-int mlx5e_set_rxfh(struct net_device *dev, struct ethtool_rxfh_param *rxfh,
-		   struct netlink_ext_ack *extack)
-{
-	struct mlx5e_priv *priv = netdev_priv(dev);
-	u8 hfunc = rxfh->hfunc;
-	int err;
-
-	mutex_lock(&priv->state_lock);
-	err = mlx5e_rx_res_rss_set_rxfh(priv->rx_res, 0, rxfh->indir, rxfh->key,
-					hfunc == ETH_RSS_HASH_NO_CHANGE ? NULL : &hfunc);
-	mutex_unlock(&priv->state_lock);
-	return err;
-}
-
 #define MLX5E_PFC_PREVEN_AUTO_TOUT_MSEC		100
 #define MLX5E_PFC_PREVEN_TOUT_MAX_MSEC		8000
 #define MLX5E_PFC_PREVEN_MINOR_PRECENT		85
@@ -2402,6 +2382,7 @@ static void mlx5e_get_rmon_stats(struct net_device *netdev,
 }
 
 const struct ethtool_ops mlx5e_ethtool_ops = {
+	.cap_rss_ctx_supported	= true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_MAX_FRAMES |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE |
@@ -2424,8 +2405,6 @@ const struct ethtool_ops mlx5e_ethtool_ops = {
 	.get_rxfh_indir_size = mlx5e_get_rxfh_indir_size,
 	.get_rxfh          = mlx5e_get_rxfh,
 	.set_rxfh          = mlx5e_set_rxfh,
-	.get_rxfh_context  = mlx5e_get_rxfh_context,
-	.set_rxfh_context  = mlx5e_set_rxfh_context,
 	.get_rxnfc         = mlx5e_get_rxnfc,
 	.set_rxnfc         = mlx5e_set_rxnfc,
 	.get_tunable       = mlx5e_get_tunable,
diff --git a/drivers/net/ethernet/sfc/ef100_ethtool.c b/drivers/net/ethernet/sfc/ef100_ethtool.c
index 702abbe59b76..cf55202b3a7b 100644
--- a/drivers/net/ethernet/sfc/ef100_ethtool.c
+++ b/drivers/net/ethernet/sfc/ef100_ethtool.c
@@ -37,6 +37,7 @@ ef100_ethtool_get_ringparam(struct net_device *net_dev,
 /*	Ethtool options available
  */
 const struct ethtool_ops ef100_ethtool_ops = {
+	.cap_rss_ctx_supported	= true,
 	.get_drvinfo		= efx_ethtool_get_drvinfo,
 	.get_msglevel		= efx_ethtool_get_msglevel,
 	.set_msglevel		= efx_ethtool_set_msglevel,
@@ -60,8 +61,6 @@ const struct ethtool_ops ef100_ethtool_ops = {
 	.get_rxfh_key_size	= efx_ethtool_get_rxfh_key_size,
 	.get_rxfh		= efx_ethtool_get_rxfh,
 	.set_rxfh		= efx_ethtool_set_rxfh,
-	.get_rxfh_context	= efx_ethtool_get_rxfh_context,
-	.set_rxfh_context	= efx_ethtool_set_rxfh_context,
 
 	.get_module_info	= efx_ethtool_get_module_info,
 	.get_module_eeprom	= efx_ethtool_get_module_eeprom,
diff --git a/drivers/net/ethernet/sfc/ethtool.c b/drivers/net/ethernet/sfc/ethtool.c
index 364323599f7b..37c69c8d90b1 100644
--- a/drivers/net/ethernet/sfc/ethtool.c
+++ b/drivers/net/ethernet/sfc/ethtool.c
@@ -240,6 +240,7 @@ static int efx_ethtool_get_ts_info(struct net_device *net_dev,
 }
 
 const struct ethtool_ops efx_ethtool_ops = {
+	.cap_rss_ctx_supported	= true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USECS_IRQ |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE_RX,
@@ -269,8 +270,6 @@ const struct ethtool_ops efx_ethtool_ops = {
 	.get_rxfh_key_size	= efx_ethtool_get_rxfh_key_size,
 	.get_rxfh		= efx_ethtool_get_rxfh,
 	.set_rxfh		= efx_ethtool_set_rxfh,
-	.get_rxfh_context	= efx_ethtool_get_rxfh_context,
-	.set_rxfh_context	= efx_ethtool_set_rxfh_context,
 	.get_ts_info		= efx_ethtool_get_ts_info,
 	.get_module_info	= efx_ethtool_get_module_info,
 	.get_module_eeprom	= efx_ethtool_get_module_eeprom,
diff --git a/drivers/net/ethernet/sfc/ethtool_common.c b/drivers/net/ethernet/sfc/ethtool_common.c
index e32ae9038d9e..7d5e5db4eac5 100644
--- a/drivers/net/ethernet/sfc/ethtool_common.c
+++ b/drivers/net/ethernet/sfc/ethtool_common.c
@@ -1163,52 +1163,8 @@ u32 efx_ethtool_get_rxfh_key_size(struct net_device *net_dev)
 	return efx->type->rx_hash_key_size;
 }
 
-int efx_ethtool_get_rxfh(struct net_device *net_dev,
-			 struct ethtool_rxfh_param *rxfh)
-{
-	struct efx_nic *efx = efx_netdev_priv(net_dev);
-	int rc;
-
-	rc = efx->type->rx_pull_rss_config(efx);
-	if (rc)
-		return rc;
-
-	rxfh->hfunc = ETH_RSS_HASH_TOP;
-	if (rxfh->indir)
-		memcpy(rxfh->indir, efx->rss_context.rx_indir_table,
-		       sizeof(efx->rss_context.rx_indir_table));
-	if (rxfh->key)
-		memcpy(rxfh->key, efx->rss_context.rx_hash_key,
-		       efx->type->rx_hash_key_size);
-	return 0;
-}
-
-int efx_ethtool_set_rxfh(struct net_device *net_dev,
-			 struct ethtool_rxfh_param *rxfh,
-			 struct netlink_ext_ack *extack)
-{
-	struct efx_nic *efx = efx_netdev_priv(net_dev);
-	u32 *indir = rxfh->indir;
-	u8 *key = rxfh->key;
-
-	/* Hash function is Toeplitz, cannot be changed */
-	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
-	    rxfh->hfunc != ETH_RSS_HASH_TOP)
-		return -EOPNOTSUPP;
-	if (!indir && !key)
-		return 0;
-
-	if (!key)
-		key = efx->rss_context.rx_hash_key;
-	if (!indir)
-		indir = efx->rss_context.rx_indir_table;
-
-	return efx->type->rx_push_rss_config(efx, true, indir, key);
-}
-
-int efx_ethtool_get_rxfh_context(struct net_device *net_dev,
-				 struct ethtool_rxfh_param *rxfh,
-				 u32 rss_context)
+static int efx_ethtool_get_rxfh_context(struct net_device *net_dev,
+					struct ethtool_rxfh_param *rxfh)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 	struct efx_rss_context *ctx;
@@ -1218,7 +1174,7 @@ int efx_ethtool_get_rxfh_context(struct net_device *net_dev,
 		return -EOPNOTSUPP;
 
 	mutex_lock(&efx->rss_lock);
-	ctx = efx_find_rss_context_entry(efx, rss_context);
+	ctx = efx_find_rss_context_entry(efx, rxfh->rss_context);
 	if (!ctx) {
 		rc = -ENOENT;
 		goto out_unlock;
@@ -1239,11 +1195,35 @@ int efx_ethtool_get_rxfh_context(struct net_device *net_dev,
 	return rc;
 }
 
-int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
-				 struct ethtool_rxfh_param *rxfh,
-				 u32 *rss_context, bool delete)
+int efx_ethtool_get_rxfh(struct net_device *net_dev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
+	int rc;
+
+	if (rxfh->rss_context)
+		return efx_ethtool_get_rxfh_context(net_dev, rxfh);
+
+	rc = efx->type->rx_pull_rss_config(efx);
+	if (rc)
+		return rc;
+
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->indir)
+		memcpy(rxfh->indir, efx->rss_context.rx_indir_table,
+		       sizeof(efx->rss_context.rx_indir_table));
+	if (rxfh->key)
+		memcpy(rxfh->key, efx->rss_context.rx_hash_key,
+		       efx->type->rx_hash_key_size);
+	return 0;
+}
+
+static int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
+					struct ethtool_rxfh_param *rxfh,
+					struct netlink_ext_ack *extack)
+{
+	struct efx_nic *efx = efx_netdev_priv(net_dev);
+	u32 *rss_context = &rxfh->rss_context;
 	struct efx_rss_context *ctx;
 	u32 *indir = rxfh->indir;
 	bool allocated = false;
@@ -1252,15 +1232,11 @@ int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
 
 	if (!efx->type->rx_push_rss_context_config)
 		return -EOPNOTSUPP;
-	/* Hash function is Toeplitz, cannot be changed */
-	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
-	    rxfh->hfunc != ETH_RSS_HASH_TOP)
-		return -EOPNOTSUPP;
 
 	mutex_lock(&efx->rss_lock);
 
 	if (*rss_context == ETH_RXFH_CONTEXT_ALLOC) {
-		if (delete) {
+		if (rxfh->rss_delete) {
 			/* alloc + delete == Nothing to do */
 			rc = -EINVAL;
 			goto out_unlock;
@@ -1283,7 +1259,7 @@ int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
 		}
 	}
 
-	if (delete) {
+	if (rxfh->rss_delete) {
 		/* delete this context */
 		rc = efx->type->rx_push_rss_context_config(efx, ctx, NULL, NULL);
 		if (!rc)
@@ -1306,6 +1282,33 @@ int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
 	return rc;
 }
 
+int efx_ethtool_set_rxfh(struct net_device *net_dev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
+{
+	struct efx_nic *efx = efx_netdev_priv(net_dev);
+	u32 *indir = rxfh->indir;
+	u8 *key = rxfh->key;
+
+	/* Hash function is Toeplitz, cannot be changed */
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
+		return -EOPNOTSUPP;
+
+	if (rxfh->rss_context)
+		return efx_ethtool_set_rxfh_context(net_dev, rxfh, extack);
+
+	if (!indir && !key)
+		return 0;
+
+	if (!key)
+		key = efx->rss_context.rx_hash_key;
+	if (!indir)
+		indir = efx->rss_context.rx_indir_table;
+
+	return efx->type->rx_push_rss_config(efx, true, indir, key);
+}
+
 int efx_ethtool_reset(struct net_device *net_dev, u32 *flags)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
diff --git a/drivers/net/ethernet/sfc/ethtool_common.h b/drivers/net/ethernet/sfc/ethtool_common.h
index 384318ee1127..a680e5980213 100644
--- a/drivers/net/ethernet/sfc/ethtool_common.h
+++ b/drivers/net/ethernet/sfc/ethtool_common.h
@@ -49,12 +49,6 @@ int efx_ethtool_get_rxfh(struct net_device *net_dev,
 int efx_ethtool_set_rxfh(struct net_device *net_dev,
 			 struct ethtool_rxfh_param *rxfh,
 			 struct netlink_ext_ack *extack);
-int efx_ethtool_get_rxfh_context(struct net_device *net_dev,
-				 struct ethtool_rxfh_param *rxfh,
-				 u32 rss_context);
-int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
-				 struct ethtool_rxfh_param *rxfh,
-				 u32 *rss_context, bool delete);
 int efx_ethtool_reset(struct net_device *net_dev, u32 *flags);
 int efx_ethtool_get_module_eeprom(struct net_device *net_dev,
 				  struct ethtool_eeprom *ee,
diff --git a/drivers/net/ethernet/sfc/siena/ethtool.c b/drivers/net/ethernet/sfc/siena/ethtool.c
index e4ec589216c1..14dd3893bdef 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool.c
+++ b/drivers/net/ethernet/sfc/siena/ethtool.c
@@ -240,6 +240,7 @@ static int efx_ethtool_get_ts_info(struct net_device *net_dev,
 }
 
 const struct ethtool_ops efx_siena_ethtool_ops = {
+	.cap_rss_ctx_supported	= true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USECS_IRQ |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE_RX,
@@ -269,8 +270,6 @@ const struct ethtool_ops efx_siena_ethtool_ops = {
 	.get_rxfh_key_size	= efx_siena_ethtool_get_rxfh_key_size,
 	.get_rxfh		= efx_siena_ethtool_get_rxfh,
 	.set_rxfh		= efx_siena_ethtool_set_rxfh,
-	.get_rxfh_context	= efx_siena_ethtool_get_rxfh_context,
-	.set_rxfh_context	= efx_siena_ethtool_set_rxfh_context,
 	.get_ts_info		= efx_ethtool_get_ts_info,
 	.get_module_info	= efx_siena_ethtool_get_module_info,
 	.get_module_eeprom	= efx_siena_ethtool_get_module_eeprom,
diff --git a/drivers/net/ethernet/sfc/siena/ethtool_common.c b/drivers/net/ethernet/sfc/siena/ethtool_common.c
index 20b64e3521cb..5f0a8127e967 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool_common.c
+++ b/drivers/net/ethernet/sfc/siena/ethtool_common.c
@@ -1164,52 +1164,8 @@ u32 efx_siena_ethtool_get_rxfh_key_size(struct net_device *net_dev)
 	return efx->type->rx_hash_key_size;
 }
 
-int efx_siena_ethtool_get_rxfh(struct net_device *net_dev,
-			       struct ethtool_rxfh_param *rxfh)
-{
-	struct efx_nic *efx = netdev_priv(net_dev);
-	int rc;
-
-	rc = efx->type->rx_pull_rss_config(efx);
-	if (rc)
-		return rc;
-
-	rxfh->hfunc = ETH_RSS_HASH_TOP;
-	if (rxfh->indir)
-		memcpy(rxfh->indir, efx->rss_context.rx_indir_table,
-		       sizeof(efx->rss_context.rx_indir_table));
-	if (rxfh->key)
-		memcpy(rxfh->key, efx->rss_context.rx_hash_key,
-		       efx->type->rx_hash_key_size);
-	return 0;
-}
-
-int efx_siena_ethtool_set_rxfh(struct net_device *net_dev,
-			       struct ethtool_rxfh_param *rxfh,
-			       struct netlink_ext_ack *extack)
-{
-	struct efx_nic *efx = netdev_priv(net_dev);
-	u32 *indir = rxfh->indir;
-	u8 *key = rxfh->key;
-
-	/* Hash function is Toeplitz, cannot be changed */
-	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
-	    rxfh->hfunc != ETH_RSS_HASH_TOP)
-		return -EOPNOTSUPP;
-	if (!indir && !key)
-		return 0;
-
-	if (!key)
-		key = efx->rss_context.rx_hash_key;
-	if (!indir)
-		indir = efx->rss_context.rx_indir_table;
-
-	return efx->type->rx_push_rss_config(efx, true, indir, key);
-}
-
-int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev,
-				       struct ethtool_rxfh_param *rxfh,
-				       u32 rss_context)
+static int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev,
+					      struct ethtool_rxfh_param *rxfh)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 	struct efx_rss_context *ctx;
@@ -1219,7 +1175,7 @@ int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev,
 		return -EOPNOTSUPP;
 
 	mutex_lock(&efx->rss_lock);
-	ctx = efx_siena_find_rss_context_entry(efx, rss_context);
+	ctx = efx_siena_find_rss_context_entry(efx, rxfh->rss_context);
 	if (!ctx) {
 		rc = -ENOENT;
 		goto out_unlock;
@@ -1240,11 +1196,35 @@ int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev,
 	return rc;
 }
 
-int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
-				       struct ethtool_rxfh_param *rxfh,
-				       u32 *rss_context, bool delete)
+int efx_siena_ethtool_get_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh_param *rxfh)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
+	int rc;
+
+	if (rxfh->rss_context)
+		return efx_siena_ethtool_get_rxfh_context(net_dev, rxfh);
+
+	rc = efx->type->rx_pull_rss_config(efx);
+	if (rc)
+		return rc;
+
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->indir)
+		memcpy(rxfh->indir, efx->rss_context.rx_indir_table,
+		       sizeof(efx->rss_context.rx_indir_table));
+	if (rxfh->key)
+		memcpy(rxfh->key, efx->rss_context.rx_hash_key,
+		       efx->type->rx_hash_key_size);
+	return 0;
+}
+
+static int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
+					      struct ethtool_rxfh_param *rxfh,
+					      struct netlink_ext_ack *extack)
+{
+	struct efx_nic *efx = netdev_priv(net_dev);
+	u32 *rss_context = &rxfh->rss_context;
 	struct efx_rss_context *ctx;
 	u32 *indir = rxfh->indir;
 	bool allocated = false;
@@ -1253,15 +1233,11 @@ int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
 
 	if (!efx->type->rx_push_rss_context_config)
 		return -EOPNOTSUPP;
-	/* Hash function is Toeplitz, cannot be changed */
-	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
-	    rxfh->hfunc != ETH_RSS_HASH_TOP)
-		return -EOPNOTSUPP;
 
 	mutex_lock(&efx->rss_lock);
 
 	if (*rss_context == ETH_RXFH_CONTEXT_ALLOC) {
-		if (delete) {
+		if (rxfh->rss_delete) {
 			/* alloc + delete == Nothing to do */
 			rc = -EINVAL;
 			goto out_unlock;
@@ -1284,7 +1260,7 @@ int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
 		}
 	}
 
-	if (delete) {
+	if (rxfh->rss_delete) {
 		/* delete this context */
 		rc = efx->type->rx_push_rss_context_config(efx, ctx, NULL, NULL);
 		if (!rc)
@@ -1307,6 +1283,33 @@ int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
 	return rc;
 }
 
+int efx_siena_ethtool_set_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh_param *rxfh,
+			       struct netlink_ext_ack *extack)
+{
+	struct efx_nic *efx = netdev_priv(net_dev);
+	u32 *indir = rxfh->indir;
+	u8 *key = rxfh->key;
+
+	/* Hash function is Toeplitz, cannot be changed */
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
+		return -EOPNOTSUPP;
+
+	if (rxfh->rss_context)
+		efx_siena_ethtool_set_rxfh_context(net_dev, rxfh, extack);
+
+	if (!indir && !key)
+		return 0;
+
+	if (!key)
+		key = efx->rss_context.rx_hash_key;
+	if (!indir)
+		indir = efx->rss_context.rx_indir_table;
+
+	return efx->type->rx_push_rss_config(efx, true, indir, key);
+}
+
 int efx_siena_ethtool_reset(struct net_device *net_dev, u32 *flags)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
diff --git a/drivers/net/ethernet/sfc/siena/ethtool_common.h b/drivers/net/ethernet/sfc/siena/ethtool_common.h
index 2f892f8eff70..d674bab0f65b 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool_common.h
+++ b/drivers/net/ethernet/sfc/siena/ethtool_common.h
@@ -46,12 +46,6 @@ int efx_siena_ethtool_get_rxfh(struct net_device *net_dev,
 int efx_siena_ethtool_set_rxfh(struct net_device *net_dev,
 			       struct ethtool_rxfh_param *rxfh,
 			       struct netlink_ext_ack *extack);
-int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev,
-				       struct ethtool_rxfh_param *rxfh,
-				       u32 rss_context);
-int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
-				       struct ethtool_rxfh_param *rxfh,
-				       u32 *rss_context, bool delete);
 int efx_siena_ethtool_reset(struct net_device *net_dev, u32 *flags);
 int efx_siena_ethtool_get_module_eeprom(struct net_device *net_dev,
 					struct ethtool_eeprom *ee,
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 9e7a2f571003..16176903bf09 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -607,6 +607,12 @@ struct ethtool_mm_stats {
  *	which may be zero.  On GET (read from the driver), the size of the
  *	hardware hash key.
  * @key: The hash key of size @key_size bytes.
+ * @rss_context: RSS context identifier.  Context 0 is the default for normal
+ *	traffic; other contexts can be referenced as the destination for RX flow
+ *	classification rules.  On SET, %ETH_RXFH_CONTEXT_ALLOC is used
+ *	to allocate a new RSS context; on return this field will
+ *	contain the ID of the newly allocated context.
+ * @rss_delete: Set to non-ZERO to remove the @rss_context context.
  */
 struct ethtool_rxfh_param {
 	__u8	hfunc;
@@ -614,12 +620,16 @@ struct ethtool_rxfh_param {
 	__u32	*indir;
 	__u32   key_size;
 	__u8	*key;
+	__u32	rss_context;
+	__u8	rss_delete;
 };
 
 /**
  * struct ethtool_ops - optional netdev operations
  * @cap_link_lanes_supported: indicates if the driver supports lanes
  *	parameter.
+ * @cap_rss_ctx_supported: indicates if the driver supports RSS
+ *	contexts.
  * @supported_coalesce_params: supported types of interrupt coalescing.
  * @supported_ring_params: supported ring params.
  * @get_drvinfo: Report driver/device information. Modern drivers no
@@ -716,15 +726,6 @@ struct ethtool_rxfh_param {
  *	will remain unchanged.
  *	Returns a negative error code or zero. An error code must be returned
  *	if at least one unsupported change was requested.
- * @get_rxfh_context: Get the contents of the RX flow hash indirection table,
- *	hash key, and/or hash function assiciated to the given rss context.
- *	Returns a negative error code or zero.
- * @set_rxfh_context: Create, remove and configure RSS contexts. Allows setting
- *	the contents of the RX flow hash indirection table, hash key, and/or
- *	hash function associated to the given context. Arguments which are set
- *	to %NULL or zero will remain unchanged.
- *	Returns a negative error code or zero. An error code must be returned
- *	if at least one unsupported change was requested.
  * @get_channels: Get number of channels.
  * @set_channels: Set number of channels.  Returns a negative error code or
  *	zero.
@@ -807,6 +808,7 @@ struct ethtool_rxfh_param {
  */
 struct ethtool_ops {
 	u32     cap_link_lanes_supported:1;
+	u32     cap_rss_ctx_supported:1;
 	u32	supported_coalesce_params;
 	u32	supported_ring_params;
 	void	(*get_drvinfo)(struct net_device *, struct ethtool_drvinfo *);
@@ -869,12 +871,6 @@ struct ethtool_ops {
 	int	(*get_rxfh)(struct net_device *, struct ethtool_rxfh_param *);
 	int	(*set_rxfh)(struct net_device *, struct ethtool_rxfh_param *,
 			    struct netlink_ext_ack *extack);
-	int	(*get_rxfh_context)(struct net_device *,
-				    struct ethtool_rxfh_param *,
-				    u32 rss_context);
-	int	(*set_rxfh_context)(struct net_device *,
-				    struct ethtool_rxfh_param *,
-				    u32 *rss_context, bool delete);
 	void	(*get_channels)(struct net_device *, struct ethtool_channels *);
 	int	(*set_channels)(struct net_device *, struct ethtool_channels *);
 	int	(*get_dump_flag)(struct net_device *, struct ethtool_dump *);
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 5d1c664de608..e0506a4d5115 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1199,7 +1199,7 @@ static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 	if (rxfh.rsvd8[0] || rxfh.rsvd8[1] || rxfh.rsvd8[2] || rxfh.rsvd32)
 		return -EINVAL;
 	/* Most drivers don't handle rss_context, check it's 0 as well */
-	if (rxfh.rss_context && !ops->get_rxfh_context)
+	if (rxfh.rss_context && !ops->cap_rss_ctx_supported)
 		return -EOPNOTSUPP;
 
 	rxfh.indir_size = rxfh_dev.indir_size;
@@ -1226,11 +1226,9 @@ static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 		}
 	}
 
-	if (rxfh.rss_context)
-		ret = dev->ethtool_ops->get_rxfh_context(dev, &rxfh_dev,
-							 rxfh.rss_context);
-	else
-		ret = dev->ethtool_ops->get_rxfh(dev, &rxfh_dev);
+	rxfh_dev.rss_context = rxfh.rss_context;
+
+	ret = dev->ethtool_ops->get_rxfh(dev, &rxfh_dev);
 	if (ret)
 		goto out;
 
@@ -1266,7 +1264,6 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 	struct ethtool_rxfh_param rxfh_dev;
 	struct ethtool_rxnfc rx_rings;
 	struct ethtool_rxfh rxfh;
-	bool delete = false;
 	u32 indir_bytes = 0;
 	int ret;
 
@@ -1285,7 +1282,7 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 	if (rxfh.rsvd8[0] || rxfh.rsvd8[1] || rxfh.rsvd8[2] || rxfh.rsvd32)
 		return -EINVAL;
 	/* Most drivers don't handle rss_context, check it's 0 as well */
-	if (rxfh.rss_context && !ops->set_rxfh_context)
+	if (rxfh.rss_context && !ops->cap_rss_ctx_supported)
 		return -EOPNOTSUPP;
 
 	/* If either indir, hash key or function is valid, proceed further.
@@ -1332,7 +1329,7 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 			for (i = 0; i < rxfh_dev.indir_size; i++)
 				indir[i] = ethtool_rxfh_indir_default(i, rx_rings.data);
 		} else {
-			delete = true;
+			rxfh_dev.rss_delete = true;
 		}
 	}
 
@@ -1353,21 +1350,17 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 	rxfh_dev.hfunc = rxfh.hfunc;
 	rxfh_dev.indir_size = rxfh.indir_size;
 	rxfh_dev.key_size = rxfh.key_size;
+	rxfh_dev.rss_context = rxfh.rss_context;
 
-	if (rxfh.rss_context)
-		ret = ops->set_rxfh_context(dev, &rxfh_dev,
-					    &rxfh.rss_context, delete);
-	else
-		ret = ops->set_rxfh(dev, &rxfh_dev, extack);
-
+	ret = ops->set_rxfh(dev, &rxfh_dev, extack);
 	if (ret)
 		goto out;
 
 	if (copy_to_user(useraddr + offsetof(struct ethtool_rxfh, rss_context),
-			 &rxfh.rss_context, sizeof(rxfh.rss_context)))
+			 &rxfh_dev.rss_context, sizeof(rxfh_dev.rss_context)))
 		ret = -EFAULT;
 
-	if (!rxfh.rss_context) {
+	if (!rxfh_dev.rss_context) {
 		/* indicate whether rxfh was set to default */
 		if (rxfh.indir_size == 0)
 			dev->priv_flags &= ~IFF_RXFH_CONFIGURED;
diff --git a/net/ethtool/rss.c b/net/ethtool/rss.c
index 8e0ee8fa43b7..ea3fe0d3fe1c 100644
--- a/net/ethtool/rss.c
+++ b/net/ethtool/rss.c
@@ -58,7 +58,7 @@ rss_prepare_data(const struct ethnl_req_info *req_base,
 		return -EOPNOTSUPP;
 
 	/* Some drivers don't handle rss_context */
-	if (request->rss_context && !ops->get_rxfh_context)
+	if (request->rss_context && !ops->cap_rss_ctx_supported)
 		return -EOPNOTSUPP;
 
 	ret = ethnl_ops_begin(dev);
@@ -98,12 +98,9 @@ rss_prepare_data(const struct ethnl_req_info *req_base,
 	rxfh.indir = data->indir_table;
 	rxfh.key_size = data->hkey_size;
 	rxfh.key = data->hkey;
+	rxfh.rss_context = request->rss_context;
 
-	if (request->rss_context)
-		ret = ops->get_rxfh_context(dev, &rxfh, request->rss_context);
-	else
-		ret = ops->get_rxfh(dev, &rxfh);
-
+	ret = ops->get_rxfh(dev, &rxfh);
 	if (ret)
 		goto out_ops;
 
-- 
2.34.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

