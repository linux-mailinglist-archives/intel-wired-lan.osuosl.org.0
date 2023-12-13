Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624C18106E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 01:44:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E47A54054E;
	Wed, 13 Dec 2023 00:44:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E47A54054E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702428270;
	bh=ZmFK6odxh0Afe61SfLKy3v0opODuxXD9fvhgGoIBPiE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VfAiwo19vq594rqjN5yZ2a/yuxM8oH1K/ScyzGT+a7XTBOr7CtfymaU5U2+SUT+K7
	 AywxGoPtW4lDdQQcrOWZLCh/g0ulSm09ehfproSb5iyoBXXWPLenna6mtG/2Yb59c2
	 XFkNe2x8xxwZcFQk+w+t2hHrFu5tcYEvcdOkWCkj+5jRDW1TXlcmL2rrPk6yFR57GP
	 zXKzFdHuPykCNw1fB/YltghKR1UUKhELxbUvmr6QN4GTooZIOKg7RsrZsgaIhfOPMO
	 1TEZTNAromGHMnxNj/DcqYu46RDXhTDu+q6I0+2PuDOtmwJ4OkhZAa4Qu84wZdsDO1
	 5XVQ5bdzpyOmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhVnHny5pg5b; Wed, 13 Dec 2023 00:44:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B325C40111;
	Wed, 13 Dec 2023 00:44:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B325C40111
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A9701BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 00:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1253340137
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 00:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1253340137
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 255qI0bwQ5QS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 00:33:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 115FE40111
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 00:33:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 115FE40111
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="394642176"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="394642176"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:33:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="891822455"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="891822455"
Received: from epologov-mobl2.ccr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.49.124])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:33:45 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 12 Dec 2023 17:33:14 -0700
Message-Id: <20231213003321.605376-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231213003321.605376-1-ahmed.zaki@intel.com>
References: <20231213003321.605376-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Dec 2023 00:44:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702427634; x=1733963634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a0A8NAjULZHByZJlb0k+8qa7H2kwJYNhBoNdDaKjqNs=;
 b=Algo5fJbXDJbtucATihJMqYLJYemon1bg4VyoiWUMEkRi/JgdP/nJZ/J
 KAaYnUIMn0iJzce0yRp0eTPw+YKwFhEab/KBLd7xSQ4N9+/DAFFLouRJ+
 CxGDpkYTjQt2+Mzj2rQtJG6dSUm4PDuxW/9SHRsywZh1Vur9sGpA36iGH
 xh3gmdda+p85ticAbrYzP6O1y6ZXBDfYqwIlzTIg5rfkYe2v1v5tlvXe/
 dj1oROB/Tw5hMdk5fmYrMYgjPZSoCPMx3WRAkvvrGiJPKwHoXVyySyH9B
 YTqt+l/ELc+zSeHdx+g43bN+UvdxEmvHAbFtkF8M5mq0i2z4DbKzMyoIW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Algo5fJb
Subject: [Intel-wired-lan] [PATCH net-next v9 1/8] net: ethtool: pass a
 pointer to parameters to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, vladimir.oltean@nxp.com, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, ecree.xilinx@gmail.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The get/set_rxfh ethtool ops currently takes the rxfh (RSS) parameters
as direct function arguments. This will force us to change the API (and
all drivers' functions) every time some new parameters are added.

This is part 1/2 of the fix, as suggested in [1]:

- First simplify the code by always providing a pointer to all params
   (indir, key and func); the fact that some of them may be NULL seems
   like a weird historic thing or a premature optimization.
   It will simplify the drivers if all pointers are always present.

 - Then make the functions take a dev pointer, and a pointer to a
   single struct wrapping all arguments. The set_* should also take
   an extack.

Link: https://lore.kernel.org/netdev/20231121152906.2dd5f487@kernel.org/ [1]
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/amazon/ena/ena_ethtool.c |  28 ++--
 drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c  |  33 ++---
 .../ethernet/aquantia/atlantic/aq_ethtool.c   |  31 ++---
 .../ethernet/broadcom/bnx2x/bnx2x_ethtool.c   |  25 ++--
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  28 ++--
 drivers/net/ethernet/broadcom/tg3.c           |  22 +--
 .../ethernet/cavium/thunder/nicvf_ethtool.c   |  31 ++---
 .../ethernet/chelsio/cxgb4/cxgb4_ethtool.c    |  24 ++--
 .../net/ethernet/cisco/enic/enic_ethtool.c    |  25 ++--
 .../net/ethernet/emulex/benet/be_ethtool.c    |  28 ++--
 .../ethernet/freescale/enetc/enetc_ethtool.c  |  31 +++--
 .../ethernet/fungible/funeth/funeth_ethtool.c |  40 +++---
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  |  17 ++-
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  23 ++--
 .../net/ethernet/huawei/hinic/hinic_ethtool.c |  40 +++---
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  |  26 ++--
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  38 +++---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  42 +++---
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  44 +++---
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  40 +++---
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  27 ++--
 drivers/net/ethernet/intel/igc/igc_ethtool.c  |  27 ++--
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  35 ++---
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  |  27 ++--
 drivers/net/ethernet/marvell/mvneta.c         |  25 ++--
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  50 +++----
 .../marvell/octeontx2/nic/otx2_ethtool.c      |  41 +++---
 .../net/ethernet/mellanox/mlx4/en_ethtool.c   |  40 +++---
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |   6 +-
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  28 ++--
 .../net/ethernet/microchip/lan743x_ethtool.c  |  34 ++---
 .../ethernet/microsoft/mana/mana_ethtool.c    |  33 ++---
 .../ethernet/netronome/nfp/nfp_net_ethtool.c  |  38 +++---
 .../ethernet/pensando/ionic/ionic_ethtool.c   |  26 ++--
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  32 ++---
 drivers/net/ethernet/sfc/ethtool_common.c     |  53 ++++----
 drivers/net/ethernet/sfc/ethtool_common.h     |  17 +--
 drivers/net/ethernet/sfc/falcon/ethtool.c     |  26 ++--
 .../net/ethernet/sfc/siena/ethtool_common.c   |  53 ++++----
 .../net/ethernet/sfc/siena/ethtool_common.h   |  17 +--
 .../ethernet/stmicro/stmmac/stmmac_ethtool.c  |  31 ++---
 drivers/net/hyperv/netvsc_drv.c               |  32 ++---
 drivers/net/virtio_net.c                      |  29 ++--
 drivers/net/vmxnet3/vmxnet3_ethtool.c         |  22 +--
 include/linux/ethtool.h                       |  38 ++++--
 net/ethtool/common.c                          |  12 +-
 net/ethtool/ioctl.c                           | 126 ++++++++++--------
 net/ethtool/rss.c                             |  16 ++-
 48 files changed, 827 insertions(+), 730 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_ethtool.c b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
index e3ef081aa42b..2d8c5a2841b8 100644
--- a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
+++ b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
@@ -802,15 +802,15 @@ static int ena_indirection_table_get(struct ena_adapter *adapter, u32 *indir)
 	return rc;
 }
 
-static int ena_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int ena_get_rxfh(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh)
 {
 	struct ena_adapter *adapter = netdev_priv(netdev);
 	enum ena_admin_hash_functions ena_func;
 	u8 func;
 	int rc;
 
-	rc = ena_indirection_table_get(adapter, indir);
+	rc = ena_indirection_table_get(adapter, rxfh->indir);
 	if (rc)
 		return rc;
 
@@ -825,7 +825,7 @@ static int ena_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 		return rc;
 	}
 
-	rc = ena_com_get_hash_key(adapter->ena_dev, key);
+	rc = ena_com_get_hash_key(adapter->ena_dev, rxfh->key);
 	if (rc)
 		return rc;
 
@@ -842,27 +842,27 @@ static int ena_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 		return -EOPNOTSUPP;
 	}
 
-	if (hfunc)
-		*hfunc = func;
+	rxfh->hfunc = func;
 
 	return 0;
 }
 
-static int ena_set_rxfh(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int ena_set_rxfh(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh,
+			struct netlink_ext_ack *extack)
 {
 	struct ena_adapter *adapter = netdev_priv(netdev);
 	struct ena_com_dev *ena_dev = adapter->ena_dev;
 	enum ena_admin_hash_functions func = 0;
 	int rc;
 
-	if (indir) {
-		rc = ena_indirection_table_set(adapter, indir);
+	if (rxfh->indir) {
+		rc = ena_indirection_table_set(adapter, rxfh->indir);
 		if (rc)
 			return rc;
 	}
 
-	switch (hfunc) {
+	switch (rxfh->hfunc) {
 	case ETH_RSS_HASH_NO_CHANGE:
 		func = ena_com_get_current_hash_function(ena_dev);
 		break;
@@ -874,12 +874,12 @@ static int ena_set_rxfh(struct net_device *netdev, const u32 *indir,
 		break;
 	default:
 		netif_err(adapter, drv, netdev, "Unsupported hfunc %d\n",
-			  hfunc);
+			  rxfh->hfunc);
 		return -EOPNOTSUPP;
 	}
 
-	if (key || func) {
-		rc = ena_com_fill_hash_function(ena_dev, func, key,
+	if (rxfh->key || func) {
+		rc = ena_com_fill_hash_function(ena_dev, func, rxfh->key,
 						ENA_HASH_KEY_SIZE,
 						0xFFFFFFFF);
 		if (unlikely(rc)) {
diff --git a/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c b/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c
index 32fab5e77246..58e7e88aae5b 100644
--- a/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c
+++ b/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c
@@ -527,47 +527,48 @@ static u32 xgbe_get_rxfh_indir_size(struct net_device *netdev)
 	return ARRAY_SIZE(pdata->rss_table);
 }
 
-static int xgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int xgbe_get_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct xgbe_prv_data *pdata = netdev_priv(netdev);
 	unsigned int i;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < ARRAY_SIZE(pdata->rss_table); i++)
-			indir[i] = XGMAC_GET_BITS(pdata->rss_table[i],
-						  MAC_RSSDR, DMCH);
+			rxfh->indir[i] = XGMAC_GET_BITS(pdata->rss_table[i],
+							MAC_RSSDR, DMCH);
 	}
 
-	if (key)
-		memcpy(key, pdata->rss_key, sizeof(pdata->rss_key));
+	if (rxfh->key)
+		memcpy(rxfh->key, pdata->rss_key, sizeof(pdata->rss_key));
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int xgbe_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int xgbe_set_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct xgbe_prv_data *pdata = netdev_priv(netdev);
 	struct xgbe_hw_if *hw_if = &pdata->hw_if;
 	unsigned int ret;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) {
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP) {
 		netdev_err(netdev, "unsupported hash function\n");
 		return -EOPNOTSUPP;
 	}
 
-	if (indir) {
-		ret = hw_if->set_rss_lookup_table(pdata, indir);
+	if (rxfh->indir) {
+		ret = hw_if->set_rss_lookup_table(pdata, rxfh->indir);
 		if (ret)
 			return ret;
 	}
 
-	if (key) {
-		ret = hw_if->set_rss_hash_key(pdata, key);
+	if (rxfh->key) {
+		ret = hw_if->set_rss_hash_key(pdata, rxfh->key);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
index ac4ea93bd8dd..18a6c8d99fa0 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
@@ -447,8 +447,8 @@ static u32 aq_ethtool_get_rss_key_size(struct net_device *ndev)
 	return sizeof(cfg->aq_rss.hash_secret_key);
 }
 
-static int aq_ethtool_get_rss(struct net_device *ndev, u32 *indir, u8 *key,
-			      u8 *hfunc)
+static int aq_ethtool_get_rss(struct net_device *ndev,
+			      struct ethtool_rxfh_param *rxfh)
 {
 	struct aq_nic_s *aq_nic = netdev_priv(ndev);
 	struct aq_nic_cfg_s *cfg;
@@ -456,21 +456,21 @@ static int aq_ethtool_get_rss(struct net_device *ndev, u32 *indir, u8 *key,
 
 	cfg = aq_nic_get_cfg(aq_nic);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
-	if (indir) {
+	rxfh->hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
+	if (rxfh->indir) {
 		for (i = 0; i < AQ_CFG_RSS_INDIRECTION_TABLE_MAX; i++)
-			indir[i] = cfg->aq_rss.indirection_table[i];
+			rxfh->indir[i] = cfg->aq_rss.indirection_table[i];
 	}
-	if (key)
-		memcpy(key, cfg->aq_rss.hash_secret_key,
+	if (rxfh->key)
+		memcpy(rxfh->key, cfg->aq_rss.hash_secret_key,
 		       sizeof(cfg->aq_rss.hash_secret_key));
 
 	return 0;
 }
 
-static int aq_ethtool_set_rss(struct net_device *netdev, const u32 *indir,
-			      const u8 *key, const u8 hfunc)
+static int aq_ethtool_set_rss(struct net_device *netdev,
+			      struct ethtool_rxfh_param *rxfh,
+			      struct netlink_ext_ack *extack)
 {
 	struct aq_nic_s *aq_nic = netdev_priv(netdev);
 	struct aq_nic_cfg_s *cfg;
@@ -482,16 +482,17 @@ static int aq_ethtool_set_rss(struct net_device *netdev, const u32 *indir,
 	rss_entries = cfg->aq_rss.indirection_table_size;
 
 	/* We do not allow change in unsupported parameters */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 	/* Fill out the redirection table */
-	if (indir)
+	if (rxfh->indir)
 		for (i = 0; i < rss_entries; i++)
-			cfg->aq_rss.indirection_table[i] = indir[i];
+			cfg->aq_rss.indirection_table[i] = rxfh->indir[i];
 
 	/* Fill out the rss hash key */
-	if (key) {
-		memcpy(cfg->aq_rss.hash_secret_key, key,
+	if (rxfh->key) {
+		memcpy(cfg->aq_rss.hash_secret_key, rxfh->key,
 		       sizeof(cfg->aq_rss.hash_secret_key));
 		err = aq_nic->aq_hw_ops->hw_rss_hash_set(aq_nic->aq_hw,
 			&cfg->aq_rss);
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
index bda3ccc28eca..81d232e6d05f 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
@@ -3486,16 +3486,15 @@ static u32 bnx2x_get_rxfh_indir_size(struct net_device *dev)
 	return T_ETH_INDIRECTION_TABLE_SIZE;
 }
 
-static int bnx2x_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int bnx2x_get_rxfh(struct net_device *dev,
+			  struct ethtool_rxfh_param *rxfh)
 {
 	struct bnx2x *bp = netdev_priv(dev);
 	u8 ind_table[T_ETH_INDIRECTION_TABLE_SIZE] = {0};
 	size_t i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (!indir)
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (!rxfh->indir)
 		return 0;
 
 	/* Get the current configuration of the RSS indirection table */
@@ -3511,13 +3510,14 @@ static int bnx2x_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	 * queue.
 	 */
 	for (i = 0; i < T_ETH_INDIRECTION_TABLE_SIZE; i++)
-		indir[i] = ind_table[i] - bp->fp->cl_id;
+		rxfh->indir[i] = ind_table[i] - bp->fp->cl_id;
 
 	return 0;
 }
 
-static int bnx2x_set_rxfh(struct net_device *dev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int bnx2x_set_rxfh(struct net_device *dev,
+			  struct ethtool_rxfh_param *rxfh,
+			  struct netlink_ext_ack *extack)
 {
 	struct bnx2x *bp = netdev_priv(dev);
 	size_t i;
@@ -3525,11 +3525,12 @@ static int bnx2x_set_rxfh(struct net_device *dev, const u32 *indir,
 	/* We require at least one supported parameter to be changed and no
 	 * change in any of the unsupported parameters
 	 */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
 	for (i = 0; i < T_ETH_INDIRECTION_TABLE_SIZE; i++) {
@@ -3542,7 +3543,7 @@ static int bnx2x_set_rxfh(struct net_device *dev, const u32 *indir,
 		 * align the received table to the Client ID of the leading RSS
 		 * queue
 		 */
-		bp->rss_conf_obj.ind_table[i] = indir[i] + bp->fp->cl_id;
+		bp->rss_conf_obj.ind_table[i] = rxfh->indir[i] + bp->fp->cl_id;
 	}
 
 	if (bp->state == BNX2X_STATE_OPEN)
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
index bb9cab821587..1476f7e6cbe7 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
@@ -1332,49 +1332,49 @@ static u32 bnxt_get_rxfh_key_size(struct net_device *dev)
 	return HW_HASH_KEY_SIZE;
 }
 
-static int bnxt_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int bnxt_get_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	struct bnxt_vnic_info *vnic;
 	u32 i, tbl_size;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (!bp->vnic_info)
 		return 0;
 
 	vnic = &bp->vnic_info[0];
-	if (indir && bp->rss_indir_tbl) {
+	if (rxfh->indir && bp->rss_indir_tbl) {
 		tbl_size = bnxt_get_rxfh_indir_size(dev);
 		for (i = 0; i < tbl_size; i++)
-			indir[i] = bp->rss_indir_tbl[i];
+			rxfh->indir[i] = bp->rss_indir_tbl[i];
 	}
 
-	if (key && vnic->rss_hash_key)
-		memcpy(key, vnic->rss_hash_key, HW_HASH_KEY_SIZE);
+	if (rxfh->key && vnic->rss_hash_key)
+		memcpy(rxfh->key, vnic->rss_hash_key, HW_HASH_KEY_SIZE);
 
 	return 0;
 }
 
-static int bnxt_set_rxfh(struct net_device *dev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int bnxt_set_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	int rc = 0;
 
-	if (hfunc && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc && rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (key)
+	if (rxfh->key)
 		return -EOPNOTSUPP;
 
-	if (indir) {
+	if (rxfh->indir) {
 		u32 i, pad, tbl_size = bnxt_get_rxfh_indir_size(dev);
 
 		for (i = 0; i < tbl_size; i++)
-			bp->rss_indir_tbl[i] = indir[i];
+			bp->rss_indir_tbl[i] = rxfh->indir[i];
 		pad = bp->rss_indir_tbl_entries - tbl_size;
 		if (pad)
 			memset(&bp->rss_indir_tbl[i], 0, pad * sizeof(u16));
diff --git a/drivers/net/ethernet/broadcom/tg3.c b/drivers/net/ethernet/broadcom/tg3.c
index f52830dfb26a..04964bbe08cf 100644
--- a/drivers/net/ethernet/broadcom/tg3.c
+++ b/drivers/net/ethernet/broadcom/tg3.c
@@ -12745,24 +12745,23 @@ static u32 tg3_get_rxfh_indir_size(struct net_device *dev)
 	return size;
 }
 
-static int tg3_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
+static int tg3_get_rxfh(struct net_device *dev, struct ethtool_rxfh_param *rxfh)
 {
 	struct tg3 *tp = netdev_priv(dev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (!indir)
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (!rxfh->indir)
 		return 0;
 
 	for (i = 0; i < TG3_RSS_INDIR_TBL_SIZE; i++)
-		indir[i] = tp->rss_ind_tbl[i];
+		rxfh->indir[i] = tp->rss_ind_tbl[i];
 
 	return 0;
 }
 
-static int tg3_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key,
-			const u8 hfunc)
+static int tg3_set_rxfh(struct net_device *dev, struct ethtool_rxfh_param *rxfh,
+			struct netlink_ext_ack *extack)
 {
 	struct tg3 *tp = netdev_priv(dev);
 	size_t i;
@@ -12770,15 +12769,16 @@ static int tg3_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key,
 	/* We require at least one supported parameter to be changed and no
 	 * change in any of the unsupported parameters
 	 */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
 	for (i = 0; i < TG3_RSS_INDIR_TBL_SIZE; i++)
-		tp->rss_ind_tbl[i] = indir[i];
+		tp->rss_ind_tbl[i] = rxfh->indir[i];
 
 	if (!netif_running(dev) || !tg3_flag(tp, ENABLE_RSS))
 		return 0;
diff --git a/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c b/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
index d8d71bf97983..34125b8cd935 100644
--- a/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
+++ b/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
@@ -653,35 +653,36 @@ static u32 nicvf_get_rxfh_indir_size(struct net_device *dev)
 	return nic->rss_info.rss_size;
 }
 
-static int nicvf_get_rxfh(struct net_device *dev, u32 *indir, u8 *hkey,
-			  u8 *hfunc)
+static int nicvf_get_rxfh(struct net_device *dev,
+			  struct ethtool_rxfh_param *rxfh)
 {
 	struct nicvf *nic = netdev_priv(dev);
 	struct nicvf_rss_info *rss = &nic->rss_info;
 	int idx;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (idx = 0; idx < rss->rss_size; idx++)
-			indir[idx] = rss->ind_tbl[idx];
+			rxfh->indir[idx] = rss->ind_tbl[idx];
 	}
 
-	if (hkey)
-		memcpy(hkey, rss->key, RSS_HASH_KEY_SIZE * sizeof(u64));
+	if (rxfh->key)
+		memcpy(rxfh->key, rss->key, RSS_HASH_KEY_SIZE * sizeof(u64));
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int nicvf_set_rxfh(struct net_device *dev, const u32 *indir,
-			  const u8 *hkey, const u8 hfunc)
+static int nicvf_set_rxfh(struct net_device *dev,
+			  struct ethtool_rxfh_param *rxfh,
+			  struct netlink_ext_ack *extack)
 {
 	struct nicvf *nic = netdev_priv(dev);
 	struct nicvf_rss_info *rss = &nic->rss_info;
 	int idx;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (!rss->enable) {
@@ -690,13 +691,13 @@ static int nicvf_set_rxfh(struct net_device *dev, const u32 *indir,
 		return -EIO;
 	}
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (idx = 0; idx < rss->rss_size; idx++)
-			rss->ind_tbl[idx] = indir[idx];
+			rss->ind_tbl[idx] = rxfh->indir[idx];
 	}
 
-	if (hkey) {
-		memcpy(rss->key, hkey, RSS_HASH_KEY_SIZE * sizeof(u64));
+	if (rxfh->key) {
+		memcpy(rss->key, rxfh->key, RSS_HASH_KEY_SIZE * sizeof(u64));
 		nicvf_set_rss_key(nic);
 	}
 
diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c
index 8477a93cee6b..47eecde36285 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c
@@ -1588,22 +1588,23 @@ static u32 get_rss_table_size(struct net_device *dev)
 	return pi->rss_size;
 }
 
-static int get_rss_table(struct net_device *dev, u32 *p, u8 *key, u8 *hfunc)
+static int get_rss_table(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	const struct port_info *pi = netdev_priv(dev);
 	unsigned int n = pi->rss_size;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (!p)
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (!rxfh->indir)
 		return 0;
 	while (n--)
-		p[n] = pi->rss[n];
+		rxfh->indir[n] = pi->rss[n];
 	return 0;
 }
 
-static int set_rss_table(struct net_device *dev, const u32 *p, const u8 *key,
-			 const u8 hfunc)
+static int set_rss_table(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	unsigned int i;
 	struct port_info *pi = netdev_priv(dev);
@@ -1611,16 +1612,17 @@ static int set_rss_table(struct net_device *dev, const u32 *p, const u8 *key,
 	/* We require at least one supported parameter to be changed and no
 	 * change in any of the unsupported parameters
 	 */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
-	if (!p)
+	if (!rxfh->indir)
 		return 0;
 
 	/* Interface must be brought up atleast once */
 	if (pi->adapter->flags & CXGB4_FULL_INIT_DONE) {
 		for (i = 0; i < pi->rss_size; i++)
-			pi->rss[i] = p[i];
+			pi->rss[i] = rxfh->indir[i];
 
 		return cxgb4_write_rss(pi, pi->rss);
 	}
diff --git a/drivers/net/ethernet/cisco/enic/enic_ethtool.c b/drivers/net/ethernet/cisco/enic/enic_ethtool.c
index 08b7cc0a1809..241906697019 100644
--- a/drivers/net/ethernet/cisco/enic/enic_ethtool.c
+++ b/drivers/net/ethernet/cisco/enic/enic_ethtool.c
@@ -568,31 +568,32 @@ static u32 enic_get_rxfh_key_size(struct net_device *netdev)
 	return ENIC_RSS_LEN;
 }
 
-static int enic_get_rxfh(struct net_device *netdev, u32 *indir, u8 *hkey,
-			 u8 *hfunc)
+static int enic_get_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct enic *enic = netdev_priv(netdev);
 
-	if (hkey)
-		memcpy(hkey, enic->rss_key, ENIC_RSS_LEN);
+	if (rxfh->key)
+		memcpy(rxfh->key, enic->rss_key, ENIC_RSS_LEN);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int enic_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *hkey, const u8 hfunc)
+static int enic_set_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct enic *enic = netdev_priv(netdev);
 
-	if ((hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) ||
-	    indir)
+	if (rxfh->indir ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EINVAL;
 
-	if (hkey)
-		memcpy(enic->rss_key, hkey, ENIC_RSS_LEN);
+	if (rxfh->key)
+		memcpy(enic->rss_key, rxfh->key, ENIC_RSS_LEN);
 
 	return __enic_set_rsskey(enic);
 }
diff --git a/drivers/net/ethernet/emulex/benet/be_ethtool.c b/drivers/net/ethernet/emulex/benet/be_ethtool.c
index a29de29bdf23..f001a649f58f 100644
--- a/drivers/net/ethernet/emulex/benet/be_ethtool.c
+++ b/drivers/net/ethernet/emulex/benet/be_ethtool.c
@@ -1271,43 +1271,45 @@ static u32 be_get_rxfh_key_size(struct net_device *netdev)
 	return RSS_HASH_KEY_LEN;
 }
 
-static int be_get_rxfh(struct net_device *netdev, u32 *indir, u8 *hkey,
-		       u8 *hfunc)
+static int be_get_rxfh(struct net_device *netdev,
+		       struct ethtool_rxfh_param *rxfh)
 {
 	struct be_adapter *adapter = netdev_priv(netdev);
 	int i;
 	struct rss_info *rss = &adapter->rss_info;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < RSS_INDIR_TABLE_LEN; i++)
-			indir[i] = rss->rss_queue[i];
+			rxfh->indir[i] = rss->rss_queue[i];
 	}
 
-	if (hkey)
-		memcpy(hkey, rss->rss_hkey, RSS_HASH_KEY_LEN);
+	if (rxfh->key)
+		memcpy(rxfh->key, rss->rss_hkey, RSS_HASH_KEY_LEN);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int be_set_rxfh(struct net_device *netdev, const u32 *indir,
-		       const u8 *hkey, const u8 hfunc)
+static int be_set_rxfh(struct net_device *netdev,
+		       struct ethtool_rxfh_param *rxfh,
+		       struct netlink_ext_ack *extack)
 {
 	int rc = 0, i, j;
 	struct be_adapter *adapter = netdev_priv(netdev);
+	u8 *hkey = rxfh->key;
 	u8 rsstable[RSS_INDIR_TABLE_LEN];
 
 	/* We do not allow change in unsupported parameters */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (indir) {
+	if (rxfh->indir) {
 		struct be_rx_obj *rxo;
 
 		for (i = 0; i < RSS_INDIR_TABLE_LEN; i++) {
-			j = indir[i];
+			j = rxfh->indir[i];
 			rxo = &adapter->rx_obj[j];
 			rsstable[i] = rxo->rss_id;
 			adapter->rss_info.rss_queue[i] = j;
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
index e993ed04ab57..f7753ea5b57e 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
@@ -690,25 +690,26 @@ static u32 enetc_get_rxfh_indir_size(struct net_device *ndev)
 	return priv->si->num_rss;
 }
 
-static int enetc_get_rxfh(struct net_device *ndev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int enetc_get_rxfh(struct net_device *ndev,
+			  struct ethtool_rxfh_param *rxfh)
 {
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	struct enetc_hw *hw = &priv->si->hw;
 	int err = 0, i;
 
 	/* return hash function */
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	/* return hash key */
-	if (key && hw->port)
+	if (rxfh->key && hw->port)
 		for (i = 0; i < ENETC_RSSHASH_KEY_SIZE / 4; i++)
-			((u32 *)key)[i] = enetc_port_rd(hw, ENETC_PRSSK(i));
+			((u32 *)rxfh->key)[i] = enetc_port_rd(hw,
+							      ENETC_PRSSK(i));
 
 	/* return RSS table */
-	if (indir)
-		err = enetc_get_rss_table(priv->si, indir, priv->si->num_rss);
+	if (rxfh->indir)
+		err = enetc_get_rss_table(priv->si, rxfh->indir,
+					  priv->si->num_rss);
 
 	return err;
 }
@@ -722,20 +723,22 @@ void enetc_set_rss_key(struct enetc_hw *hw, const u8 *bytes)
 }
 EXPORT_SYMBOL_GPL(enetc_set_rss_key);
 
-static int enetc_set_rxfh(struct net_device *ndev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int enetc_set_rxfh(struct net_device *ndev,
+			  struct ethtool_rxfh_param *rxfh,
+			  struct netlink_ext_ack *extack)
 {
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	struct enetc_hw *hw = &priv->si->hw;
 	int err = 0;
 
 	/* set hash key, if PF */
-	if (key && hw->port)
-		enetc_set_rss_key(hw, key);
+	if (rxfh->key && hw->port)
+		enetc_set_rss_key(hw, rxfh->key);
 
 	/* set RSS table */
-	if (indir)
-		err = enetc_set_rss_table(priv->si, indir, priv->si->num_rss);
+	if (rxfh->indir)
+		err = enetc_set_rss_table(priv->si, rxfh->indir,
+					  priv->si->num_rss);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
index 091c93bd7587..4edd0adfc6c7 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
@@ -977,44 +977,44 @@ static u32 fun_get_rxfh_key_size(struct net_device *netdev)
 	return sizeof(fp->rss_key);
 }
 
-static int fun_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int fun_get_rxfh(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh)
 {
 	const struct funeth_priv *fp = netdev_priv(netdev);
 
 	if (!fp->rss_cfg)
 		return -EOPNOTSUPP;
 
-	if (indir)
-		memcpy(indir, fp->indir_table,
+	if (rxfh->indir)
+		memcpy(rxfh->indir, fp->indir_table,
 		       sizeof(u32) * fp->indir_table_nentries);
 
-	if (key)
-		memcpy(key, fp->rss_key, sizeof(fp->rss_key));
+	if (rxfh->key)
+		memcpy(rxfh->key, fp->rss_key, sizeof(fp->rss_key));
 
-	if (hfunc)
-		*hfunc = fp->hash_algo == FUN_ETH_RSS_ALG_TOEPLITZ ?
-				ETH_RSS_HASH_TOP : ETH_RSS_HASH_CRC32;
+	rxfh->hfunc = fp->hash_algo == FUN_ETH_RSS_ALG_TOEPLITZ ?
+			ETH_RSS_HASH_TOP : ETH_RSS_HASH_CRC32;
 
 	return 0;
 }
 
-static int fun_set_rxfh(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int fun_set_rxfh(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh,
+			struct netlink_ext_ack *extack)
 {
 	struct funeth_priv *fp = netdev_priv(netdev);
-	const u32 *rss_indir = indir ? indir : fp->indir_table;
-	const u8 *rss_key = key ? key : fp->rss_key;
+	const u32 *rss_indir = rxfh->indir ? rxfh->indir : fp->indir_table;
+	const u8 *rss_key = rxfh->key ? rxfh->key : fp->rss_key;
 	enum fun_eth_hash_alg algo;
 
 	if (!fp->rss_cfg)
 		return -EOPNOTSUPP;
 
-	if (hfunc == ETH_RSS_HASH_NO_CHANGE)
+	if (rxfh->hfunc == ETH_RSS_HASH_NO_CHANGE)
 		algo = fp->hash_algo;
-	else if (hfunc == ETH_RSS_HASH_CRC32)
+	else if (rxfh->hfunc == ETH_RSS_HASH_CRC32)
 		algo = FUN_ETH_RSS_ALG_CRC32;
-	else if (hfunc == ETH_RSS_HASH_TOP)
+	else if (rxfh->hfunc == ETH_RSS_HASH_TOP)
 		algo = FUN_ETH_RSS_ALG_TOEPLITZ;
 	else
 		return -EINVAL;
@@ -1031,10 +1031,10 @@ static int fun_set_rxfh(struct net_device *netdev, const u32 *indir,
 	}
 
 	fp->hash_algo = algo;
-	if (key)
-		memcpy(fp->rss_key, key, sizeof(fp->rss_key));
-	if (indir)
-		memcpy(fp->indir_table, indir,
+	if (rxfh->key)
+		memcpy(fp->rss_key, rxfh->key, sizeof(fp->rss_key));
+	if (rxfh->indir)
+		memcpy(fp->indir_table, rxfh->indir,
 		       sizeof(u32) * fp->indir_table_nentries);
 	return 0;
 }
diff --git a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
index fe40cceb0f79..a5bb306b2cf1 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
@@ -1186,7 +1186,7 @@ hns_get_rss_indir_size(struct net_device *netdev)
 }
 
 static int
-hns_get_rss(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
+hns_get_rss(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 {
 	struct hns_nic_priv *priv = netdev_priv(netdev);
 	struct hnae_ae_ops *ops;
@@ -1199,15 +1199,16 @@ hns_get_rss(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
 
 	ops = priv->ae_handle->dev->ops;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
-	return ops->get_rss(priv->ae_handle, indir, key, hfunc);
+	return ops->get_rss(priv->ae_handle,
+			    rxfh->indir, rxfh->key, &rxfh->hfunc);
 }
 
 static int
-hns_set_rss(struct net_device *netdev, const u32 *indir, const u8 *key,
-	    const u8 hfunc)
+hns_set_rss(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
+	    struct netlink_ext_ack *extack)
 {
 	struct hns_nic_priv *priv = netdev_priv(netdev);
 	struct hnae_ae_ops *ops;
@@ -1220,12 +1221,14 @@ hns_set_rss(struct net_device *netdev, const u32 *indir, const u8 *key,
 
 	ops = priv->ae_handle->dev->ops;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) {
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP) {
 		netdev_err(netdev, "Invalid hfunc!\n");
 		return -EOPNOTSUPP;
 	}
 
-	return ops->set_rss(priv->ae_handle, indir, key, hfunc);
+	return ops->set_rss(priv->ae_handle,
+			    rxfh->indir, rxfh->key, rxfh->hfunc);
 }
 
 static int hns_get_rxnfc(struct net_device *netdev,
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
index 682239f33082..999a0ee162a6 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
@@ -941,19 +941,21 @@ static u32 hns3_get_rss_indir_size(struct net_device *netdev)
 	return ae_dev->dev_specs.rss_ind_tbl_size;
 }
 
-static int hns3_get_rss(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int hns3_get_rss(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh)
 {
 	struct hnae3_handle *h = hns3_get_handle(netdev);
 
 	if (!h->ae_algo->ops->get_rss)
 		return -EOPNOTSUPP;
 
-	return h->ae_algo->ops->get_rss(h, indir, key, hfunc);
+	return h->ae_algo->ops->get_rss(h, rxfh->indir, rxfh->key,
+					&rxfh->hfunc);
 }
 
-static int hns3_set_rss(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int hns3_set_rss(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh,
+			struct netlink_ext_ack *extack)
 {
 	struct hnae3_handle *h = hns3_get_handle(netdev);
 	struct hnae3_ae_dev *ae_dev = pci_get_drvdata(h->pdev);
@@ -962,19 +964,22 @@ static int hns3_set_rss(struct net_device *netdev, const u32 *indir,
 		return -EOPNOTSUPP;
 
 	if ((ae_dev->dev_version < HNAE3_DEVICE_VERSION_V2 &&
-	     hfunc != ETH_RSS_HASH_TOP) || (hfunc != ETH_RSS_HASH_NO_CHANGE &&
-	     hfunc != ETH_RSS_HASH_TOP && hfunc != ETH_RSS_HASH_XOR)) {
+	     rxfh->hfunc != ETH_RSS_HASH_TOP) ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP &&
+	     rxfh->hfunc != ETH_RSS_HASH_XOR)) {
 		netdev_err(netdev, "hash func not supported\n");
 		return -EOPNOTSUPP;
 	}
 
-	if (!indir) {
+	if (!rxfh->indir) {
 		netdev_err(netdev,
 			   "set rss failed for indir is empty\n");
 		return -EOPNOTSUPP;
 	}
 
-	return h->ae_algo->ops->set_rss(h, indir, key, hfunc);
+	return h->ae_algo->ops->set_rss(h, rxfh->indir, rxfh->key,
+					rxfh->hfunc);
 }
 
 static int hns3_get_rxnfc(struct net_device *netdev,
diff --git a/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c b/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c
index f4b680286911..0304f03d4093 100644
--- a/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c
+++ b/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c
@@ -1137,7 +1137,7 @@ static int hinic_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 }
 
 static int hinic_get_rxfh(struct net_device *netdev,
-			  u32 *indir, u8 *key, u8 *hfunc)
+			  struct ethtool_rxfh_param *rxfh)
 {
 	struct hinic_dev *nic_dev = netdev_priv(netdev);
 	u8 hash_engine_type = 0;
@@ -1146,32 +1146,33 @@ static int hinic_get_rxfh(struct net_device *netdev,
 	if (!(nic_dev->flags & HINIC_RSS_ENABLE))
 		return -EOPNOTSUPP;
 
-	if (hfunc) {
-		err = hinic_rss_get_hash_engine(nic_dev,
-						nic_dev->rss_tmpl_idx,
-						&hash_engine_type);
-		if (err)
-			return -EFAULT;
+	err = hinic_rss_get_hash_engine(nic_dev,
+					nic_dev->rss_tmpl_idx,
+					&hash_engine_type);
+	if (err)
+		return -EFAULT;
 
-		*hfunc = hash_engine_type ? ETH_RSS_HASH_TOP : ETH_RSS_HASH_XOR;
-	}
+	rxfh->hfunc = hash_engine_type ? ETH_RSS_HASH_TOP : ETH_RSS_HASH_XOR;
 
-	if (indir) {
+	if (rxfh->indir) {
 		err = hinic_rss_get_indir_tbl(nic_dev,
-					      nic_dev->rss_tmpl_idx, indir);
+					      nic_dev->rss_tmpl_idx,
+					      rxfh->indir);
 		if (err)
 			return -EFAULT;
 	}
 
-	if (key)
+	if (rxfh->key)
 		err = hinic_rss_get_template_tbl(nic_dev,
-						 nic_dev->rss_tmpl_idx, key);
+						 nic_dev->rss_tmpl_idx,
+						 rxfh->key);
 
 	return err;
 }
 
-static int hinic_set_rxfh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int hinic_set_rxfh(struct net_device *netdev,
+			  struct ethtool_rxfh_param *rxfh,
+			  struct netlink_ext_ack *extack)
 {
 	struct hinic_dev *nic_dev = netdev_priv(netdev);
 	int err = 0;
@@ -1179,11 +1180,12 @@ static int hinic_set_rxfh(struct net_device *netdev, const u32 *indir,
 	if (!(nic_dev->flags & HINIC_RSS_ENABLE))
 		return -EOPNOTSUPP;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE) {
-		if (hfunc != ETH_RSS_HASH_TOP && hfunc != ETH_RSS_HASH_XOR)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE) {
+		if (rxfh->hfunc != ETH_RSS_HASH_TOP &&
+		    rxfh->hfunc != ETH_RSS_HASH_XOR)
 			return -EOPNOTSUPP;
 
-		nic_dev->rss_hash_engine = (hfunc == ETH_RSS_HASH_XOR) ?
+		nic_dev->rss_hash_engine = (rxfh->hfunc == ETH_RSS_HASH_XOR) ?
 			HINIC_RSS_HASH_ENGINE_TYPE_XOR :
 			HINIC_RSS_HASH_ENGINE_TYPE_TOEP;
 		err = hinic_rss_set_hash_engine
@@ -1193,7 +1195,7 @@ static int hinic_set_rxfh(struct net_device *netdev, const u32 *indir,
 			return -EFAULT;
 	}
 
-	err = __set_rss_rxfh(netdev, indir, key);
+	err = __set_rss_rxfh(netdev, rxfh->indir, rxfh->key);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 13a05604dcc0..1bc5b6c0b897 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -1057,16 +1057,16 @@ static u32 fm10k_get_rssrk_size(struct net_device __always_unused *netdev)
 	return FM10K_RSSRK_SIZE * FM10K_RSSRK_ENTRIES_PER_REG;
 }
 
-static int fm10k_get_rssh(struct net_device *netdev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int fm10k_get_rssh(struct net_device *netdev,
+			  struct ethtool_rxfh_param *rxfh)
 {
 	struct fm10k_intfc *interface = netdev_priv(netdev);
+	u8 *key = rxfh->key;
 	int i, err;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
-	err = fm10k_get_reta(netdev, indir);
+	err = fm10k_get_reta(netdev, rxfh->indir);
 	if (err || !key)
 		return err;
 
@@ -1076,23 +1076,25 @@ static int fm10k_get_rssh(struct net_device *netdev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int fm10k_set_rssh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int fm10k_set_rssh(struct net_device *netdev,
+			  struct ethtool_rxfh_param *rxfh,
+			  struct netlink_ext_ack *extack)
 {
 	struct fm10k_intfc *interface = netdev_priv(netdev);
 	struct fm10k_hw *hw = &interface->hw;
 	int i, err;
 
 	/* We do not allow change in unsupported parameters */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	err = fm10k_set_reta(netdev, indir);
-	if (err || !key)
+	err = fm10k_set_reta(netdev, rxfh->indir);
+	if (err || !rxfh->key)
 		return err;
 
-	for (i = 0; i < FM10K_RSSRK_SIZE; i++, key += 4) {
-		u32 rssrk = le32_to_cpu(*(__le32 *)key);
+	for (i = 0; i < FM10K_RSSRK_SIZE; i++, rxfh->key += 4) {
+		u32 rssrk = le32_to_cpu(*(__le32 *)rxfh->key);
 
 		if (interface->rssrk[i] == rssrk)
 			continue;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index a0b10230268d..53820d63e6fa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5120,15 +5120,13 @@ static u32 i40e_get_rxfh_indir_size(struct net_device *netdev)
 /**
  * i40e_get_rxfh - get the rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function
+ * @rxfh: pointer to param struct (indir, key, hfunc)
  *
  * Reads the indirection table directly from the hardware. Returns 0 on
  * success.
  **/
-static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int i40e_get_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
@@ -5136,13 +5134,12 @@ static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	int ret;
 	u16 i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
-	seed = key;
+	seed = rxfh->key;
 	lut = kzalloc(I40E_HLUT_ARRAY_SIZE, GFP_KERNEL);
 	if (!lut)
 		return -ENOMEM;
@@ -5150,7 +5147,7 @@ static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	if (ret)
 		goto out;
 	for (i = 0; i < I40E_HLUT_ARRAY_SIZE; i++)
-		indir[i] = (u32)(lut[i]);
+		rxfh->indir[i] = (u32)(lut[i]);
 
 out:
 	kfree(lut);
@@ -5161,15 +5158,15 @@ static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 /**
  * i40e_set_rxfh - set the rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function to use
+ * @rxfh: pointer to param struct (indir, key, hfunc)
+ * @extack: extended ACK from the Netlink message
  *
  * Returns -EINVAL if the table specifies an invalid queue id, otherwise
  * returns 0 after programming the table.
  **/
-static int i40e_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int i40e_set_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
@@ -5177,17 +5174,18 @@ static int i40e_set_rxfh(struct net_device *netdev, const u32 *indir,
 	u8 *seed = NULL;
 	u16 i;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (key) {
+	if (rxfh->key) {
 		if (!vsi->rss_hkey_user) {
 			vsi->rss_hkey_user = kzalloc(I40E_HKEY_ARRAY_SIZE,
 						     GFP_KERNEL);
 			if (!vsi->rss_hkey_user)
 				return -ENOMEM;
 		}
-		memcpy(vsi->rss_hkey_user, key, I40E_HKEY_ARRAY_SIZE);
+		memcpy(vsi->rss_hkey_user, rxfh->key, I40E_HKEY_ARRAY_SIZE);
 		seed = vsi->rss_hkey_user;
 	}
 	if (!vsi->rss_lut_user) {
@@ -5197,9 +5195,9 @@ static int i40e_set_rxfh(struct net_device *netdev, const u32 *indir,
 	}
 
 	/* Each 32 bits pointed by 'indir' is stored with a lut entry */
-	if (indir)
+	if (rxfh->indir)
 		for (i = 0; i < I40E_HLUT_ARRAY_SIZE; i++)
-			vsi->rss_lut_user[i] = (u8)(indir[i]);
+			vsi->rss_lut_user[i] = (u8)(rxfh->indir[i]);
 	else
 		i40e_fill_rss_lut(pf, vsi->rss_lut_user, I40E_HLUT_ARRAY_SIZE,
 				  vsi->rss_size);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 631c7cfdc814..c376a489e4c2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1894,27 +1894,24 @@ static u32 iavf_get_rxfh_indir_size(struct net_device *netdev)
 /**
  * iavf_get_rxfh - get the rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function in use
+ * @rxfh: pointer to param struct (indir, key, hfunc)
  *
  * Reads the indirection table directly from the hardware. Always returns 0.
  **/
-static int iavf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int iavf_get_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u16 i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (key)
-		memcpy(key, adapter->rss_key, adapter->rss_key_size);
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->key)
+		memcpy(rxfh->key, adapter->rss_key, adapter->rss_key_size);
 
-	if (indir)
+	if (rxfh->indir)
 		/* Each 32 bits pointed by 'indir' is stored with a lut entry */
 		for (i = 0; i < adapter->rss_lut_size; i++)
-			indir[i] = (u32)adapter->rss_lut[i];
+			rxfh->indir[i] = (u32)adapter->rss_lut[i];
 
 	return 0;
 }
@@ -1922,33 +1919,34 @@ static int iavf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 /**
  * iavf_set_rxfh - set the rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function to use
+ * @rxfh: pointer to param struct (indir, key, hfunc)
+ * @extack: extended ACK from the Netlink message
  *
  * Returns -EINVAL if the table specifies an invalid queue id, otherwise
  * returns 0 after programming the table.
  **/
-static int iavf_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int iavf_set_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u16 i;
 
 	/* Only support toeplitz hash function */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (!key && !indir)
+	if (!rxfh->key && !rxfh->indir)
 		return 0;
 
-	if (key)
-		memcpy(adapter->rss_key, key, adapter->rss_key_size);
+	if (rxfh->key)
+		memcpy(adapter->rss_key, rxfh->key, adapter->rss_key_size);
 
-	if (indir) {
+	if (rxfh->indir) {
 		/* Each 32 bits pointed by 'indir' is stored with a lut entry */
 		for (i = 0; i < adapter->rss_lut_size; i++)
-			adapter->rss_lut[i] = (u8)(indir[i]);
+			adapter->rss_lut[i] = (u8)(rxfh->indir[i]);
 	}
 
 	return iavf_config_rss(adapter);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 98c9317581e0..70cbd8092aea 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3196,8 +3196,8 @@ static u32 ice_get_rxfh_indir_size(struct net_device *netdev)
 }
 
 static int
-ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
-		     u8 *key, u8 *hfunc, u32 rss_context)
+ice_get_rxfh_context(struct net_device *netdev,
+		     struct ethtool_rxfh_param *rxfh, u32 rss_context)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
@@ -3230,17 +3230,16 @@ ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
 		vsi = vsi->tc_map_vsi[rss_context];
 	}
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
 	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
 	if (!lut)
 		return -ENOMEM;
 
-	err = ice_get_rss_key(vsi, key);
+	err = ice_get_rss_key(vsi, rxfh->key);
 	if (err)
 		goto out;
 
@@ -3250,12 +3249,12 @@ ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
 
 	if (ice_is_adq_active(pf)) {
 		for (i = 0; i < vsi->rss_table_size; i++)
-			indir[i] = offset + lut[i] % qcount;
+			rxfh->indir[i] = offset + lut[i] % qcount;
 		goto out;
 	}
 
 	for (i = 0; i < vsi->rss_table_size; i++)
-		indir[i] = lut[i];
+		rxfh->indir[i] = lut[i];
 
 out:
 	kfree(lut);
@@ -3265,31 +3264,28 @@ ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
 /**
  * ice_get_rxfh - get the Rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function
+ * @rxfh: pointer to param struct (indir, key, hfunc)
  *
  * Reads the indirection table directly from the hardware.
  */
 static int
-ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
+ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 {
-	return ice_get_rxfh_context(netdev, indir, key, hfunc, 0);
+	return ice_get_rxfh_context(netdev, rxfh, 0);
 }
 
 /**
  * ice_set_rxfh - set the Rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function
+ * @rxfh: pointer to param struct (indir, key, hfunc)
+ * @extack: extended ACK from the Netlink message
  *
  * Returns -EINVAL if the table specifies an invalid queue ID, otherwise
  * returns 0 after programming the table.
  */
 static int
-ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
-	     const u8 hfunc)
+ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
+	     struct netlink_ext_ack *extack)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
@@ -3298,7 +3294,8 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 	int err;
 
 	dev = ice_pf_to_dev(pf);
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
@@ -3312,7 +3309,7 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 		return -EOPNOTSUPP;
 	}
 
-	if (key) {
+	if (rxfh->key) {
 		if (!vsi->rss_hkey_user) {
 			vsi->rss_hkey_user =
 				devm_kzalloc(dev, ICE_VSIQF_HKEY_ARRAY_SIZE,
@@ -3320,7 +3317,8 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 			if (!vsi->rss_hkey_user)
 				return -ENOMEM;
 		}
-		memcpy(vsi->rss_hkey_user, key, ICE_VSIQF_HKEY_ARRAY_SIZE);
+		memcpy(vsi->rss_hkey_user, rxfh->key,
+		       ICE_VSIQF_HKEY_ARRAY_SIZE);
 
 		err = ice_set_rss_key(vsi, vsi->rss_hkey_user);
 		if (err)
@@ -3335,11 +3333,11 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 	}
 
 	/* Each 32 bits pointed by 'indir' is stored with a lut entry */
-	if (indir) {
+	if (rxfh->indir) {
 		int i;
 
 		for (i = 0; i < vsi->rss_table_size; i++)
-			vsi->rss_lut_user[i] = (u8)(indir[i]);
+			vsi->rss_lut_user[i] = (u8)(rxfh->indir[i]);
 	} else {
 		ice_fill_rss_lut(vsi->rss_lut_user, vsi->rss_table_size,
 				 vsi->rss_size);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index bf58989a573e..f57fb125a738 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -75,14 +75,12 @@ static u32 idpf_get_rxfh_indir_size(struct net_device *netdev)
 /**
  * idpf_get_rxfh - get the rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function in use
+ * @rxfh: pointer to param struct (indir, key, hfunc)
  *
  * Reads the indirection table directly from the hardware. Always returns 0.
  */
-static int idpf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int idpf_get_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_rss_data *rss_data;
@@ -103,15 +101,14 @@ static int idpf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
-	if (key)
-		memcpy(key, rss_data->rss_key, rss_data->rss_key_size);
+	if (rxfh->key)
+		memcpy(rxfh->key, rss_data->rss_key, rss_data->rss_key_size);
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < rss_data->rss_lut_size; i++)
-			indir[i] = rss_data->rss_lut[i];
+			rxfh->indir[i] = rss_data->rss_lut[i];
 	}
 
 unlock_mutex:
@@ -123,15 +120,15 @@ static int idpf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 /**
  * idpf_set_rxfh - set the rx flow hash indirection table
  * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function to use
+ * @rxfh: pointer to param struct (indir, key, hfunc)
+ * @extack: extended ACK from the Netlink message
  *
  * Returns -EINVAL if the table specifies an invalid queue id, otherwise
  * returns 0 after programming the table.
  */
-static int idpf_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int idpf_set_rxfh(struct net_device *netdev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_rss_data *rss_data;
@@ -154,17 +151,18 @@ static int idpf_set_rxfh(struct net_device *netdev, const u32 *indir,
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) {
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP) {
 		err = -EOPNOTSUPP;
 		goto unlock_mutex;
 	}
 
-	if (key)
-		memcpy(rss_data->rss_key, key, rss_data->rss_key_size);
+	if (rxfh->key)
+		memcpy(rss_data->rss_key, rxfh->key, rss_data->rss_key_size);
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (lut = 0; lut < rss_data->rss_lut_size; lut++)
-			rss_data->rss_lut[lut] = indir[lut];
+			rss_data->rss_lut[lut] = rxfh->indir[lut];
 	}
 
 	err = idpf_config_rss(vport);
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 89dac7b215e5..d868a70732f4 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3280,18 +3280,17 @@ static u32 igb_get_rxfh_indir_size(struct net_device *netdev)
 	return IGB_RETA_SIZE;
 }
 
-static int igb_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int igb_get_rxfh(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (!indir)
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (!rxfh->indir)
 		return 0;
 	for (i = 0; i < IGB_RETA_SIZE; i++)
-		indir[i] = adapter->rss_indir_tbl[i];
+		rxfh->indir[i] = adapter->rss_indir_tbl[i];
 
 	return 0;
 }
@@ -3331,8 +3330,9 @@ void igb_write_rss_indir_tbl(struct igb_adapter *adapter)
 	}
 }
 
-static int igb_set_rxfh(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int igb_set_rxfh(struct net_device *netdev,
+			struct ethtool_rxfh_param *rxfh,
+			struct netlink_ext_ack *extack)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
@@ -3340,10 +3340,11 @@ static int igb_set_rxfh(struct net_device *netdev, const u32 *indir,
 	u32 num_queues;
 
 	/* We do not allow change in unsupported parameters */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
 	num_queues = adapter->rss_queues;
@@ -3360,12 +3361,12 @@ static int igb_set_rxfh(struct net_device *netdev, const u32 *indir,
 
 	/* Verify user input. */
 	for (i = 0; i < IGB_RETA_SIZE; i++)
-		if (indir[i] >= num_queues)
+		if (rxfh->indir[i] >= num_queues)
 			return -EINVAL;
 
 
 	for (i = 0; i < IGB_RETA_SIZE; i++)
-		adapter->rss_indir_tbl[i] = indir[i];
+		adapter->rss_indir_tbl[i] = rxfh->indir[i];
 
 	igb_write_rss_indir_tbl(adapter);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 2ed92bf34059..684f6f2a0572 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1426,45 +1426,46 @@ static u32 igc_ethtool_get_rxfh_indir_size(struct net_device *netdev)
 	return IGC_RETA_SIZE;
 }
 
-static int igc_ethtool_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-				u8 *hfunc)
+static int igc_ethtool_get_rxfh(struct net_device *netdev,
+				struct ethtool_rxfh_param *rxfh)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (!indir)
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (!rxfh->indir)
 		return 0;
 	for (i = 0; i < IGC_RETA_SIZE; i++)
-		indir[i] = adapter->rss_indir_tbl[i];
+		rxfh->indir[i] = adapter->rss_indir_tbl[i];
 
 	return 0;
 }
 
-static int igc_ethtool_set_rxfh(struct net_device *netdev, const u32 *indir,
-				const u8 *key, const u8 hfunc)
+static int igc_ethtool_set_rxfh(struct net_device *netdev,
+				struct ethtool_rxfh_param *rxfh,
+				struct netlink_ext_ack *extack)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	u32 num_queues;
 	int i;
 
 	/* We do not allow change in unsupported parameters */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
 	num_queues = adapter->rss_queues;
 
 	/* Verify user input. */
 	for (i = 0; i < IGC_RETA_SIZE; i++)
-		if (indir[i] >= num_queues)
+		if (rxfh->indir[i] >= num_queues)
 			return -EINVAL;
 
 	for (i = 0; i < IGC_RETA_SIZE; i++)
-		adapter->rss_indir_tbl[i] = indir[i];
+		adapter->rss_indir_tbl[i] = rxfh->indir[i];
 
 	igc_write_rss_indir_tbl(adapter);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index dd722b0381e0..af55f19d5bba 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3107,35 +3107,37 @@ static void ixgbe_get_reta(struct ixgbe_adapter *adapter, u32 *indir)
 		indir[i] = adapter->rss_indir_tbl[i] & rss_m;
 }
 
-static int ixgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int ixgbe_get_rxfh(struct net_device *netdev,
+			  struct ethtool_rxfh_param *rxfh)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
-	if (indir)
-		ixgbe_get_reta(adapter, indir);
+	if (rxfh->indir)
+		ixgbe_get_reta(adapter, rxfh->indir);
 
-	if (key)
-		memcpy(key, adapter->rss_key, ixgbe_get_rxfh_key_size(netdev));
+	if (rxfh->key)
+		memcpy(rxfh->key, adapter->rss_key,
+		       ixgbe_get_rxfh_key_size(netdev));
 
 	return 0;
 }
 
-static int ixgbe_set_rxfh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int ixgbe_set_rxfh(struct net_device *netdev,
+			  struct ethtool_rxfh_param *rxfh,
+			  struct netlink_ext_ack *extack)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	int i;
 	u32 reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	/* Fill out the redirection table */
-	if (indir) {
+	if (rxfh->indir) {
 		int max_queues = min_t(int, adapter->num_rx_queues,
 				       ixgbe_rss_indir_tbl_max(adapter));
 
@@ -3146,18 +3148,19 @@ static int ixgbe_set_rxfh(struct net_device *netdev, const u32 *indir,
 
 		/* Verify user input. */
 		for (i = 0; i < reta_entries; i++)
-			if (indir[i] >= max_queues)
+			if (rxfh->indir[i] >= max_queues)
 				return -EINVAL;
 
 		for (i = 0; i < reta_entries; i++)
-			adapter->rss_indir_tbl[i] = indir[i];
+			adapter->rss_indir_tbl[i] = rxfh->indir[i];
 
 		ixgbe_store_reta(adapter);
 	}
 
 	/* Fill out the rss hash key */
-	if (key) {
-		memcpy(adapter->rss_key, key, ixgbe_get_rxfh_key_size(netdev));
+	if (rxfh->key) {
+		memcpy(adapter->rss_key, rxfh->key,
+		       ixgbe_get_rxfh_key_size(netdev));
 		ixgbe_store_key(adapter);
 	}
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index 296915414a7c..7ac53171b041 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -897,40 +897,41 @@ static u32 ixgbevf_get_rxfh_key_size(struct net_device *netdev)
 	return IXGBEVF_RSS_HASH_KEY_SIZE;
 }
 
-static int ixgbevf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			    u8 *hfunc)
+static int ixgbevf_get_rxfh(struct net_device *netdev,
+			    struct ethtool_rxfh_param *rxfh)
 {
 	struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 	int err = 0;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (adapter->hw.mac.type >= ixgbe_mac_X550_vf) {
-		if (key)
-			memcpy(key, adapter->rss_key,
+		if (rxfh->key)
+			memcpy(rxfh->key, adapter->rss_key,
 			       ixgbevf_get_rxfh_key_size(netdev));
 
-		if (indir) {
+		if (rxfh->indir) {
 			int i;
 
 			for (i = 0; i < IXGBEVF_X550_VFRETA_SIZE; i++)
-				indir[i] = adapter->rss_indir_tbl[i];
+				rxfh->indir[i] = adapter->rss_indir_tbl[i];
 		}
 	} else {
 		/* If neither indirection table nor hash key was requested
 		 *  - just return a success avoiding taking any locks.
 		 */
-		if (!indir && !key)
+		if (!rxfh->indir && !rxfh->key)
 			return 0;
 
 		spin_lock_bh(&adapter->mbx_lock);
-		if (indir)
-			err = ixgbevf_get_reta_locked(&adapter->hw, indir,
+		if (rxfh->indir)
+			err = ixgbevf_get_reta_locked(&adapter->hw,
+						      rxfh->indir,
 						      adapter->num_rx_queues);
 
-		if (!err && key)
-			err = ixgbevf_get_rss_key_locked(&adapter->hw, key);
+		if (!err && rxfh->key)
+			err = ixgbevf_get_rss_key_locked(&adapter->hw,
+							 rxfh->key);
 
 		spin_unlock_bh(&adapter->mbx_lock);
 	}
diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 29aac327574d..a641b3534ca3 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -5030,8 +5030,9 @@ static int  mvneta_config_rss(struct mvneta_port *pp)
 	return 0;
 }
 
-static int mvneta_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
-				   const u8 *key, const u8 hfunc)
+static int mvneta_ethtool_set_rxfh(struct net_device *dev,
+				   struct ethtool_rxfh_param *rxfh,
+				   struct netlink_ext_ack *extack)
 {
 	struct mvneta_port *pp = netdev_priv(dev);
 
@@ -5042,20 +5043,21 @@ static int mvneta_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
 	/* We require at least one supported parameter to be changed
 	 * and no change in any of the unsupported parameters
 	 */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
-	memcpy(pp->indir, indir, MVNETA_RSS_LU_TABLE_SIZE);
+	memcpy(pp->indir, rxfh->indir, MVNETA_RSS_LU_TABLE_SIZE);
 
 	return mvneta_config_rss(pp);
 }
 
-static int mvneta_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-				   u8 *hfunc)
+static int mvneta_ethtool_get_rxfh(struct net_device *dev,
+				   struct ethtool_rxfh_param *rxfh)
 {
 	struct mvneta_port *pp = netdev_priv(dev);
 
@@ -5063,13 +5065,12 @@ static int mvneta_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	if (pp->neta_armada3700)
 		return -EOPNOTSUPP;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
-	memcpy(indir, pp->indir, MVNETA_RSS_LU_TABLE_SIZE);
+	memcpy(rxfh->indir, pp->indir, MVNETA_RSS_LU_TABLE_SIZE);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index 93137606869e..ceef48ddd26e 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -5634,8 +5634,8 @@ static u32 mvpp2_ethtool_get_rxfh_indir_size(struct net_device *dev)
 	return mvpp22_rss_is_supported(port) ? MVPP22_RSS_TABLE_ENTRIES : 0;
 }
 
-static int mvpp2_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-				  u8 *hfunc)
+static int mvpp2_ethtool_get_rxfh(struct net_device *dev,
+				  struct ethtool_rxfh_param *rxfh)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
 	int ret = 0;
@@ -5643,17 +5643,17 @@ static int mvpp2_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	if (!mvpp22_rss_is_supported(port))
 		return -EOPNOTSUPP;
 
-	if (indir)
-		ret = mvpp22_port_rss_ctx_indir_get(port, 0, indir);
+	if (rxfh->indir)
+		ret = mvpp22_port_rss_ctx_indir_get(port, 0, rxfh->indir);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_CRC32;
+	rxfh->hfunc = ETH_RSS_HASH_CRC32;
 
 	return ret;
 }
 
-static int mvpp2_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
-				  const u8 *key, const u8 hfunc)
+static int mvpp2_ethtool_set_rxfh(struct net_device *dev,
+				  struct ethtool_rxfh_param *rxfh,
+				  struct netlink_ext_ack *extack)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
 	int ret = 0;
@@ -5661,20 +5661,22 @@ static int mvpp2_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
 	if (!mvpp22_rss_is_supported(port))
 		return -EOPNOTSUPP;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_CRC32)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_CRC32)
 		return -EOPNOTSUPP;
 
-	if (key)
+	if (rxfh->key)
 		return -EOPNOTSUPP;
 
-	if (indir)
-		ret = mvpp22_port_rss_ctx_indir_set(port, 0, indir);
+	if (rxfh->indir)
+		ret = mvpp22_port_rss_ctx_indir_set(port, 0, rxfh->indir);
 
 	return ret;
 }
 
-static int mvpp2_ethtool_get_rxfh_context(struct net_device *dev, u32 *indir,
-					  u8 *key, u8 *hfunc, u32 rss_context)
+static int mvpp2_ethtool_get_rxfh_context(struct net_device *dev,
+					  struct ethtool_rxfh_param *rxfh,
+					  u32 rss_context)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
 	int ret = 0;
@@ -5684,19 +5686,18 @@ static int mvpp2_ethtool_get_rxfh_context(struct net_device *dev, u32 *indir,
 	if (rss_context >= MVPP22_N_RSS_TABLES)
 		return -EINVAL;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_CRC32;
+	rxfh->hfunc = ETH_RSS_HASH_CRC32;
 
-	if (indir)
-		ret = mvpp22_port_rss_ctx_indir_get(port, rss_context, indir);
+	if (rxfh->indir)
+		ret = mvpp22_port_rss_ctx_indir_get(port, rss_context,
+						    rxfh->indir);
 
 	return ret;
 }
 
 static int mvpp2_ethtool_set_rxfh_context(struct net_device *dev,
-					  const u32 *indir, const u8 *key,
-					  const u8 hfunc, u32 *rss_context,
-					  bool delete)
+					  struct ethtool_rxfh_param *rxfh,
+					  u32 *rss_context, bool delete)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
 	int ret;
@@ -5704,10 +5705,11 @@ static int mvpp2_ethtool_set_rxfh_context(struct net_device *dev,
 	if (!mvpp22_rss_is_supported(port))
 		return -EOPNOTSUPP;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_CRC32)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_CRC32)
 		return -EOPNOTSUPP;
 
-	if (key)
+	if (rxfh->key)
 		return -EOPNOTSUPP;
 
 	if (delete)
@@ -5719,7 +5721,7 @@ static int mvpp2_ethtool_set_rxfh_context(struct net_device *dev,
 			return ret;
 	}
 
-	return mvpp22_port_rss_ctx_indir_set(port, *rss_context, indir);
+	return mvpp22_port_rss_ctx_indir_set(port, *rss_context, rxfh->indir);
 }
 /* Device ops */
 
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
index 53f6258a973c..a2c182d7bfc4 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
@@ -836,8 +836,8 @@ static int otx2_rss_ctx_create(struct otx2_nic *pfvf,
 }
 
 /* RSS context configuration */
-static int otx2_set_rxfh_context(struct net_device *dev, const u32 *indir,
-				 const u8 *hkey, const u8 hfunc,
+static int otx2_set_rxfh_context(struct net_device *dev,
+				 struct ethtool_rxfh_param *rxfh,
 				 u32 *rss_context, bool delete)
 {
 	struct otx2_nic *pfvf = netdev_priv(dev);
@@ -845,7 +845,8 @@ static int otx2_set_rxfh_context(struct net_device *dev, const u32 *indir,
 	struct otx2_rss_info *rss;
 	int ret, idx;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (*rss_context != ETH_RXFH_CONTEXT_ALLOC &&
@@ -859,8 +860,8 @@ static int otx2_set_rxfh_context(struct net_device *dev, const u32 *indir,
 		return -EIO;
 	}
 
-	if (hkey) {
-		memcpy(rss->key, hkey, sizeof(rss->key));
+	if (rxfh->key) {
+		memcpy(rss->key, rxfh->key, sizeof(rss->key));
 		otx2_set_rss_key(pfvf);
 	}
 	if (delete)
@@ -871,28 +872,29 @@ static int otx2_set_rxfh_context(struct net_device *dev, const u32 *indir,
 		if (ret)
 			return ret;
 	}
-	if (indir) {
+	if (rxfh->indir) {
 		rss_ctx = rss->rss_ctx[*rss_context];
 		for (idx = 0; idx < rss->rss_size; idx++)
-			rss_ctx->ind_tbl[idx] = indir[idx];
+			rss_ctx->ind_tbl[idx] = rxfh->indir[idx];
 	}
 	otx2_set_rss_table(pfvf, *rss_context);
 
 	return 0;
 }
 
-static int otx2_get_rxfh_context(struct net_device *dev, u32 *indir,
-				 u8 *hkey, u8 *hfunc, u32 rss_context)
+static int otx2_get_rxfh_context(struct net_device *dev,
+				 struct ethtool_rxfh_param *rxfh,
+				 u32 rss_context)
 {
 	struct otx2_nic *pfvf = netdev_priv(dev);
 	struct otx2_rss_ctx *rss_ctx;
 	struct otx2_rss_info *rss;
+	u32 *indir = rxfh->indir;
 	int idx, rx_queues;
 
 	rss = &pfvf->hw.rss_info;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (!indir)
 		return 0;
@@ -914,28 +916,29 @@ static int otx2_get_rxfh_context(struct net_device *dev, u32 *indir,
 		for (idx = 0; idx < rss->rss_size; idx++)
 			indir[idx] = rss_ctx->ind_tbl[idx];
 	}
-	if (hkey)
-		memcpy(hkey, rss->key, sizeof(rss->key));
+	if (rxfh->key)
+		memcpy(rxfh->key, rss->key, sizeof(rss->key));
 
 	return 0;
 }
 
 /* Get RSS configuration */
-static int otx2_get_rxfh(struct net_device *dev, u32 *indir,
-			 u8 *hkey, u8 *hfunc)
+static int otx2_get_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh)
 {
-	return otx2_get_rxfh_context(dev, indir, hkey, hfunc,
+	return otx2_get_rxfh_context(dev, rxfh,
 				     DEFAULT_RSS_CONTEXT_GROUP);
 }
 
 /* Configure RSS table and hash key */
-static int otx2_set_rxfh(struct net_device *dev, const u32 *indir,
-			 const u8 *hkey, const u8 hfunc)
+static int otx2_set_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 
 	u32 rss_context = DEFAULT_RSS_CONTEXT_GROUP;
 
-	return otx2_set_rxfh_context(dev, indir, hkey, hfunc, &rss_context, 0);
+	return otx2_set_rxfh_context(dev, rxfh, &rss_context, 0);
 }
 
 static u32 otx2_get_msglevel(struct net_device *netdev)
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c
index 164a13272faa..619e1c3ef7f9 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c
@@ -1258,8 +1258,8 @@ static int mlx4_en_check_rxfh_func(struct net_device *dev, u8 hfunc)
 	return -EINVAL;
 }
 
-static int mlx4_en_get_rxfh(struct net_device *dev, u32 *ring_index, u8 *key,
-			    u8 *hfunc)
+static int mlx4_en_get_rxfh(struct net_device *dev,
+			    struct ethtool_rxfh_param *rxfh)
 {
 	struct mlx4_en_priv *priv = netdev_priv(dev);
 	u32 n = mlx4_en_get_rxfh_indir_size(dev);
@@ -1269,19 +1269,19 @@ static int mlx4_en_get_rxfh(struct net_device *dev, u32 *ring_index, u8 *key,
 	rss_rings = rounddown_pow_of_two(rss_rings);
 
 	for (i = 0; i < n; i++) {
-		if (!ring_index)
+		if (!rxfh->indir)
 			break;
-		ring_index[i] = i % rss_rings;
+		rxfh->indir[i] = i % rss_rings;
 	}
-	if (key)
-		memcpy(key, priv->rss_key, MLX4_EN_RSS_KEY_SIZE);
-	if (hfunc)
-		*hfunc = priv->rss_hash_fn;
+	if (rxfh->key)
+		memcpy(rxfh->key, priv->rss_key, MLX4_EN_RSS_KEY_SIZE);
+	rxfh->hfunc = priv->rss_hash_fn;
 	return 0;
 }
 
-static int mlx4_en_set_rxfh(struct net_device *dev, const u32 *ring_index,
-			    const u8 *key, const u8 hfunc)
+static int mlx4_en_set_rxfh(struct net_device *dev,
+			    struct ethtool_rxfh_param *rxfh,
+			    struct netlink_ext_ack *extack)
 {
 	struct mlx4_en_priv *priv = netdev_priv(dev);
 	u32 n = mlx4_en_get_rxfh_indir_size(dev);
@@ -1295,12 +1295,12 @@ static int mlx4_en_set_rxfh(struct net_device *dev, const u32 *ring_index,
 	 * between rings
 	 */
 	for (i = 0; i < n; i++) {
-		if (!ring_index)
+		if (!rxfh->indir)
 			break;
-		if (i > 0 && !ring_index[i] && !rss_rings)
+		if (i > 0 && !rxfh->indir[i] && !rss_rings)
 			rss_rings = i;
 
-		if (ring_index[i] != (i % (rss_rings ?: n)))
+		if (rxfh->indir[i] != (i % (rss_rings ?: n)))
 			return -EINVAL;
 	}
 
@@ -1311,8 +1311,8 @@ static int mlx4_en_set_rxfh(struct net_device *dev, const u32 *ring_index,
 	if (!is_power_of_2(rss_rings))
 		return -EINVAL;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE) {
-		err = mlx4_en_check_rxfh_func(dev, hfunc);
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE) {
+		err = mlx4_en_check_rxfh_func(dev, rxfh->hfunc);
 		if (err)
 			return err;
 	}
@@ -1323,12 +1323,12 @@ static int mlx4_en_set_rxfh(struct net_device *dev, const u32 *ring_index,
 		mlx4_en_stop_port(dev, 1);
 	}
 
-	if (ring_index)
+	if (rxfh->indir)
 		priv->prof->rss_rings = rss_rings;
-	if (key)
-		memcpy(priv->rss_key, key, MLX4_EN_RSS_KEY_SIZE);
-	if (hfunc !=  ETH_RSS_HASH_NO_CHANGE)
-		priv->rss_hash_fn = hfunc;
+	if (rxfh->key)
+		memcpy(priv->rss_key, rxfh->key, MLX4_EN_RSS_KEY_SIZE);
+	if (rxfh->hfunc !=  ETH_RSS_HASH_NO_CHANGE)
+		priv->rss_hash_fn = rxfh->hfunc;
 
 	if (port_up) {
 		err = mlx4_en_start_port(dev);
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
index 43f027bf2da3..2cb47268bac6 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -1175,9 +1175,9 @@ int mlx5e_ethtool_get_link_ksettings(struct mlx5e_priv *priv,
 				     struct ethtool_link_ksettings *link_ksettings);
 int mlx5e_ethtool_set_link_ksettings(struct mlx5e_priv *priv,
 				     const struct ethtool_link_ksettings *link_ksettings);
-int mlx5e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc);
-int mlx5e_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key,
-		   const u8 hfunc);
+int mlx5e_get_rxfh(struct net_device *dev, struct ethtool_rxfh_param *rxfh);
+int mlx5e_set_rxfh(struct net_device *dev, struct ethtool_rxfh_param *rxfh,
+		   struct netlink_ext_ack *extack);
 u32 mlx5e_ethtool_get_rxfh_key_size(struct mlx5e_priv *priv);
 u32 mlx5e_ethtool_get_rxfh_indir_size(struct mlx5e_priv *priv);
 int mlx5e_ethtool_get_ts_info(struct mlx5e_priv *priv,
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
index 792a0ea544cd..110cb7973eae 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
@@ -1262,23 +1262,26 @@ static u32 mlx5e_get_rxfh_indir_size(struct net_device *netdev)
 	return mlx5e_ethtool_get_rxfh_indir_size(priv);
 }
 
-static int mlx5e_get_rxfh_context(struct net_device *dev, u32 *indir,
-				  u8 *key, u8 *hfunc, u32 rss_context)
+static int mlx5e_get_rxfh_context(struct net_device *dev,
+				  struct ethtool_rxfh_param *rxfh,
+				  u32 rss_context)
 {
 	struct mlx5e_priv *priv = netdev_priv(dev);
 	int err;
 
 	mutex_lock(&priv->state_lock);
-	err = mlx5e_rx_res_rss_get_rxfh(priv->rx_res, rss_context, indir, key, hfunc);
+	err = mlx5e_rx_res_rss_get_rxfh(priv->rx_res, rss_context,
+					rxfh->indir, rxfh->key, &rxfh->hfunc);
 	mutex_unlock(&priv->state_lock);
 	return err;
 }
 
-static int mlx5e_set_rxfh_context(struct net_device *dev, const u32 *indir,
-				  const u8 *key, const u8 hfunc,
+static int mlx5e_set_rxfh_context(struct net_device *dev,
+				  struct ethtool_rxfh_param *rxfh,
 				  u32 *rss_context, bool delete)
 {
 	struct mlx5e_priv *priv = netdev_priv(dev);
+	u8 hfunc = rxfh->hfunc;
 	int err;
 
 	mutex_lock(&priv->state_lock);
@@ -1295,7 +1298,8 @@ static int mlx5e_set_rxfh_context(struct net_device *dev, const u32 *indir,
 			goto unlock;
 	}
 
-	err = mlx5e_rx_res_rss_set_rxfh(priv->rx_res, *rss_context, indir, key,
+	err = mlx5e_rx_res_rss_set_rxfh(priv->rx_res, *rss_context,
+					rxfh->indir, rxfh->key,
 					hfunc == ETH_RSS_HASH_NO_CHANGE ? NULL : &hfunc);
 
 unlock:
@@ -1303,20 +1307,20 @@ static int mlx5e_set_rxfh_context(struct net_device *dev, const u32 *indir,
 	return err;
 }
 
-int mlx5e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-		   u8 *hfunc)
+int mlx5e_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 {
-	return mlx5e_get_rxfh_context(netdev, indir, key, hfunc, 0);
+	return mlx5e_get_rxfh_context(netdev, rxfh, 0);
 }
 
-int mlx5e_set_rxfh(struct net_device *dev, const u32 *indir,
-		   const u8 *key, const u8 hfunc)
+int mlx5e_set_rxfh(struct net_device *dev, struct ethtool_rxfh_param *rxfh,
+		   struct netlink_ext_ack *extack)
 {
 	struct mlx5e_priv *priv = netdev_priv(dev);
+	u8 hfunc = rxfh->hfunc;
 	int err;
 
 	mutex_lock(&priv->state_lock);
-	err = mlx5e_rx_res_rss_set_rxfh(priv->rx_res, 0, indir, key,
+	err = mlx5e_rx_res_rss_set_rxfh(priv->rx_res, 0, rxfh->indir, rxfh->key,
 					hfunc == ETH_RSS_HASH_NO_CHANGE ? NULL : &hfunc);
 	mutex_unlock(&priv->state_lock);
 	return err;
diff --git a/drivers/net/ethernet/microchip/lan743x_ethtool.c b/drivers/net/ethernet/microchip/lan743x_ethtool.c
index 6961cfc55fb9..8c4a2bb6a537 100644
--- a/drivers/net/ethernet/microchip/lan743x_ethtool.c
+++ b/drivers/net/ethernet/microchip/lan743x_ethtool.c
@@ -934,11 +934,11 @@ static u32 lan743x_ethtool_get_rxfh_indir_size(struct net_device *netdev)
 }
 
 static int lan743x_ethtool_get_rxfh(struct net_device *netdev,
-				    u32 *indir, u8 *key, u8 *hfunc)
+				    struct ethtool_rxfh_param *rxfh)
 {
 	struct lan743x_adapter *adapter = netdev_priv(netdev);
 
-	if (indir) {
+	if (rxfh->indir) {
 		int dw_index;
 		int byte_index = 0;
 
@@ -947,17 +947,17 @@ static int lan743x_ethtool_get_rxfh(struct net_device *netdev,
 				lan743x_csr_read(adapter, RFE_INDX(dw_index));
 
 			byte_index = dw_index << 2;
-			indir[byte_index + 0] =
+			rxfh->indir[byte_index + 0] =
 				((four_entries >> 0) & 0x000000FF);
-			indir[byte_index + 1] =
+			rxfh->indir[byte_index + 1] =
 				((four_entries >> 8) & 0x000000FF);
-			indir[byte_index + 2] =
+			rxfh->indir[byte_index + 2] =
 				((four_entries >> 16) & 0x000000FF);
-			indir[byte_index + 3] =
+			rxfh->indir[byte_index + 3] =
 				((four_entries >> 24) & 0x000000FF);
 		}
 	}
-	if (key) {
+	if (rxfh->key) {
 		int dword_index;
 		int byte_index = 0;
 
@@ -967,28 +967,30 @@ static int lan743x_ethtool_get_rxfh(struct net_device *netdev,
 						 RFE_HASH_KEY(dword_index));
 
 			byte_index = dword_index << 2;
-			key[byte_index + 0] =
+			rxfh->key[byte_index + 0] =
 				((four_entries >> 0) & 0x000000FF);
-			key[byte_index + 1] =
+			rxfh->key[byte_index + 1] =
 				((four_entries >> 8) & 0x000000FF);
-			key[byte_index + 2] =
+			rxfh->key[byte_index + 2] =
 				((four_entries >> 16) & 0x000000FF);
-			key[byte_index + 3] =
+			rxfh->key[byte_index + 3] =
 				((four_entries >> 24) & 0x000000FF);
 		}
 	}
-	if (hfunc)
-		(*hfunc) = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 	return 0;
 }
 
 static int lan743x_ethtool_set_rxfh(struct net_device *netdev,
-				    const u32 *indir, const u8 *key,
-				    const u8 hfunc)
+				    struct ethtool_rxfh_param *rxfh,
+				    struct netlink_ext_ack *extack)
 {
 	struct lan743x_adapter *adapter = netdev_priv(netdev);
+	u32 *indir = rxfh->indir;
+	u8 *key = rxfh->key;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (indir) {
diff --git a/drivers/net/ethernet/microsoft/mana/mana_ethtool.c b/drivers/net/ethernet/microsoft/mana/mana_ethtool.c
index 777e65b8223d..ab2413d71f6c 100644
--- a/drivers/net/ethernet/microsoft/mana/mana_ethtool.c
+++ b/drivers/net/ethernet/microsoft/mana/mana_ethtool.c
@@ -248,28 +248,28 @@ static u32 mana_rss_indir_size(struct net_device *ndev)
 	return MANA_INDIRECT_TABLE_SIZE;
 }
 
-static int mana_get_rxfh(struct net_device *ndev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int mana_get_rxfh(struct net_device *ndev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct mana_port_context *apc = netdev_priv(ndev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
+	rxfh->hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < MANA_INDIRECT_TABLE_SIZE; i++)
-			indir[i] = apc->indir_table[i];
+			rxfh->indir[i] = apc->indir_table[i];
 	}
 
-	if (key)
-		memcpy(key, apc->hashkey, MANA_HASH_KEY_SIZE);
+	if (rxfh->key)
+		memcpy(rxfh->key, apc->hashkey, MANA_HASH_KEY_SIZE);
 
 	return 0;
 }
 
-static int mana_set_rxfh(struct net_device *ndev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int mana_set_rxfh(struct net_device *ndev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct mana_port_context *apc = netdev_priv(ndev);
 	bool update_hash = false, update_table = false;
@@ -280,25 +280,26 @@ static int mana_set_rxfh(struct net_device *ndev, const u32 *indir,
 	if (!apc->port_is_up)
 		return -EOPNOTSUPP;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < MANA_INDIRECT_TABLE_SIZE; i++)
-			if (indir[i] >= apc->num_queues)
+			if (rxfh->indir[i] >= apc->num_queues)
 				return -EINVAL;
 
 		update_table = true;
 		for (i = 0; i < MANA_INDIRECT_TABLE_SIZE; i++) {
 			save_table[i] = apc->indir_table[i];
-			apc->indir_table[i] = indir[i];
+			apc->indir_table[i] = rxfh->indir[i];
 		}
 	}
 
-	if (key) {
+	if (rxfh->key) {
 		update_hash = true;
 		memcpy(save_key, apc->hashkey, MANA_HASH_KEY_SIZE);
-		memcpy(apc->hashkey, key, MANA_HASH_KEY_SIZE);
+		memcpy(apc->hashkey, rxfh->key, MANA_HASH_KEY_SIZE);
 	}
 
 	err = mana_config_rss(apc, TRI_STATE_TRUE, update_hash, update_table);
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
index ff9f39969215..fbca8d0efd85 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
@@ -1794,8 +1794,8 @@ static u32 nfp_net_get_rxfh_key_size(struct net_device *netdev)
 	return nfp_net_rss_key_sz(nn);
 }
 
-static int nfp_net_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			    u8 *hfunc)
+static int nfp_net_get_rxfh(struct net_device *netdev,
+			    struct ethtool_rxfh_param *rxfh)
 {
 	struct nfp_net *nn = netdev_priv(netdev);
 	int i;
@@ -1803,41 +1803,41 @@ static int nfp_net_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	if (!(nn->cap & NFP_NET_CFG_CTRL_RSS_ANY))
 		return -EOPNOTSUPP;
 
-	if (indir)
+	if (rxfh->indir)
 		for (i = 0; i < ARRAY_SIZE(nn->rss_itbl); i++)
-			indir[i] = nn->rss_itbl[i];
-	if (key)
-		memcpy(key, nn->rss_key, nfp_net_rss_key_sz(nn));
-	if (hfunc) {
-		*hfunc = nn->rss_hfunc;
-		if (*hfunc >= 1 << ETH_RSS_HASH_FUNCS_COUNT)
-			*hfunc = ETH_RSS_HASH_UNKNOWN;
-	}
+			rxfh->indir[i] = nn->rss_itbl[i];
+	if (rxfh->key)
+		memcpy(rxfh->key, nn->rss_key, nfp_net_rss_key_sz(nn));
+
+	rxfh->hfunc = nn->rss_hfunc;
+	if (rxfh->hfunc >= 1 << ETH_RSS_HASH_FUNCS_COUNT)
+		rxfh->hfunc = ETH_RSS_HASH_UNKNOWN;
 
 	return 0;
 }
 
 static int nfp_net_set_rxfh(struct net_device *netdev,
-			    const u32 *indir, const u8 *key,
-			    const u8 hfunc)
+			    struct ethtool_rxfh_param *rxfh,
+			    struct netlink_ext_ack *extack)
 {
 	struct nfp_net *nn = netdev_priv(netdev);
 	int i;
 
 	if (!(nn->cap & NFP_NET_CFG_CTRL_RSS_ANY) ||
-	    !(hfunc == ETH_RSS_HASH_NO_CHANGE || hfunc == nn->rss_hfunc))
+	    !(rxfh->hfunc == ETH_RSS_HASH_NO_CHANGE ||
+	      rxfh->hfunc == nn->rss_hfunc))
 		return -EOPNOTSUPP;
 
-	if (!key && !indir)
+	if (!rxfh->key && !rxfh->indir)
 		return 0;
 
-	if (key) {
-		memcpy(nn->rss_key, key, nfp_net_rss_key_sz(nn));
+	if (rxfh->key) {
+		memcpy(nn->rss_key, rxfh->key, nfp_net_rss_key_sz(nn));
 		nfp_net_rss_write_key(nn);
 	}
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < ARRAY_SIZE(nn->rss_itbl); i++)
-			nn->rss_itbl[i] = indir[i];
+			nn->rss_itbl[i] = rxfh->indir[i];
 
 		nfp_net_rss_write_itbl(nn);
 	}
diff --git a/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c b/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c
index 3a6b0a9bc241..cd3c0b01402e 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c
@@ -823,36 +823,38 @@ static u32 ionic_get_rxfh_key_size(struct net_device *netdev)
 	return IONIC_RSS_HASH_KEY_SIZE;
 }
 
-static int ionic_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int ionic_get_rxfh(struct net_device *netdev,
+			  struct ethtool_rxfh_param *rxfh)
 {
 	struct ionic_lif *lif = netdev_priv(netdev);
 	unsigned int i, tbl_sz;
 
-	if (indir) {
+	if (rxfh->indir) {
 		tbl_sz = le16_to_cpu(lif->ionic->ident.lif.eth.rss_ind_tbl_sz);
 		for (i = 0; i < tbl_sz; i++)
-			indir[i] = lif->rss_ind_tbl[i];
+			rxfh->indir[i] = lif->rss_ind_tbl[i];
 	}
 
-	if (key)
-		memcpy(key, lif->rss_hash_key, IONIC_RSS_HASH_KEY_SIZE);
+	if (rxfh->key)
+		memcpy(rxfh->key, lif->rss_hash_key, IONIC_RSS_HASH_KEY_SIZE);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int ionic_set_rxfh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int ionic_set_rxfh(struct net_device *netdev,
+			  struct ethtool_rxfh_param *rxfh,
+			  struct netlink_ext_ack *extack)
 {
 	struct ionic_lif *lif = netdev_priv(netdev);
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	return ionic_lif_rss_config(lif, lif->rss_types, key, indir);
+	return ionic_lif_rss_config(lif, lif->rss_types,
+				    rxfh->key, rxfh->indir);
 }
 
 static int ionic_set_tunable(struct net_device *dev,
diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
index b6b849a079ed..0e240b5ab8d4 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
@@ -1370,28 +1370,29 @@ static u32 qede_get_rxfh_key_size(struct net_device *dev)
 	return sizeof(edev->rss_key);
 }
 
-static int qede_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
+static int qede_get_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct qede_dev *edev = netdev_priv(dev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
 	for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++)
-		indir[i] = edev->rss_ind_table[i];
+		rxfh->indir[i] = edev->rss_ind_table[i];
 
-	if (key)
-		memcpy(key, edev->rss_key, qede_get_rxfh_key_size(dev));
+	if (rxfh->key)
+		memcpy(rxfh->key, edev->rss_key, qede_get_rxfh_key_size(dev));
 
 	return 0;
 }
 
-static int qede_set_rxfh(struct net_device *dev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int qede_set_rxfh(struct net_device *dev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct qed_update_vport_params *vport_update_params;
 	struct qede_dev *edev = netdev_priv(dev);
@@ -1403,20 +1404,21 @@ static int qede_set_rxfh(struct net_device *dev, const u32 *indir,
 		return -EOPNOTSUPP;
 	}
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (!indir && !key)
+	if (!rxfh->indir && !rxfh->key)
 		return 0;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++)
-			edev->rss_ind_table[i] = indir[i];
+			edev->rss_ind_table[i] = rxfh->indir[i];
 		edev->rss_params_inited |= QEDE_RSS_INDIR_INITED;
 	}
 
-	if (key) {
-		memcpy(&edev->rss_key, key, qede_get_rxfh_key_size(dev));
+	if (rxfh->key) {
+		memcpy(&edev->rss_key, rxfh->key, qede_get_rxfh_key_size(dev));
 		edev->rss_params_inited |= QEDE_RSS_KEY_INITED;
 	}
 
diff --git a/drivers/net/ethernet/sfc/ethtool_common.c b/drivers/net/ethernet/sfc/ethtool_common.c
index a8cbceeb301b..e32ae9038d9e 100644
--- a/drivers/net/ethernet/sfc/ethtool_common.c
+++ b/drivers/net/ethernet/sfc/ethtool_common.c
@@ -1163,8 +1163,8 @@ u32 efx_ethtool_get_rxfh_key_size(struct net_device *net_dev)
 	return efx->type->rx_hash_key_size;
 }
 
-int efx_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+int efx_ethtool_get_rxfh(struct net_device *net_dev,
+			 struct ethtool_rxfh_param *rxfh)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 	int rc;
@@ -1173,24 +1173,27 @@ int efx_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
 	if (rc)
 		return rc;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (indir)
-		memcpy(indir, efx->rss_context.rx_indir_table,
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->indir)
+		memcpy(rxfh->indir, efx->rss_context.rx_indir_table,
 		       sizeof(efx->rss_context.rx_indir_table));
-	if (key)
-		memcpy(key, efx->rss_context.rx_hash_key,
+	if (rxfh->key)
+		memcpy(rxfh->key, efx->rss_context.rx_hash_key,
 		       efx->type->rx_hash_key_size);
 	return 0;
 }
 
-int efx_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+int efx_ethtool_set_rxfh(struct net_device *net_dev,
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
+	u32 *indir = rxfh->indir;
+	u8 *key = rxfh->key;
 
 	/* Hash function is Toeplitz, cannot be changed */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 	if (!indir && !key)
 		return 0;
@@ -1203,8 +1206,9 @@ int efx_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
 	return efx->type->rx_push_rss_config(efx, true, indir, key);
 }
 
-int efx_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
-				 u8 *key, u8 *hfunc, u32 rss_context)
+int efx_ethtool_get_rxfh_context(struct net_device *net_dev,
+				 struct ethtool_rxfh_param *rxfh,
+				 u32 rss_context)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 	struct efx_rss_context *ctx;
@@ -1223,31 +1227,34 @@ int efx_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
 	if (rc)
 		goto out_unlock;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (indir)
-		memcpy(indir, ctx->rx_indir_table, sizeof(ctx->rx_indir_table));
-	if (key)
-		memcpy(key, ctx->rx_hash_key, efx->type->rx_hash_key_size);
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->indir)
+		memcpy(rxfh->indir, ctx->rx_indir_table,
+		       sizeof(ctx->rx_indir_table));
+	if (rxfh->key)
+		memcpy(rxfh->key, ctx->rx_hash_key,
+		       efx->type->rx_hash_key_size);
 out_unlock:
 	mutex_unlock(&efx->rss_lock);
 	return rc;
 }
 
 int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
-				 const u32 *indir, const u8 *key,
-				 const u8 hfunc, u32 *rss_context,
-				 bool delete)
+				 struct ethtool_rxfh_param *rxfh,
+				 u32 *rss_context, bool delete)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 	struct efx_rss_context *ctx;
+	u32 *indir = rxfh->indir;
 	bool allocated = false;
+	u8 *key = rxfh->key;
 	int rc;
 
 	if (!efx->type->rx_push_rss_context_config)
 		return -EOPNOTSUPP;
 	/* Hash function is Toeplitz, cannot be changed */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	mutex_lock(&efx->rss_lock);
diff --git a/drivers/net/ethernet/sfc/ethtool_common.h b/drivers/net/ethernet/sfc/ethtool_common.h
index 659491932101..384318ee1127 100644
--- a/drivers/net/ethernet/sfc/ethtool_common.h
+++ b/drivers/net/ethernet/sfc/ethtool_common.h
@@ -44,16 +44,17 @@ int efx_ethtool_set_rxnfc(struct net_device *net_dev,
 			  struct ethtool_rxnfc *info);
 u32 efx_ethtool_get_rxfh_indir_size(struct net_device *net_dev);
 u32 efx_ethtool_get_rxfh_key_size(struct net_device *net_dev);
-int efx_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			 u8 *hfunc);
+int efx_ethtool_get_rxfh(struct net_device *net_dev,
+			 struct ethtool_rxfh_param *rxfh);
 int efx_ethtool_set_rxfh(struct net_device *net_dev,
-			 const u32 *indir, const u8 *key, const u8 hfunc);
-int efx_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
-				 u8 *key, u8 *hfunc, u32 rss_context);
+			 struct ethtool_rxfh_param *rxfh,
+			 struct netlink_ext_ack *extack);
+int efx_ethtool_get_rxfh_context(struct net_device *net_dev,
+				 struct ethtool_rxfh_param *rxfh,
+				 u32 rss_context);
 int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
-				 const u32 *indir, const u8 *key,
-				 const u8 hfunc, u32 *rss_context,
-				 bool delete);
+				 struct ethtool_rxfh_param *rxfh,
+				 u32 *rss_context, bool delete);
 int efx_ethtool_reset(struct net_device *net_dev, u32 *flags);
 int efx_ethtool_get_module_eeprom(struct net_device *net_dev,
 				  struct ethtool_eeprom *ee,
diff --git a/drivers/net/ethernet/sfc/falcon/ethtool.c b/drivers/net/ethernet/sfc/falcon/ethtool.c
index 3976a333f7e3..f4db683b80f7 100644
--- a/drivers/net/ethernet/sfc/falcon/ethtool.c
+++ b/drivers/net/ethernet/sfc/falcon/ethtool.c
@@ -1257,31 +1257,33 @@ static u32 ef4_ethtool_get_rxfh_indir_size(struct net_device *net_dev)
 		0 : ARRAY_SIZE(efx->rx_indir_table));
 }
 
-static int ef4_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-				u8 *hfunc)
+static int ef4_ethtool_get_rxfh(struct net_device *net_dev,
+				struct ethtool_rxfh_param *rxfh)
 {
 	struct ef4_nic *efx = netdev_priv(net_dev);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (indir)
-		memcpy(indir, efx->rx_indir_table, sizeof(efx->rx_indir_table));
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->indir)
+		memcpy(rxfh->indir, efx->rx_indir_table,
+		       sizeof(efx->rx_indir_table));
 	return 0;
 }
 
-static int ef4_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
-				const u8 *key, const u8 hfunc)
+static int ef4_ethtool_set_rxfh(struct net_device *net_dev,
+				struct ethtool_rxfh_param *rxfh,
+				struct netlink_ext_ack *extack)
 {
 	struct ef4_nic *efx = netdev_priv(net_dev);
 
 	/* We do not allow change in unsupported parameters */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
-	if (!indir)
+	if (!rxfh->indir)
 		return 0;
 
-	return efx->type->rx_push_rss_config(efx, true, indir);
+	return efx->type->rx_push_rss_config(efx, true, rxfh->indir);
 }
 
 static int ef4_ethtool_get_module_eeprom(struct net_device *net_dev,
diff --git a/drivers/net/ethernet/sfc/siena/ethtool_common.c b/drivers/net/ethernet/sfc/siena/ethtool_common.c
index f590e87e5a23..20b64e3521cb 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool_common.c
+++ b/drivers/net/ethernet/sfc/siena/ethtool_common.c
@@ -1164,8 +1164,8 @@ u32 efx_siena_ethtool_get_rxfh_key_size(struct net_device *net_dev)
 	return efx->type->rx_hash_key_size;
 }
 
-int efx_siena_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			       u8 *hfunc)
+int efx_siena_ethtool_get_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh_param *rxfh)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 	int rc;
@@ -1174,24 +1174,27 @@ int efx_siena_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
 	if (rc)
 		return rc;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (indir)
-		memcpy(indir, efx->rss_context.rx_indir_table,
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->indir)
+		memcpy(rxfh->indir, efx->rss_context.rx_indir_table,
 		       sizeof(efx->rss_context.rx_indir_table));
-	if (key)
-		memcpy(key, efx->rss_context.rx_hash_key,
+	if (rxfh->key)
+		memcpy(rxfh->key, efx->rss_context.rx_hash_key,
 		       efx->type->rx_hash_key_size);
 	return 0;
 }
 
-int efx_siena_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
-			       const u8 *key, const u8 hfunc)
+int efx_siena_ethtool_set_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh_param *rxfh,
+			       struct netlink_ext_ack *extack)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
+	u32 *indir = rxfh->indir;
+	u8 *key = rxfh->key;
 
 	/* Hash function is Toeplitz, cannot be changed */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 	if (!indir && !key)
 		return 0;
@@ -1204,8 +1207,9 @@ int efx_siena_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
 	return efx->type->rx_push_rss_config(efx, true, indir, key);
 }
 
-int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
-				       u8 *key, u8 *hfunc, u32 rss_context)
+int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev,
+				       struct ethtool_rxfh_param *rxfh,
+				       u32 rss_context)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 	struct efx_rss_context *ctx;
@@ -1224,31 +1228,34 @@ int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
 	if (rc)
 		goto out_unlock;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (indir)
-		memcpy(indir, ctx->rx_indir_table, sizeof(ctx->rx_indir_table));
-	if (key)
-		memcpy(key, ctx->rx_hash_key, efx->type->rx_hash_key_size);
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->indir)
+		memcpy(rxfh->indir, ctx->rx_indir_table,
+		       sizeof(ctx->rx_indir_table));
+	if (rxfh->key)
+		memcpy(rxfh->key, ctx->rx_hash_key,
+		       efx->type->rx_hash_key_size);
 out_unlock:
 	mutex_unlock(&efx->rss_lock);
 	return rc;
 }
 
 int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
-				       const u32 *indir, const u8 *key,
-				       const u8 hfunc, u32 *rss_context,
-				       bool delete)
+				       struct ethtool_rxfh_param *rxfh,
+				       u32 *rss_context, bool delete)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 	struct efx_rss_context *ctx;
+	u32 *indir = rxfh->indir;
 	bool allocated = false;
+	u8 *key = rxfh->key;
 	int rc;
 
 	if (!efx->type->rx_push_rss_context_config)
 		return -EOPNOTSUPP;
 	/* Hash function is Toeplitz, cannot be changed */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	mutex_lock(&efx->rss_lock);
diff --git a/drivers/net/ethernet/sfc/siena/ethtool_common.h b/drivers/net/ethernet/sfc/siena/ethtool_common.h
index 04b375dc6800..2f892f8eff70 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool_common.h
+++ b/drivers/net/ethernet/sfc/siena/ethtool_common.h
@@ -41,16 +41,17 @@ int efx_siena_ethtool_set_rxnfc(struct net_device *net_dev,
 				struct ethtool_rxnfc *info);
 u32 efx_siena_ethtool_get_rxfh_indir_size(struct net_device *net_dev);
 u32 efx_siena_ethtool_get_rxfh_key_size(struct net_device *net_dev);
-int efx_siena_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			       u8 *hfunc);
+int efx_siena_ethtool_get_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh_param *rxfh);
 int efx_siena_ethtool_set_rxfh(struct net_device *net_dev,
-			       const u32 *indir, const u8 *key, const u8 hfunc);
-int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
-				       u8 *key, u8 *hfunc, u32 rss_context);
+			       struct ethtool_rxfh_param *rxfh,
+			       struct netlink_ext_ack *extack);
+int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev,
+				       struct ethtool_rxfh_param *rxfh,
+				       u32 rss_context);
 int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
-				       const u32 *indir, const u8 *key,
-				       const u8 hfunc, u32 *rss_context,
-				       bool delete);
+				       struct ethtool_rxfh_param *rxfh,
+				       u32 *rss_context, bool delete);
 int efx_siena_ethtool_reset(struct net_device *net_dev, u32 *flags);
 int efx_siena_ethtool_get_module_eeprom(struct net_device *net_dev,
 					struct ethtool_eeprom *ee,
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index f628411ae4ae..bb14b5d68dca 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -1077,41 +1077,42 @@ static u32 stmmac_get_rxfh_indir_size(struct net_device *dev)
 	return ARRAY_SIZE(priv->rss.table);
 }
 
-static int stmmac_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			   u8 *hfunc)
+static int stmmac_get_rxfh(struct net_device *dev,
+			   struct ethtool_rxfh_param *rxfh)
 {
 	struct stmmac_priv *priv = netdev_priv(dev);
 	int i;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < ARRAY_SIZE(priv->rss.table); i++)
-			indir[i] = priv->rss.table[i];
+			rxfh->indir[i] = priv->rss.table[i];
 	}
 
-	if (key)
-		memcpy(key, priv->rss.key, sizeof(priv->rss.key));
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh->key)
+		memcpy(rxfh->key, priv->rss.key, sizeof(priv->rss.key));
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int stmmac_set_rxfh(struct net_device *dev, const u32 *indir,
-			   const u8 *key, const u8 hfunc)
+static int stmmac_set_rxfh(struct net_device *dev,
+			   struct ethtool_rxfh_param *rxfh,
+			   struct netlink_ext_ack *extack)
 {
 	struct stmmac_priv *priv = netdev_priv(dev);
 	int i;
 
-	if ((hfunc != ETH_RSS_HASH_NO_CHANGE) && (hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < ARRAY_SIZE(priv->rss.table); i++)
-			priv->rss.table[i] = indir[i];
+			priv->rss.table[i] = rxfh->indir[i];
 	}
 
-	if (key)
-		memcpy(priv->rss.key, key, sizeof(priv->rss.key));
+	if (rxfh->key)
+		memcpy(priv->rss.key, rxfh->key, sizeof(priv->rss.key));
 
 	return stmmac_rss_configure(priv, priv->hw, &priv->rss,
 				    priv->plat->rx_queues_to_use);
diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index 1e2fa0ec2327..4406427d4617 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -1752,8 +1752,8 @@ static u32 netvsc_rss_indir_size(struct net_device *dev)
 	return ndc->rx_table_sz;
 }
 
-static int netvsc_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			   u8 *hfunc)
+static int netvsc_get_rxfh(struct net_device *dev,
+			   struct ethtool_rxfh_param *rxfh)
 {
 	struct net_device_context *ndc = netdev_priv(dev);
 	struct netvsc_device *ndev = rtnl_dereference(ndc->nvdev);
@@ -1763,47 +1763,49 @@ static int netvsc_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	if (!ndev)
 		return -ENODEV;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;	/* Toeplitz */
+	rxfh->hfunc = ETH_RSS_HASH_TOP;	/* Toeplitz */
 
 	rndis_dev = ndev->extension;
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < ndc->rx_table_sz; i++)
-			indir[i] = ndc->rx_table[i];
+			rxfh->indir[i] = ndc->rx_table[i];
 	}
 
-	if (key)
-		memcpy(key, rndis_dev->rss_key, NETVSC_HASH_KEYLEN);
+	if (rxfh->key)
+		memcpy(rxfh->key, rndis_dev->rss_key, NETVSC_HASH_KEYLEN);
 
 	return 0;
 }
 
-static int netvsc_set_rxfh(struct net_device *dev, const u32 *indir,
-			   const u8 *key, const u8 hfunc)
+static int netvsc_set_rxfh(struct net_device *dev,
+			   struct ethtool_rxfh_param *rxfh,
+			   struct netlink_ext_ack *extack)
 {
 	struct net_device_context *ndc = netdev_priv(dev);
 	struct netvsc_device *ndev = rtnl_dereference(ndc->nvdev);
 	struct rndis_device *rndis_dev;
+	u8 *key = rxfh->key;
 	int i;
 
 	if (!ndev)
 		return -ENODEV;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	rndis_dev = ndev->extension;
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < ndc->rx_table_sz; i++)
-			if (indir[i] >= ndev->num_chn)
+			if (rxfh->indir[i] >= ndev->num_chn)
 				return -EINVAL;
 
 		for (i = 0; i < ndc->rx_table_sz; i++)
-			ndc->rx_table[i] = indir[i];
+			ndc->rx_table[i] = rxfh->indir[i];
 	}
 
 	if (!key) {
-		if (!indir)
+		if (!rxfh->indir)
 			return 0;
 
 		key = rndis_dev->rss_key;
diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index d16f592c2061..a75f3c12fc2d 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -3535,39 +3535,42 @@ static u32 virtnet_get_rxfh_indir_size(struct net_device *dev)
 	return ((struct virtnet_info *)netdev_priv(dev))->rss_indir_table_size;
 }
 
-static int virtnet_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
+static int virtnet_get_rxfh(struct net_device *dev,
+			    struct ethtool_rxfh_param *rxfh)
 {
 	struct virtnet_info *vi = netdev_priv(dev);
 	int i;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < vi->rss_indir_table_size; ++i)
-			indir[i] = vi->ctrl->rss.indirection_table[i];
+			rxfh->indir[i] = vi->ctrl->rss.indirection_table[i];
 	}
 
-	if (key)
-		memcpy(key, vi->ctrl->rss.key, vi->rss_key_size);
+	if (rxfh->key)
+		memcpy(rxfh->key, vi->ctrl->rss.key, vi->rss_key_size);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int virtnet_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key, const u8 hfunc)
+static int virtnet_set_rxfh(struct net_device *dev,
+			    struct ethtool_rxfh_param *rxfh,
+			    struct netlink_ext_ack *extack)
 {
 	struct virtnet_info *vi = netdev_priv(dev);
 	int i;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
-	if (indir) {
+	if (rxfh->indir) {
 		for (i = 0; i < vi->rss_indir_table_size; ++i)
-			vi->ctrl->rss.indirection_table[i] = indir[i];
+			vi->ctrl->rss.indirection_table[i] = rxfh->indir[i];
 	}
-	if (key)
-		memcpy(vi->ctrl->rss.key, key, vi->rss_key_size);
+	if (rxfh->key)
+		memcpy(vi->ctrl->rss.key, rxfh->key, vi->rss_key_size);
 
 	virtnet_commit_rss_command(vi);
 
diff --git a/drivers/net/vmxnet3/vmxnet3_ethtool.c b/drivers/net/vmxnet3/vmxnet3_ethtool.c
index 8f5f202cde39..7e8008d5378a 100644
--- a/drivers/net/vmxnet3/vmxnet3_ethtool.c
+++ b/drivers/net/vmxnet3/vmxnet3_ethtool.c
@@ -1136,27 +1136,26 @@ vmxnet3_get_rss_indir_size(struct net_device *netdev)
 }
 
 static int
-vmxnet3_get_rss(struct net_device *netdev, u32 *p, u8 *key, u8 *hfunc)
+vmxnet3_get_rss(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 {
 	struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 	struct UPT1_RSSConf *rssConf = adapter->rss_conf;
 	unsigned int n = rssConf->indTableSize;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
-	if (!p)
+	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (!rxfh->indir)
 		return 0;
 	if (n > UPT1_RSS_MAX_IND_TABLE_SIZE)
 		return 0;
 	while (n--)
-		p[n] = rssConf->indTable[n];
+		rxfh->indir[n] = rssConf->indTable[n];
 	return 0;
 
 }
 
 static int
-vmxnet3_set_rss(struct net_device *netdev, const u32 *p, const u8 *key,
-		const u8 hfunc)
+vmxnet3_set_rss(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
+		struct netlink_ext_ack *extack)
 {
 	unsigned int i;
 	unsigned long flags;
@@ -1164,13 +1163,14 @@ vmxnet3_set_rss(struct net_device *netdev, const u32 *p, const u8 *key,
 	struct UPT1_RSSConf *rssConf = adapter->rss_conf;
 
 	/* We do not allow change in unsupported parameters */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->key ||
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
-	if (!p)
+	if (!rxfh->indir)
 		return 0;
 	for (i = 0; i < rssConf->indTableSize; i++)
-		rssConf->indTable[i] = p[i];
+		rssConf->indTable[i] = rxfh->indir[i];
 
 	spin_lock_irqsave(&adapter->cmd_lock, flags);
 	VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index deb683d3360f..1fbd0610c59e 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -594,6 +594,28 @@ struct ethtool_mm_stats {
 	u64 MACMergeHoldCount;
 };
 
+/**
+ * struct ethtool_rxfh_param - RXFH (RSS) parameters
+ * @hfunc: Defines the current RSS hash function used by HW (or to be set to).
+ *	Valid values are one of the %ETH_RSS_HASH_*.
+ * @indir_size: On SET, the array size of the user buffer for the
+ *	indirection table, which may be zero, or
+ *	%ETH_RXFH_INDIR_NO_CHANGE.  On GET (read from the driver),
+ *	the array size of the hardware indirection table.
+ * @indir: The indirection table of size @indir_size entries.
+ * @key_size: On SET, the array size of the user buffer for the hash key,
+ *	which may be zero.  On GET (read from the driver), the size of the
+ *	hardware hash key.
+ * @key: The hash key of size @key_size bytes.
+ */
+struct ethtool_rxfh_param {
+	u8	hfunc;
+	u32	indir_size;
+	u32	*indir;
+	u32	key_size;
+	u8	*key;
+};
+
 /**
  * struct ethtool_ops - optional netdev operations
  * @cap_link_lanes_supported: indicates if the driver supports lanes
@@ -844,14 +866,14 @@ struct ethtool_ops {
 	int	(*reset)(struct net_device *, u32 *);
 	u32	(*get_rxfh_key_size)(struct net_device *);
 	u32	(*get_rxfh_indir_size)(struct net_device *);
-	int	(*get_rxfh)(struct net_device *, u32 *indir, u8 *key,
-			    u8 *hfunc);
-	int	(*set_rxfh)(struct net_device *, const u32 *indir,
-			    const u8 *key, const u8 hfunc);
-	int	(*get_rxfh_context)(struct net_device *, u32 *indir, u8 *key,
-				    u8 *hfunc, u32 rss_context);
-	int	(*set_rxfh_context)(struct net_device *, const u32 *indir,
-				    const u8 *key, const u8 hfunc,
+	int	(*get_rxfh)(struct net_device *, struct ethtool_rxfh_param *);
+	int	(*set_rxfh)(struct net_device *, struct ethtool_rxfh_param *,
+			    struct netlink_ext_ack *extack);
+	int	(*get_rxfh_context)(struct net_device *,
+				    struct ethtool_rxfh_param *,
+				    u32 rss_context);
+	int	(*set_rxfh_context)(struct net_device *,
+				    struct ethtool_rxfh_param *,
 				    u32 *rss_context, bool delete);
 	void	(*get_channels)(struct net_device *, struct ethtool_channels *);
 	int	(*set_channels)(struct net_device *, struct ethtool_channels *);
diff --git a/net/ethtool/common.c b/net/ethtool/common.c
index 11d8797f63f6..6b2a360dcdf0 100644
--- a/net/ethtool/common.c
+++ b/net/ethtool/common.c
@@ -589,8 +589,8 @@ int ethtool_get_max_rxnfc_channel(struct net_device *dev, u64 *max)
 
 int ethtool_get_max_rxfh_channel(struct net_device *dev, u32 *max)
 {
+	struct ethtool_rxfh_param rxfh = {};
 	u32 dev_size, current_max = 0;
-	u32 *indir;
 	int ret;
 
 	if (!dev->ethtool_ops->get_rxfh_indir_size ||
@@ -600,21 +600,21 @@ int ethtool_get_max_rxfh_channel(struct net_device *dev, u32 *max)
 	if (dev_size == 0)
 		return -EOPNOTSUPP;
 
-	indir = kcalloc(dev_size, sizeof(indir[0]), GFP_USER);
-	if (!indir)
+	rxfh.indir = kcalloc(dev_size, sizeof(rxfh.indir[0]), GFP_USER);
+	if (!rxfh.indir)
 		return -ENOMEM;
 
-	ret = dev->ethtool_ops->get_rxfh(dev, indir, NULL, NULL);
+	ret = dev->ethtool_ops->get_rxfh(dev, &rxfh);
 	if (ret)
 		goto out;
 
 	while (dev_size--)
-		current_max = max(current_max, indir[dev_size]);
+		current_max = max(current_max, rxfh.indir[dev_size]);
 
 	*max = current_max;
 
 out:
-	kfree(indir);
+	kfree(rxfh.indir);
 	return ret;
 }
 
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 755a4be01bef..5f49a105fc73 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1061,15 +1061,15 @@ EXPORT_SYMBOL(netdev_rss_key_fill);
 static noinline_for_stack int ethtool_get_rxfh_indir(struct net_device *dev,
 						     void __user *useraddr)
 {
-	u32 user_size, dev_size;
-	u32 *indir;
+	struct ethtool_rxfh_param rxfh = {};
+	u32 user_size;
 	int ret;
 
 	if (!dev->ethtool_ops->get_rxfh_indir_size ||
 	    !dev->ethtool_ops->get_rxfh)
 		return -EOPNOTSUPP;
-	dev_size = dev->ethtool_ops->get_rxfh_indir_size(dev);
-	if (dev_size == 0)
+	rxfh.indir_size = dev->ethtool_ops->get_rxfh_indir_size(dev);
+	if (rxfh.indir_size == 0)
 		return -EOPNOTSUPP;
 
 	if (copy_from_user(&user_size,
@@ -1078,41 +1078,41 @@ static noinline_for_stack int ethtool_get_rxfh_indir(struct net_device *dev,
 		return -EFAULT;
 
 	if (copy_to_user(useraddr + offsetof(struct ethtool_rxfh_indir, size),
-			 &dev_size, sizeof(dev_size)))
+			 &rxfh.indir_size, sizeof(rxfh.indir_size)))
 		return -EFAULT;
 
 	/* If the user buffer size is 0, this is just a query for the
 	 * device table size.  Otherwise, if it's smaller than the
 	 * device table size it's an error.
 	 */
-	if (user_size < dev_size)
+	if (user_size < rxfh.indir_size)
 		return user_size == 0 ? 0 : -EINVAL;
 
-	indir = kcalloc(dev_size, sizeof(indir[0]), GFP_USER);
-	if (!indir)
+	rxfh.indir = kcalloc(rxfh.indir_size, sizeof(rxfh.indir[0]), GFP_USER);
+	if (!rxfh.indir)
 		return -ENOMEM;
 
-	ret = dev->ethtool_ops->get_rxfh(dev, indir, NULL, NULL);
+	ret = dev->ethtool_ops->get_rxfh(dev, &rxfh);
 	if (ret)
 		goto out;
-
 	if (copy_to_user(useraddr +
 			 offsetof(struct ethtool_rxfh_indir, ring_index[0]),
-			 indir, dev_size * sizeof(indir[0])))
+			 rxfh.indir, rxfh.indir_size * sizeof(*rxfh.indir)))
 		ret = -EFAULT;
 
 out:
-	kfree(indir);
+	kfree(rxfh.indir);
 	return ret;
 }
 
 static noinline_for_stack int ethtool_set_rxfh_indir(struct net_device *dev,
 						     void __user *useraddr)
 {
-	struct ethtool_rxnfc rx_rings;
-	u32 user_size, dev_size, i;
-	u32 *indir;
 	const struct ethtool_ops *ops = dev->ethtool_ops;
+	struct ethtool_rxfh_param rxfh_dev = {};
+	struct netlink_ext_ack *extack = NULL;
+	struct ethtool_rxnfc rx_rings;
+	u32 user_size, i;
 	int ret;
 	u32 ringidx_offset = offsetof(struct ethtool_rxfh_indir, ring_index[0]);
 
@@ -1120,8 +1120,8 @@ static noinline_for_stack int ethtool_set_rxfh_indir(struct net_device *dev,
 	    !ops->get_rxnfc)
 		return -EOPNOTSUPP;
 
-	dev_size = ops->get_rxfh_indir_size(dev);
-	if (dev_size == 0)
+	rxfh_dev.indir_size = ops->get_rxfh_indir_size(dev);
+	if (rxfh_dev.indir_size == 0)
 		return -EOPNOTSUPP;
 
 	if (copy_from_user(&user_size,
@@ -1129,11 +1129,12 @@ static noinline_for_stack int ethtool_set_rxfh_indir(struct net_device *dev,
 			   sizeof(user_size)))
 		return -EFAULT;
 
-	if (user_size != 0 && user_size != dev_size)
+	if (user_size != 0 && user_size != rxfh_dev.indir_size)
 		return -EINVAL;
 
-	indir = kcalloc(dev_size, sizeof(indir[0]), GFP_USER);
-	if (!indir)
+	rxfh_dev.indir = kcalloc(rxfh_dev.indir_size,
+				 sizeof(rxfh_dev.indir[0]), GFP_USER);
+	if (!rxfh_dev.indir)
 		return -ENOMEM;
 
 	rx_rings.cmd = ETHTOOL_GRXRINGS;
@@ -1142,18 +1143,21 @@ static noinline_for_stack int ethtool_set_rxfh_indir(struct net_device *dev,
 		goto out;
 
 	if (user_size == 0) {
-		for (i = 0; i < dev_size; i++)
+		u32 *indir = rxfh_dev.indir;
+
+		for (i = 0; i < rxfh_dev.indir_size; i++)
 			indir[i] = ethtool_rxfh_indir_default(i, rx_rings.data);
 	} else {
-		ret = ethtool_copy_validate_indir(indir,
+		ret = ethtool_copy_validate_indir(rxfh_dev.indir,
 						  useraddr + ringidx_offset,
 						  &rx_rings,
-						  dev_size);
+						  rxfh_dev.indir_size);
 		if (ret)
 			goto out;
 	}
 
-	ret = ops->set_rxfh(dev, indir, NULL, ETH_RSS_HASH_NO_CHANGE);
+	rxfh_dev.hfunc = ETH_RSS_HASH_NO_CHANGE;
+	ret = ops->set_rxfh(dev, &rxfh_dev, extack);
 	if (ret)
 		goto out;
 
@@ -1164,32 +1168,29 @@ static noinline_for_stack int ethtool_set_rxfh_indir(struct net_device *dev,
 		dev->priv_flags |= IFF_RXFH_CONFIGURED;
 
 out:
-	kfree(indir);
+	kfree(rxfh_dev.indir);
 	return ret;
 }
 
 static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 					       void __user *useraddr)
 {
-	int ret;
 	const struct ethtool_ops *ops = dev->ethtool_ops;
+	struct ethtool_rxfh_param rxfh_dev = {};
 	u32 user_indir_size, user_key_size;
-	u32 dev_indir_size = 0, dev_key_size = 0;
 	struct ethtool_rxfh rxfh;
-	u32 total_size;
 	u32 indir_bytes;
-	u32 *indir = NULL;
-	u8 dev_hfunc = 0;
-	u8 *hkey = NULL;
 	u8 *rss_config;
+	u32 total_size;
+	int ret;
 
 	if (!ops->get_rxfh)
 		return -EOPNOTSUPP;
 
 	if (ops->get_rxfh_indir_size)
-		dev_indir_size = ops->get_rxfh_indir_size(dev);
+		rxfh_dev.indir_size = ops->get_rxfh_indir_size(dev);
 	if (ops->get_rxfh_key_size)
-		dev_key_size = ops->get_rxfh_key_size(dev);
+		rxfh_dev.key_size = ops->get_rxfh_key_size(dev);
 
 	if (copy_from_user(&rxfh, useraddr, sizeof(rxfh)))
 		return -EFAULT;
@@ -1203,38 +1204,37 @@ static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 	if (rxfh.rss_context && !ops->get_rxfh_context)
 		return -EOPNOTSUPP;
 
-	rxfh.indir_size = dev_indir_size;
-	rxfh.key_size = dev_key_size;
+	rxfh.indir_size = rxfh_dev.indir_size;
+	rxfh.key_size = rxfh_dev.key_size;
 	if (copy_to_user(useraddr, &rxfh, sizeof(rxfh)))
 		return -EFAULT;
 
-	if ((user_indir_size && (user_indir_size != dev_indir_size)) ||
-	    (user_key_size && (user_key_size != dev_key_size)))
+	if ((user_indir_size && user_indir_size != rxfh_dev.indir_size) ||
+	    (user_key_size && user_key_size != rxfh_dev.key_size))
 		return -EINVAL;
 
-	indir_bytes = user_indir_size * sizeof(indir[0]);
+	indir_bytes = user_indir_size * sizeof(rxfh_dev.indir[0]);
 	total_size = indir_bytes + user_key_size;
 	rss_config = kzalloc(total_size, GFP_USER);
 	if (!rss_config)
 		return -ENOMEM;
 
 	if (user_indir_size)
-		indir = (u32 *)rss_config;
+		rxfh_dev.indir = (u32 *)rss_config;
 
 	if (user_key_size)
-		hkey = rss_config + indir_bytes;
+		rxfh_dev.key = rss_config + indir_bytes;
 
 	if (rxfh.rss_context)
-		ret = dev->ethtool_ops->get_rxfh_context(dev, indir, hkey,
-							 &dev_hfunc,
+		ret = dev->ethtool_ops->get_rxfh_context(dev, &rxfh_dev,
 							 rxfh.rss_context);
 	else
-		ret = dev->ethtool_ops->get_rxfh(dev, indir, hkey, &dev_hfunc);
+		ret = dev->ethtool_ops->get_rxfh(dev, &rxfh_dev);
 	if (ret)
 		goto out;
 
 	if (copy_to_user(useraddr + offsetof(struct ethtool_rxfh, hfunc),
-			 &dev_hfunc, sizeof(rxfh.hfunc))) {
+			 &rxfh_dev.hfunc, sizeof(rxfh.hfunc))) {
 		ret = -EFAULT;
 	} else if (copy_to_user(useraddr +
 			      offsetof(struct ethtool_rxfh, rss_config[0]),
@@ -1250,16 +1250,17 @@ static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 					       void __user *useraddr)
 {
-	int ret;
+	u32 rss_cfg_offset = offsetof(struct ethtool_rxfh, rss_config[0]);
 	const struct ethtool_ops *ops = dev->ethtool_ops;
+	u32 dev_indir_size = 0, dev_key_size = 0, i;
+	struct ethtool_rxfh_param rxfh_dev = {};
+	struct netlink_ext_ack *extack = NULL;
 	struct ethtool_rxnfc rx_rings;
 	struct ethtool_rxfh rxfh;
-	u32 dev_indir_size = 0, dev_key_size = 0, i;
-	u32 *indir = NULL, indir_bytes = 0;
-	u8 *hkey = NULL;
-	u8 *rss_config;
-	u32 rss_cfg_offset = offsetof(struct ethtool_rxfh, rss_config[0]);
 	bool delete = false;
+	u32 indir_bytes = 0;
+	u8 *rss_config;
+	int ret;
 
 	if (!ops->get_rxnfc || !ops->set_rxfh)
 		return -EOPNOTSUPP;
@@ -1291,7 +1292,7 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 		return -EINVAL;
 
 	if (rxfh.indir_size != ETH_RXFH_INDIR_NO_CHANGE)
-		indir_bytes = dev_indir_size * sizeof(indir[0]);
+		indir_bytes = dev_indir_size * sizeof(rxfh_dev.indir[0]);
 
 	rss_config = kzalloc(indir_bytes + rxfh.key_size, GFP_USER);
 	if (!rss_config)
@@ -1308,8 +1309,9 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 	 */
 	if (rxfh.indir_size &&
 	    rxfh.indir_size != ETH_RXFH_INDIR_NO_CHANGE) {
-		indir = (u32 *)rss_config;
-		ret = ethtool_copy_validate_indir(indir,
+		rxfh_dev.indir = (u32 *)rss_config;
+		rxfh_dev.indir_size = dev_indir_size;
+		ret = ethtool_copy_validate_indir(rxfh_dev.indir,
 						  useraddr + rss_cfg_offset,
 						  &rx_rings,
 						  rxfh.indir_size);
@@ -1317,7 +1319,11 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 			goto out;
 	} else if (rxfh.indir_size == 0) {
 		if (rxfh.rss_context == 0) {
-			indir = (u32 *)rss_config;
+			u32 *indir;
+
+			rxfh_dev.indir = (u32 *)rss_config;
+			rxfh_dev.indir_size = dev_indir_size;
+			indir = rxfh_dev.indir;
 			for (i = 0; i < dev_indir_size; i++)
 				indir[i] = ethtool_rxfh_indir_default(i, rx_rings.data);
 		} else {
@@ -1326,8 +1332,9 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 	}
 
 	if (rxfh.key_size) {
-		hkey = rss_config + indir_bytes;
-		if (copy_from_user(hkey,
+		rxfh_dev.key_size = dev_key_size;
+		rxfh_dev.key = rss_config + indir_bytes;
+		if (copy_from_user(rxfh_dev.key,
 				   useraddr + rss_cfg_offset + indir_bytes,
 				   rxfh.key_size)) {
 			ret = -EFAULT;
@@ -1335,11 +1342,14 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 		}
 	}
 
+	rxfh_dev.hfunc = rxfh.hfunc;
+
 	if (rxfh.rss_context)
-		ret = ops->set_rxfh_context(dev, indir, hkey, rxfh.hfunc,
+		ret = ops->set_rxfh_context(dev, &rxfh_dev,
 					    &rxfh.rss_context, delete);
 	else
-		ret = ops->set_rxfh(dev, indir, hkey, rxfh.hfunc);
+		ret = ops->set_rxfh(dev, &rxfh_dev, extack);
+
 	if (ret)
 		goto out;
 
diff --git a/net/ethtool/rss.c b/net/ethtool/rss.c
index 5764202e6cb6..56fae7d5c0f7 100644
--- a/net/ethtool/rss.c
+++ b/net/ethtool/rss.c
@@ -48,9 +48,9 @@ rss_prepare_data(const struct ethnl_req_info *req_base,
 	struct rss_reply_data *data = RSS_REPDATA(reply_base);
 	struct rss_req_info *request = RSS_REQINFO(req_base);
 	struct net_device *dev = reply_base->dev;
+	struct ethtool_rxfh_param rxfh = {};
 	const struct ethtool_ops *ops;
 	u32 total_size, indir_bytes;
-	u8 dev_hfunc = 0;
 	u8 *rss_config;
 	int ret;
 
@@ -83,21 +83,23 @@ rss_prepare_data(const struct ethnl_req_info *req_base,
 
 	if (data->indir_size)
 		data->indir_table = (u32 *)rss_config;
-
 	if (data->hkey_size)
 		data->hkey = rss_config + indir_bytes;
 
+	rxfh.indir_size = data->indir_size;
+	rxfh.indir = data->indir_table;
+	rxfh.key_size = data->hkey_size;
+	rxfh.key = data->hkey;
+
 	if (request->rss_context)
-		ret = ops->get_rxfh_context(dev, data->indir_table, data->hkey,
-					    &dev_hfunc, request->rss_context);
+		ret = ops->get_rxfh_context(dev, &rxfh, request->rss_context);
 	else
-		ret = ops->get_rxfh(dev, data->indir_table, data->hkey,
-				    &dev_hfunc);
+		ret = ops->get_rxfh(dev, &rxfh);
 
 	if (ret)
 		goto out_ops;
 
-	data->hfunc = dev_hfunc;
+	data->hfunc = rxfh.hfunc;
 out_ops:
 	ethnl_ops_complete(dev);
 	return ret;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
