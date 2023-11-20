Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B4D7F1E55
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 21:56:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5370181DBF;
	Mon, 20 Nov 2023 20:56:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5370181DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700513808;
	bh=02onq4W37eDW63CKunQzi/pdlEIsISYXeCtPtrh8Y+g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OrXwSOcnPCBBQuCWDCnfjytdzZrDKiquti0YcuSonpmX6cBchDyn5GWVjFoLDTBTO
	 f7sppQqa/qW3mQlKCRZdKG/G01Qd3uJAKTNURSQcPw3DZ3f6XQMZp0e19bQq26DneC
	 SldDUovq2MNxAqmmQA1q4PgHaZEXz/Q89L337ns3uoCNlc0hwTgXJUFHQjwhhWHg24
	 5tVEJKZvnnZGXjNBQdHd4DPXy5WKdMDuNHLGJYEqgjwo7BfGPRkkBnR4thrErdiN8O
	 tG9aLiTCZ39OhMJjG3IZ8nXc6YxGBSh8aX5RgeJDSjGz1UmtUBsfau4EHMWmrga7Yf
	 /APV5d9jyaFPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZmhQXKECmrBa; Mon, 20 Nov 2023 20:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C3CA81D46;
	Mon, 20 Nov 2023 20:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C3CA81D46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA3AC1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 20:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EFBF414EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 20:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EFBF414EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FTAPeujxMuDE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Nov 2023 20:56:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3888414E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 20:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3888414E5
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="391484235"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="391484235"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 12:56:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="857106133"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="857106133"
Received: from cchircul-mobl2.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.46.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 12:56:27 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 20 Nov 2023 13:56:08 -0700
Message-Id: <20231120205614.46350-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120205614.46350-1-ahmed.zaki@intel.com>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700513795; x=1732049795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rHJq3LOEhGW4lASRUYYMcWO0uWwBD5THr11fvizwpuc=;
 b=jqFarz++zqpBNTooPBojyJ8aNrtM6Zetqp/X8yNiQkh1KwCrC1L2c3C0
 gcr+YVQPjpSBhq7+mVd5c5l2U1aDl5dIUQv0tJlmX7ftHWHESuks8lX9m
 x0ni5zuxOH4dzVwSd5TNfZd26/z4vYAI8f+QgMRcc1/WQOvCRJDHq+/JQ
 994waeawPo55Qg53yEX8+aokaNK1m8rcbseX/D+4t8qH0WYbuipJR32QV
 F+5yiHt4x/DDonh0vcA8Yt13XmlYS6qmoNoOT35VGB6oezqjhcImzjLdS
 /YhSdNHfdtg+TWuEdYocwxGgowDbYBy+Vzo2YXsjhrT46F9JVhzFcl0Z9
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jqFarz++
Subject: [Intel-wired-lan] [PATCH net-next v6 1/7] net: ethtool: pass
 ethtool_rxfh to get/set_rxfh ethtool ops
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
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pass a pointer to struct ethtool_rxfh instead of the hfunc values to the
drivers' set_rxfh and get_rxfh ethtool ops. This will allow us to add more
parameters to the struct without changing the APIs across all drivers.

In ethtool_get_rxfh(), copying struct ethtool_rxfh back to user-space is
moved after the driver's get_rxfh() is called.

Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/amazon/ena/ena_ethtool.c | 13 +++++-----
 drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c  | 15 ++++++------
 .../ethernet/aquantia/atlantic/aq_ethtool.c   | 17 +++++++------
 .../ethernet/broadcom/bnx2x/bnx2x_ethtool.c   | 15 ++++++------
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c | 14 +++++------
 drivers/net/ethernet/broadcom/tg3.c           | 14 ++++++-----
 .../ethernet/cavium/thunder/nicvf_ethtool.c   | 15 ++++++------
 .../ethernet/chelsio/cxgb4/cxgb4_ethtool.c    | 14 ++++++-----
 .../net/ethernet/cisco/enic/enic_ethtool.c    | 15 ++++++------
 .../net/ethernet/emulex/benet/be_ethtool.c    | 15 ++++++------
 .../ethernet/freescale/enetc/enetc_ethtool.c  | 12 +++++-----
 .../ethernet/fungible/funeth/funeth_ethtool.c | 18 +++++++-------
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  | 15 +++++++-----
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    | 19 ++++++++-------
 .../net/ethernet/huawei/hinic/hinic_ethtool.c | 20 +++++++++-------
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 15 ++++++------
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 19 ++++++++-------
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 19 ++++++++-------
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 17 +++++++------
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 19 ++++++++-------
 drivers/net/ethernet/intel/igb/igb_ethtool.c  | 15 ++++++------
 drivers/net/ethernet/intel/igc/igc_ethtool.c  | 16 +++++++------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 15 ++++++------
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  |  9 +++----
 drivers/net/ethernet/marvell/mvneta.c         | 17 +++++++------
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   | 17 +++++++------
 .../marvell/octeontx2/nic/otx2_ethtool.c      | 14 ++++++-----
 .../net/ethernet/mellanox/mlx4/en_ethtool.c   | 20 ++++++++--------
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |  7 +++---
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  | 12 ++++++----
 .../net/ethernet/microchip/lan743x_ethtool.c  | 14 ++++++-----
 .../ethernet/microsoft/mana/mana_ethtool.c    | 15 ++++++------
 .../ethernet/netronome/nfp/nfp_net_ethtool.c  | 21 ++++++++--------
 .../ethernet/pensando/ionic/ionic_ethtool.c   | 15 ++++++------
 .../net/ethernet/qlogic/qede/qede_ethtool.c   | 14 ++++++-----
 drivers/net/ethernet/sfc/ethtool_common.c     | 15 ++++++------
 drivers/net/ethernet/sfc/ethtool_common.h     |  8 +++----
 drivers/net/ethernet/sfc/falcon/ethtool.c     | 17 +++++++------
 .../net/ethernet/sfc/siena/ethtool_common.c   | 17 +++++++------
 .../net/ethernet/sfc/siena/ethtool_common.h   |  7 +++---
 .../ethernet/stmicro/stmmac/stmmac_ethtool.c  | 15 ++++++------
 drivers/net/hyperv/netvsc_drv.c               | 15 ++++++------
 drivers/net/virtio_net.c                      | 13 ++++++----
 drivers/net/vmxnet3/vmxnet3_ethtool.c         | 14 ++++++-----
 include/linux/ethtool.h                       |  8 +++----
 net/ethtool/common.c                          |  2 +-
 net/ethtool/ioctl.c                           | 24 +++++++++----------
 net/ethtool/rss.c                             |  9 ++++---
 48 files changed, 384 insertions(+), 321 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_ethtool.c b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
index d671df4b76bc..6afd9e91f944 100644
--- a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
+++ b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
@@ -802,8 +802,8 @@ static int ena_indirection_table_get(struct ena_adapter *adapter, u32 *indir)
 	return rc;
 }
 
-static int ena_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int ena_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			u32 *indir, u8 *key)
 {
 	struct ena_adapter *adapter = netdev_priv(netdev);
 	enum ena_admin_hash_functions ena_func;
@@ -842,18 +842,19 @@ static int ena_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 		return -EOPNOTSUPP;
 	}
 
-	if (hfunc)
-		*hfunc = func;
+	if (rxfh)
+		rxfh->hfunc = func;
 
 	return 0;
 }
 
-static int ena_set_rxfh(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int ena_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			const u32 *indir, const u8 *key)
 {
 	struct ena_adapter *adapter = netdev_priv(netdev);
 	struct ena_com_dev *ena_dev = adapter->ena_dev;
 	enum ena_admin_hash_functions func = 0;
+	const u8 hfunc = rxfh->hfunc;
 	int rc;
 
 	if (indir) {
diff --git a/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c b/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c
index 6e83ff59172a..10b30bc84c59 100644
--- a/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c
+++ b/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c
@@ -522,8 +522,8 @@ static u32 xgbe_get_rxfh_indir_size(struct net_device *netdev)
 	return ARRAY_SIZE(pdata->rss_table);
 }
 
-static int xgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int xgbe_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct xgbe_prv_data *pdata = netdev_priv(netdev);
 	unsigned int i;
@@ -537,20 +537,21 @@ static int xgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	if (key)
 		memcpy(key, pdata->rss_key, sizeof(pdata->rss_key));
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int xgbe_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int xgbe_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
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
diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
index ac4ea93bd8dd..894a3f9cedda 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
@@ -447,8 +447,9 @@ static u32 aq_ethtool_get_rss_key_size(struct net_device *ndev)
 	return sizeof(cfg->aq_rss.hash_secret_key);
 }
 
-static int aq_ethtool_get_rss(struct net_device *ndev, u32 *indir, u8 *key,
-			      u8 *hfunc)
+static int aq_ethtool_get_rss(struct net_device *ndev,
+			      struct ethtool_rxfh *rxfh,
+			      u32 *indir, u8 *key)
 {
 	struct aq_nic_s *aq_nic = netdev_priv(ndev);
 	struct aq_nic_cfg_s *cfg;
@@ -456,8 +457,8 @@ static int aq_ethtool_get_rss(struct net_device *ndev, u32 *indir, u8 *key,
 
 	cfg = aq_nic_get_cfg(aq_nic);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
 	if (indir) {
 		for (i = 0; i < AQ_CFG_RSS_INDIRECTION_TABLE_MAX; i++)
 			indir[i] = cfg->aq_rss.indirection_table[i];
@@ -469,8 +470,9 @@ static int aq_ethtool_get_rss(struct net_device *ndev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int aq_ethtool_set_rss(struct net_device *netdev, const u32 *indir,
-			      const u8 *key, const u8 hfunc)
+static int aq_ethtool_set_rss(struct net_device *netdev,
+			      struct ethtool_rxfh *rxfh,
+			      const u32 *indir, const u8 *key)
 {
 	struct aq_nic_s *aq_nic = netdev_priv(netdev);
 	struct aq_nic_cfg_s *cfg;
@@ -482,7 +484,8 @@ static int aq_ethtool_set_rss(struct net_device *netdev, const u32 *indir,
 	rss_entries = cfg->aq_rss.indirection_table_size;
 
 	/* We do not allow change in unsupported parameters */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 	/* Fill out the redirection table */
 	if (indir)
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
index bda3ccc28eca..f58a6842389c 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
@@ -3486,15 +3486,15 @@ static u32 bnx2x_get_rxfh_indir_size(struct net_device *dev)
 	return T_ETH_INDIRECTION_TABLE_SIZE;
 }
 
-static int bnx2x_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int bnx2x_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			  u32 *indir, u8 *key)
 {
 	struct bnx2x *bp = netdev_priv(dev);
 	u8 ind_table[T_ETH_INDIRECTION_TABLE_SIZE] = {0};
 	size_t i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (!indir)
 		return 0;
 
@@ -3516,8 +3516,8 @@ static int bnx2x_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int bnx2x_set_rxfh(struct net_device *dev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int bnx2x_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			  const u32 *indir, const u8 *key)
 {
 	struct bnx2x *bp = netdev_priv(dev);
 	size_t i;
@@ -3526,7 +3526,8 @@ static int bnx2x_set_rxfh(struct net_device *dev, const u32 *indir,
 	 * change in any of the unsupported parameters
 	 */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 
 	if (!indir)
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
index 585044310141..8aaca2431b5a 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
@@ -1332,15 +1332,15 @@ static u32 bnxt_get_rxfh_key_size(struct net_device *dev)
 	return HW_HASH_KEY_SIZE;
 }
 
-static int bnxt_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int bnxt_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	struct bnxt_vnic_info *vnic;
 	u32 i, tbl_size;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (!bp->vnic_info)
 		return 0;
@@ -1358,13 +1358,13 @@ static int bnxt_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int bnxt_set_rxfh(struct net_device *dev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int bnxt_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	int rc = 0;
 
-	if (hfunc && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc && rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (key)
diff --git a/drivers/net/ethernet/broadcom/tg3.c b/drivers/net/ethernet/broadcom/tg3.c
index 48b6191efa56..f1492d281d35 100644
--- a/drivers/net/ethernet/broadcom/tg3.c
+++ b/drivers/net/ethernet/broadcom/tg3.c
@@ -12736,13 +12736,14 @@ static u32 tg3_get_rxfh_indir_size(struct net_device *dev)
 	return size;
 }
 
-static int tg3_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
+static int tg3_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			u32 *indir, u8 *key)
 {
 	struct tg3 *tp = netdev_priv(dev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (!indir)
 		return 0;
 
@@ -12752,8 +12753,8 @@ static int tg3_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
 	return 0;
 }
 
-static int tg3_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key,
-			const u8 hfunc)
+static int tg3_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			const u32 *indir, const u8 *key)
 {
 	struct tg3 *tp = netdev_priv(dev);
 	size_t i;
@@ -12762,7 +12763,8 @@ static int tg3_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key,
 	 * change in any of the unsupported parameters
 	 */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 
 	if (!indir)
diff --git a/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c b/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
index d8d71bf97983..40c5d68ae822 100644
--- a/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
+++ b/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
@@ -653,8 +653,8 @@ static u32 nicvf_get_rxfh_indir_size(struct net_device *dev)
 	return nic->rss_info.rss_size;
 }
 
-static int nicvf_get_rxfh(struct net_device *dev, u32 *indir, u8 *hkey,
-			  u8 *hfunc)
+static int nicvf_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			  u32 *indir, u8 *hkey)
 {
 	struct nicvf *nic = netdev_priv(dev);
 	struct nicvf_rss_info *rss = &nic->rss_info;
@@ -668,20 +668,21 @@ static int nicvf_get_rxfh(struct net_device *dev, u32 *indir, u8 *hkey,
 	if (hkey)
 		memcpy(hkey, rss->key, RSS_HASH_KEY_SIZE * sizeof(u64));
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int nicvf_set_rxfh(struct net_device *dev, const u32 *indir,
-			  const u8 *hkey, const u8 hfunc)
+static int nicvf_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			  const u32 *indir, const u8 *hkey)
 {
 	struct nicvf *nic = netdev_priv(dev);
 	struct nicvf_rss_info *rss = &nic->rss_info;
 	int idx;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (!rss->enable) {
diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c
index 8477a93cee6b..e0147ff21647 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c
@@ -1588,13 +1588,14 @@ static u32 get_rss_table_size(struct net_device *dev)
 	return pi->rss_size;
 }
 
-static int get_rss_table(struct net_device *dev, u32 *p, u8 *key, u8 *hfunc)
+static int get_rss_table(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 u32 *p, u8 *key)
 {
 	const struct port_info *pi = netdev_priv(dev);
 	unsigned int n = pi->rss_size;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (!p)
 		return 0;
 	while (n--)
@@ -1602,8 +1603,8 @@ static int get_rss_table(struct net_device *dev, u32 *p, u8 *key, u8 *hfunc)
 	return 0;
 }
 
-static int set_rss_table(struct net_device *dev, const u32 *p, const u8 *key,
-			 const u8 hfunc)
+static int set_rss_table(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 const u32 *p, const u8 *key)
 {
 	unsigned int i;
 	struct port_info *pi = netdev_priv(dev);
@@ -1612,7 +1613,8 @@ static int set_rss_table(struct net_device *dev, const u32 *p, const u8 *key,
 	 * change in any of the unsupported parameters
 	 */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 	if (!p)
 		return 0;
diff --git a/drivers/net/ethernet/cisco/enic/enic_ethtool.c b/drivers/net/ethernet/cisco/enic/enic_ethtool.c
index 08b7cc0a1809..e016b49374ef 100644
--- a/drivers/net/ethernet/cisco/enic/enic_ethtool.c
+++ b/drivers/net/ethernet/cisco/enic/enic_ethtool.c
@@ -568,26 +568,27 @@ static u32 enic_get_rxfh_key_size(struct net_device *netdev)
 	return ENIC_RSS_LEN;
 }
 
-static int enic_get_rxfh(struct net_device *netdev, u32 *indir, u8 *hkey,
-			 u8 *hfunc)
+static int enic_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *hkey)
 {
 	struct enic *enic = netdev_priv(netdev);
 
 	if (hkey)
 		memcpy(hkey, enic->rss_key, ENIC_RSS_LEN);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int enic_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *hkey, const u8 hfunc)
+static int enic_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *hkey)
 {
 	struct enic *enic = netdev_priv(netdev);
 
-	if ((hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) ||
+	if ((rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP) ||
 	    indir)
 		return -EINVAL;
 
diff --git a/drivers/net/ethernet/emulex/benet/be_ethtool.c b/drivers/net/ethernet/emulex/benet/be_ethtool.c
index a29de29bdf23..2ea6cbdfefc1 100644
--- a/drivers/net/ethernet/emulex/benet/be_ethtool.c
+++ b/drivers/net/ethernet/emulex/benet/be_ethtool.c
@@ -1271,8 +1271,8 @@ static u32 be_get_rxfh_key_size(struct net_device *netdev)
 	return RSS_HASH_KEY_LEN;
 }
 
-static int be_get_rxfh(struct net_device *netdev, u32 *indir, u8 *hkey,
-		       u8 *hfunc)
+static int be_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+		       u32 *indir, u8 *hkey)
 {
 	struct be_adapter *adapter = netdev_priv(netdev);
 	int i;
@@ -1286,21 +1286,22 @@ static int be_get_rxfh(struct net_device *netdev, u32 *indir, u8 *hkey,
 	if (hkey)
 		memcpy(hkey, rss->rss_hkey, RSS_HASH_KEY_LEN);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int be_set_rxfh(struct net_device *netdev, const u32 *indir,
-		       const u8 *hkey, const u8 hfunc)
+static int be_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+		       const u32 *indir, const u8 *hkey)
 {
 	int rc = 0, i, j;
 	struct be_adapter *adapter = netdev_priv(netdev);
 	u8 rsstable[RSS_INDIR_TABLE_LEN];
 
 	/* We do not allow change in unsupported parameters */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (indir) {
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
index e993ed04ab57..270a0f700265 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
@@ -690,16 +690,16 @@ static u32 enetc_get_rxfh_indir_size(struct net_device *ndev)
 	return priv->si->num_rss;
 }
 
-static int enetc_get_rxfh(struct net_device *ndev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int enetc_get_rxfh(struct net_device *ndev, struct ethtool_rxfh *rxfh,
+			  u32 *indir, u8 *key)
 {
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	struct enetc_hw *hw = &priv->si->hw;
 	int err = 0, i;
 
 	/* return hash function */
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	/* return hash key */
 	if (key && hw->port)
@@ -722,8 +722,8 @@ void enetc_set_rss_key(struct enetc_hw *hw, const u8 *bytes)
 }
 EXPORT_SYMBOL_GPL(enetc_set_rss_key);
 
-static int enetc_set_rxfh(struct net_device *ndev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int enetc_set_rxfh(struct net_device *ndev, struct ethtool_rxfh *rxfh,
+			  const u32 *indir, const u8 *key)
 {
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	struct enetc_hw *hw = &priv->si->hw;
diff --git a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
index 31aa185f4d17..744a7741b3c7 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
@@ -977,8 +977,8 @@ static u32 fun_get_rxfh_key_size(struct net_device *netdev)
 	return sizeof(fp->rss_key);
 }
 
-static int fun_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int fun_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			u32 *indir, u8 *key)
 {
 	const struct funeth_priv *fp = netdev_priv(netdev);
 
@@ -992,15 +992,15 @@ static int fun_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	if (key)
 		memcpy(key, fp->rss_key, sizeof(fp->rss_key));
 
-	if (hfunc)
-		*hfunc = fp->hash_algo == FUN_ETH_RSS_ALG_TOEPLITZ ?
+	if (rxfh)
+		rxfh->hfunc = fp->hash_algo == FUN_ETH_RSS_ALG_TOEPLITZ ?
 				ETH_RSS_HASH_TOP : ETH_RSS_HASH_CRC32;
 
 	return 0;
 }
 
-static int fun_set_rxfh(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int fun_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			const u32 *indir, const u8 *key)
 {
 	struct funeth_priv *fp = netdev_priv(netdev);
 	const u32 *rss_indir = indir ? indir : fp->indir_table;
@@ -1010,11 +1010,11 @@ static int fun_set_rxfh(struct net_device *netdev, const u32 *indir,
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
diff --git a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
index b54f3706fb97..0ff539f16cae 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
@@ -1187,7 +1187,8 @@ hns_get_rss_indir_size(struct net_device *netdev)
 }
 
 static int
-hns_get_rss(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
+hns_get_rss(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+	    u32 *indir, u8 *key)
 {
 	struct hns_nic_priv *priv = netdev_priv(netdev);
 	struct hnae_ae_ops *ops;
@@ -1203,12 +1204,13 @@ hns_get_rss(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
 	if (!indir)
 		return 0;
 
-	return ops->get_rss(priv->ae_handle, indir, key, hfunc);
+	return ops->get_rss(priv->ae_handle, indir, key,
+			    (rxfh) ? &rxfh->hfunc : NULL);
 }
 
 static int
-hns_set_rss(struct net_device *netdev, const u32 *indir, const u8 *key,
-	    const u8 hfunc)
+hns_set_rss(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+	    const u32 *indir, const u8 *key)
 {
 	struct hns_nic_priv *priv = netdev_priv(netdev);
 	struct hnae_ae_ops *ops;
@@ -1221,12 +1223,13 @@ hns_set_rss(struct net_device *netdev, const u32 *indir, const u8 *key,
 
 	ops = priv->ae_handle->dev->ops;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) {
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP) {
 		netdev_err(netdev, "Invalid hfunc!\n");
 		return -EOPNOTSUPP;
 	}
 
-	return ops->set_rss(priv->ae_handle, indir, key, hfunc);
+	return ops->set_rss(priv->ae_handle, indir, key, rxfh->hfunc);
 }
 
 static int hns_get_rxnfc(struct net_device *netdev,
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
index 682239f33082..8f3cfbd44ff2 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
@@ -941,19 +941,20 @@ static u32 hns3_get_rss_indir_size(struct net_device *netdev)
 	return ae_dev->dev_specs.rss_ind_tbl_size;
 }
 
-static int hns3_get_rss(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int hns3_get_rss(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			u32 *indir, u8 *key)
 {
 	struct hnae3_handle *h = hns3_get_handle(netdev);
 
 	if (!h->ae_algo->ops->get_rss)
 		return -EOPNOTSUPP;
 
-	return h->ae_algo->ops->get_rss(h, indir, key, hfunc);
+	return h->ae_algo->ops->get_rss(h, indir, key,
+					(rxfh) ? &rxfh->hfunc : NULL);
 }
 
-static int hns3_set_rss(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int hns3_set_rss(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			const u32 *indir, const u8 *key)
 {
 	struct hnae3_handle *h = hns3_get_handle(netdev);
 	struct hnae3_ae_dev *ae_dev = pci_get_drvdata(h->pdev);
@@ -962,8 +963,10 @@ static int hns3_set_rss(struct net_device *netdev, const u32 *indir,
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
@@ -974,7 +977,7 @@ static int hns3_set_rss(struct net_device *netdev, const u32 *indir,
 		return -EOPNOTSUPP;
 	}
 
-	return h->ae_algo->ops->set_rss(h, indir, key, hfunc);
+	return h->ae_algo->ops->set_rss(h, indir, key, rxfh->hfunc);
 }
 
 static int hns3_get_rxnfc(struct net_device *netdev,
diff --git a/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c b/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c
index f4b680286911..42cf5ff711d7 100644
--- a/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c
+++ b/drivers/net/ethernet/huawei/hinic/hinic_ethtool.c
@@ -1136,8 +1136,8 @@ static int hinic_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 	return err;
 }
 
-static int hinic_get_rxfh(struct net_device *netdev,
-			  u32 *indir, u8 *key, u8 *hfunc)
+static int hinic_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  u32 *indir, u8 *key)
 {
 	struct hinic_dev *nic_dev = netdev_priv(netdev);
 	u8 hash_engine_type = 0;
@@ -1146,14 +1146,15 @@ static int hinic_get_rxfh(struct net_device *netdev,
 	if (!(nic_dev->flags & HINIC_RSS_ENABLE))
 		return -EOPNOTSUPP;
 
-	if (hfunc) {
+	if (rxfh) {
 		err = hinic_rss_get_hash_engine(nic_dev,
 						nic_dev->rss_tmpl_idx,
 						&hash_engine_type);
 		if (err)
 			return -EFAULT;
 
-		*hfunc = hash_engine_type ? ETH_RSS_HASH_TOP : ETH_RSS_HASH_XOR;
+		rxfh->hfunc = hash_engine_type ?
+			      ETH_RSS_HASH_TOP : ETH_RSS_HASH_XOR;
 	}
 
 	if (indir) {
@@ -1170,8 +1171,8 @@ static int hinic_get_rxfh(struct net_device *netdev,
 	return err;
 }
 
-static int hinic_set_rxfh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int hinic_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  const u32 *indir, const u8 *key)
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
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 13a05604dcc0..7e66f721a1f5 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -1057,14 +1057,14 @@ static u32 fm10k_get_rssrk_size(struct net_device __always_unused *netdev)
 	return FM10K_RSSRK_SIZE * FM10K_RSSRK_ENTRIES_PER_REG;
 }
 
-static int fm10k_get_rssh(struct net_device *netdev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int fm10k_get_rssh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  u32 *indir, u8 *key)
 {
 	struct fm10k_intfc *interface = netdev_priv(netdev);
 	int i, err;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	err = fm10k_get_reta(netdev, indir);
 	if (err || !key)
@@ -1076,15 +1076,16 @@ static int fm10k_get_rssh(struct net_device *netdev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int fm10k_set_rssh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int fm10k_set_rssh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  const u32 *indir, const u8 *key)
 {
 	struct fm10k_intfc *interface = netdev_priv(netdev);
 	struct fm10k_hw *hw = &interface->hw;
 	int i, err;
 
 	/* We do not allow change in unsupported parameters */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	err = fm10k_set_reta(netdev, indir);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index eb9a7b32af73..c91b05502a70 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5122,15 +5122,15 @@ static u32 i40e_get_rxfh_indir_size(struct net_device *netdev)
 /**
  * i40e_get_rxfh - get the rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh buffer to fill
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function
  *
  * Reads the indirection table directly from the hardware. Returns 0 on
  * success.
  **/
-static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int i40e_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
@@ -5138,8 +5138,8 @@ static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	int ret;
 	u16 i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (!indir)
 		return 0;
@@ -5163,15 +5163,15 @@ static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 /**
  * i40e_set_rxfh - set the rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh data
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function to use
  *
  * Returns -EINVAL if the table specifies an invalid queue id, otherwise
  * returns 0 after programming the table.
  **/
-static int i40e_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int i40e_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
@@ -5179,7 +5179,8 @@ static int i40e_set_rxfh(struct net_device *netdev, const u32 *indir,
 	u8 *seed = NULL;
 	u16 i;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (key) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 6f236d1a6444..2f3cd504f249 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1907,20 +1907,20 @@ static u32 iavf_get_rxfh_indir_size(struct net_device *netdev)
 /**
  * iavf_get_rxfh - get the rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh buffer to fill
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function in use
  *
  * Reads the indirection table directly from the hardware. Always returns 0.
  **/
-static int iavf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int iavf_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u16 i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (key)
 		memcpy(key, adapter->rss_key, adapter->rss_key_size);
 
@@ -1935,21 +1935,22 @@ static int iavf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 /**
  * iavf_set_rxfh - set the rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh data
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function to use
  *
  * Returns -EINVAL if the table specifies an invalid queue id, otherwise
  * returns 0 after programming the table.
  **/
-static int iavf_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int iavf_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u16 i;
 
 	/* Only support toeplitz hash function */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (!key && !indir)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a34083567e6f..2c10894c7944 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3268,31 +3268,33 @@ ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
 /**
  * ice_get_rxfh - get the Rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh buffer to fill
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function
  *
  * Reads the indirection table directly from the hardware.
  */
 static int
-ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
+ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+	     u32 *indir, u8 *key)
 {
-	return ice_get_rxfh_context(netdev, indir, key, hfunc, 0);
+	return ice_get_rxfh_context(netdev, indir, key,
+				    (rxfh) ? &rxfh->hfunc : NULL, 0);
 }
 
 /**
  * ice_set_rxfh - set the Rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh data
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function
  *
  * Returns -EINVAL if the table specifies an invalid queue ID, otherwise
  * returns 0 after programming the table.
  */
 static int
-ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
-	     const u8 hfunc)
+ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+	     const u32 *indir, const u8 *key)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
@@ -3301,7 +3303,8 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 	int err;
 
 	dev = ice_pf_to_dev(pf);
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 52ea38669f85..96fc80269bb9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -75,14 +75,14 @@ static u32 idpf_get_rxfh_indir_size(struct net_device *netdev)
 /**
  * idpf_get_rxfh - get the rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh buffer to fill
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function in use
  *
  * Reads the indirection table directly from the hardware. Always returns 0.
  */
-static int idpf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int idpf_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_rss_data *rss_data;
@@ -103,8 +103,8 @@ static int idpf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (key)
 		memcpy(key, rss_data->rss_key, rss_data->rss_key_size);
@@ -123,15 +123,15 @@ static int idpf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 /**
  * idpf_set_rxfh - set the rx flow hash indirection table
  * @netdev: network interface device structure
+ * @rxfh: ethtool_rxfh data
  * @indir: indirection table
  * @key: hash key
- * @hfunc: hash function to use
  *
  * Returns -EINVAL if the table specifies an invalid queue id, otherwise
  * returns 0 after programming the table.
  */
-static int idpf_set_rxfh(struct net_device *netdev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int idpf_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_rss_data *rss_data;
@@ -154,7 +154,8 @@ static int idpf_set_rxfh(struct net_device *netdev, const u32 *indir,
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) {
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP) {
 		err = -EOPNOTSUPP;
 		goto unlock_mutex;
 	}
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 16d2a55d5e17..30d5b73cfdf4 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3282,14 +3282,14 @@ static u32 igb_get_rxfh_indir_size(struct net_device *netdev)
 	return IGB_RETA_SIZE;
 }
 
-static int igb_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			u8 *hfunc)
+static int igb_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			u32 *indir, u8 *key)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (!indir)
 		return 0;
 	for (i = 0; i < IGB_RETA_SIZE; i++)
@@ -3333,8 +3333,8 @@ void igb_write_rss_indir_tbl(struct igb_adapter *adapter)
 	}
 }
 
-static int igb_set_rxfh(struct net_device *netdev, const u32 *indir,
-			const u8 *key, const u8 hfunc)
+static int igb_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			const u32 *indir, const u8 *key)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
@@ -3343,7 +3343,8 @@ static int igb_set_rxfh(struct net_device *netdev, const u32 *indir,
 
 	/* We do not allow change in unsupported parameters */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 	if (!indir)
 		return 0;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 785eaa8e0ba8..74cf158a3a0f 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1428,14 +1428,14 @@ static u32 igc_ethtool_get_rxfh_indir_size(struct net_device *netdev)
 	return IGC_RETA_SIZE;
 }
 
-static int igc_ethtool_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-				u8 *hfunc)
+static int igc_ethtool_get_rxfh(struct net_device *netdev,
+				struct ethtool_rxfh *rxfh, u32 *indir, u8 *key)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (!indir)
 		return 0;
 	for (i = 0; i < IGC_RETA_SIZE; i++)
@@ -1444,8 +1444,9 @@ static int igc_ethtool_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int igc_ethtool_set_rxfh(struct net_device *netdev, const u32 *indir,
-				const u8 *key, const u8 hfunc)
+static int igc_ethtool_set_rxfh(struct net_device *netdev,
+				struct ethtool_rxfh *rxfh,
+				const u32 *indir, const u8 *key)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	u32 num_queues;
@@ -1453,7 +1454,8 @@ static int igc_ethtool_set_rxfh(struct net_device *netdev, const u32 *indir,
 
 	/* We do not allow change in unsupported parameters */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 	if (!indir)
 		return 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 4dd897806fa5..187f35e00d98 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3108,13 +3108,13 @@ static void ixgbe_get_reta(struct ixgbe_adapter *adapter, u32 *indir)
 		indir[i] = adapter->rss_indir_tbl[i] & rss_m;
 }
 
-static int ixgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int ixgbe_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  u32 *indir, u8 *key)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (indir)
 		ixgbe_get_reta(adapter, indir);
@@ -3125,14 +3125,15 @@ static int ixgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int ixgbe_set_rxfh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int ixgbe_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  const u32 *indir, const u8 *key)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	int i;
 	u32 reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	/* Fill out the redirection table */
diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index 296915414a7c..6f96a167bcf4 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -897,14 +897,15 @@ static u32 ixgbevf_get_rxfh_key_size(struct net_device *netdev)
 	return IXGBEVF_RSS_HASH_KEY_SIZE;
 }
 
-static int ixgbevf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			    u8 *hfunc)
+static int ixgbevf_get_rxfh(struct net_device *netdev,
+			    struct ethtool_rxfh *rxfh,
+			    u32 *indir, u8 *key)
 {
 	struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 	int err = 0;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (adapter->hw.mac.type >= ixgbe_mac_X550_vf) {
 		if (key)
diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 29aac327574d..0445d76ac3b8 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -5030,8 +5030,9 @@ static int  mvneta_config_rss(struct mvneta_port *pp)
 	return 0;
 }
 
-static int mvneta_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
-				   const u8 *key, const u8 hfunc)
+static int mvneta_ethtool_set_rxfh(struct net_device *dev,
+				   struct ethtool_rxfh *rxfh,
+				   const u32 *indir, const u8 *key)
 {
 	struct mvneta_port *pp = netdev_priv(dev);
 
@@ -5043,7 +5044,8 @@ static int mvneta_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
 	 * and no change in any of the unsupported parameters
 	 */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 
 	if (!indir)
@@ -5054,8 +5056,9 @@ static int mvneta_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
 	return mvneta_config_rss(pp);
 }
 
-static int mvneta_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-				   u8 *hfunc)
+static int mvneta_ethtool_get_rxfh(struct net_device *dev,
+				   struct ethtool_rxfh *rxfh,
+				   u32 *indir, u8 *key)
 {
 	struct mvneta_port *pp = netdev_priv(dev);
 
@@ -5063,8 +5066,8 @@ static int mvneta_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	if (pp->neta_armada3700)
 		return -EOPNOTSUPP;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (!indir)
 		return 0;
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index 93137606869e..dff67c3addfa 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -5634,8 +5634,9 @@ static u32 mvpp2_ethtool_get_rxfh_indir_size(struct net_device *dev)
 	return mvpp22_rss_is_supported(port) ? MVPP22_RSS_TABLE_ENTRIES : 0;
 }
 
-static int mvpp2_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-				  u8 *hfunc)
+static int mvpp2_ethtool_get_rxfh(struct net_device *dev,
+				  struct ethtool_rxfh *rxfh,
+				  u32 *indir, u8 *key)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
 	int ret = 0;
@@ -5646,14 +5647,15 @@ static int mvpp2_ethtool_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	if (indir)
 		ret = mvpp22_port_rss_ctx_indir_get(port, 0, indir);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_CRC32;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_CRC32;
 
 	return ret;
 }
 
-static int mvpp2_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
-				  const u8 *key, const u8 hfunc)
+static int mvpp2_ethtool_set_rxfh(struct net_device *dev,
+				  struct ethtool_rxfh *rxfh,
+				  const u32 *indir, const u8 *key)
 {
 	struct mvpp2_port *port = netdev_priv(dev);
 	int ret = 0;
@@ -5661,7 +5663,8 @@ static int mvpp2_ethtool_set_rxfh(struct net_device *dev, const u32 *indir,
 	if (!mvpp22_rss_is_supported(port))
 		return -EOPNOTSUPP;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_CRC32)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_CRC32)
 		return -EOPNOTSUPP;
 
 	if (key)
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
index 9efcec549834..dede4d3ae617 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
@@ -917,21 +917,23 @@ static int otx2_get_rxfh_context(struct net_device *dev, u32 *indir,
 }
 
 /* Get RSS configuration */
-static int otx2_get_rxfh(struct net_device *dev, u32 *indir,
-			 u8 *hkey, u8 *hfunc)
+static int otx2_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *hkey)
 {
-	return otx2_get_rxfh_context(dev, indir, hkey, hfunc,
+	return otx2_get_rxfh_context(dev, indir, hkey,
+				     (rxfh) ? &rxfh->hfunc : NULL,
 				     DEFAULT_RSS_CONTEXT_GROUP);
 }
 
 /* Configure RSS table and hash key */
-static int otx2_set_rxfh(struct net_device *dev, const u32 *indir,
-			 const u8 *hkey, const u8 hfunc)
+static int otx2_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *hkey)
 {
 
 	u32 rss_context = DEFAULT_RSS_CONTEXT_GROUP;
 
-	return otx2_set_rxfh_context(dev, indir, hkey, hfunc, &rss_context, 0);
+	return otx2_set_rxfh_context(dev, indir, hkey,
+				     rxfh->hfunc, &rss_context, 0);
 }
 
 static u32 otx2_get_msglevel(struct net_device *netdev)
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c
index 164a13272faa..f647146abbe6 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c
@@ -1258,8 +1258,8 @@ static int mlx4_en_check_rxfh_func(struct net_device *dev, u8 hfunc)
 	return -EINVAL;
 }
 
-static int mlx4_en_get_rxfh(struct net_device *dev, u32 *ring_index, u8 *key,
-			    u8 *hfunc)
+static int mlx4_en_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			    u32 *ring_index, u8 *key)
 {
 	struct mlx4_en_priv *priv = netdev_priv(dev);
 	u32 n = mlx4_en_get_rxfh_indir_size(dev);
@@ -1275,13 +1275,13 @@ static int mlx4_en_get_rxfh(struct net_device *dev, u32 *ring_index, u8 *key,
 	}
 	if (key)
 		memcpy(key, priv->rss_key, MLX4_EN_RSS_KEY_SIZE);
-	if (hfunc)
-		*hfunc = priv->rss_hash_fn;
+	if (rxfh)
+		rxfh->hfunc = priv->rss_hash_fn;
 	return 0;
 }
 
-static int mlx4_en_set_rxfh(struct net_device *dev, const u32 *ring_index,
-			    const u8 *key, const u8 hfunc)
+static int mlx4_en_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			    const u32 *ring_index, const u8 *key)
 {
 	struct mlx4_en_priv *priv = netdev_priv(dev);
 	u32 n = mlx4_en_get_rxfh_indir_size(dev);
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
@@ -1327,8 +1327,8 @@ static int mlx4_en_set_rxfh(struct net_device *dev, const u32 *ring_index,
 		priv->prof->rss_rings = rss_rings;
 	if (key)
 		memcpy(priv->rss_key, key, MLX4_EN_RSS_KEY_SIZE);
-	if (hfunc !=  ETH_RSS_HASH_NO_CHANGE)
-		priv->rss_hash_fn = hfunc;
+	if (rxfh->hfunc !=  ETH_RSS_HASH_NO_CHANGE)
+		priv->rss_hash_fn = rxfh->hfunc;
 
 	if (port_up) {
 		err = mlx4_en_start_port(dev);
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
index b2a5da9739d2..24b826952c2f 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -1173,9 +1173,10 @@ int mlx5e_ethtool_get_link_ksettings(struct mlx5e_priv *priv,
 				     struct ethtool_link_ksettings *link_ksettings);
 int mlx5e_ethtool_set_link_ksettings(struct mlx5e_priv *priv,
 				     const struct ethtool_link_ksettings *link_ksettings);
-int mlx5e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc);
-int mlx5e_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key,
-		   const u8 hfunc);
+int mlx5e_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+		   u32 *indir, u8 *key);
+int mlx5e_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+		   const u32 *indir, const u8 *key);
 u32 mlx5e_ethtool_get_rxfh_key_size(struct mlx5e_priv *priv);
 u32 mlx5e_ethtool_get_rxfh_indir_size(struct mlx5e_priv *priv);
 int mlx5e_ethtool_get_ts_info(struct mlx5e_priv *priv,
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
index 792a0ea544cd..cf572c1723a3 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
@@ -1303,16 +1303,18 @@ static int mlx5e_set_rxfh_context(struct net_device *dev, const u32 *indir,
 	return err;
 }
 
-int mlx5e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-		   u8 *hfunc)
+int mlx5e_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+		   u32 *indir, u8 *key)
 {
-	return mlx5e_get_rxfh_context(netdev, indir, key, hfunc, 0);
+	return mlx5e_get_rxfh_context(netdev, indir, key,
+				      (rxfh) ? &rxfh->hfunc : NULL, 0);
 }
 
-int mlx5e_set_rxfh(struct net_device *dev, const u32 *indir,
-		   const u8 *key, const u8 hfunc)
+int mlx5e_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+		   const u32 *indir, const u8 *key)
 {
 	struct mlx5e_priv *priv = netdev_priv(dev);
+	const u8 hfunc = rxfh->hfunc;
 	int err;
 
 	mutex_lock(&priv->state_lock);
diff --git a/drivers/net/ethernet/microchip/lan743x_ethtool.c b/drivers/net/ethernet/microchip/lan743x_ethtool.c
index 6961cfc55fb9..9567c0fc1b0a 100644
--- a/drivers/net/ethernet/microchip/lan743x_ethtool.c
+++ b/drivers/net/ethernet/microchip/lan743x_ethtool.c
@@ -934,7 +934,8 @@ static u32 lan743x_ethtool_get_rxfh_indir_size(struct net_device *netdev)
 }
 
 static int lan743x_ethtool_get_rxfh(struct net_device *netdev,
-				    u32 *indir, u8 *key, u8 *hfunc)
+				    struct ethtool_rxfh *rxfh,
+				    u32 *indir, u8 *key)
 {
 	struct lan743x_adapter *adapter = netdev_priv(netdev);
 
@@ -977,18 +978,19 @@ static int lan743x_ethtool_get_rxfh(struct net_device *netdev,
 				((four_entries >> 24) & 0x000000FF);
 		}
 	}
-	if (hfunc)
-		(*hfunc) = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	return 0;
 }
 
 static int lan743x_ethtool_set_rxfh(struct net_device *netdev,
-				    const u32 *indir, const u8 *key,
-				    const u8 hfunc)
+				    struct ethtool_rxfh *rxfh,
+				    const u32 *indir, const u8 *key)
 {
 	struct lan743x_adapter *adapter = netdev_priv(netdev);
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (indir) {
diff --git a/drivers/net/ethernet/microsoft/mana/mana_ethtool.c b/drivers/net/ethernet/microsoft/mana/mana_ethtool.c
index 607150165ab4..d5db43ee4033 100644
--- a/drivers/net/ethernet/microsoft/mana/mana_ethtool.c
+++ b/drivers/net/ethernet/microsoft/mana/mana_ethtool.c
@@ -208,14 +208,14 @@ static u32 mana_rss_indir_size(struct net_device *ndev)
 	return MANA_INDIRECT_TABLE_SIZE;
 }
 
-static int mana_get_rxfh(struct net_device *ndev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+static int mana_get_rxfh(struct net_device *ndev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct mana_port_context *apc = netdev_priv(ndev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
 
 	if (indir) {
 		for (i = 0; i < MANA_INDIRECT_TABLE_SIZE; i++)
@@ -228,8 +228,8 @@ static int mana_get_rxfh(struct net_device *ndev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int mana_set_rxfh(struct net_device *ndev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int mana_set_rxfh(struct net_device *ndev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
 {
 	struct mana_port_context *apc = netdev_priv(ndev);
 	bool update_hash = false, update_table = false;
@@ -240,7 +240,8 @@ static int mana_set_rxfh(struct net_device *ndev, const u32 *indir,
 	if (!apc->port_is_up)
 		return -EOPNOTSUPP;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (indir) {
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
index e75cbb287625..89cda7998424 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
@@ -1418,8 +1418,9 @@ static u32 nfp_net_get_rxfh_key_size(struct net_device *netdev)
 	return nfp_net_rss_key_sz(nn);
 }
 
-static int nfp_net_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			    u8 *hfunc)
+static int nfp_net_get_rxfh(struct net_device *netdev,
+			    struct ethtool_rxfh *rxfh,
+			    u32 *indir, u8 *key)
 {
 	struct nfp_net *nn = netdev_priv(netdev);
 	int i;
@@ -1432,24 +1433,24 @@ static int nfp_net_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 			indir[i] = nn->rss_itbl[i];
 	if (key)
 		memcpy(key, nn->rss_key, nfp_net_rss_key_sz(nn));
-	if (hfunc) {
-		*hfunc = nn->rss_hfunc;
-		if (*hfunc >= 1 << ETH_RSS_HASH_FUNCS_COUNT)
-			*hfunc = ETH_RSS_HASH_UNKNOWN;
+	if (rxfh) {
+		rxfh->hfunc = nn->rss_hfunc;
+		if (rxfh->hfunc >= 1 << ETH_RSS_HASH_FUNCS_COUNT)
+			rxfh->hfunc = ETH_RSS_HASH_UNKNOWN;
 	}
-
 	return 0;
 }
 
 static int nfp_net_set_rxfh(struct net_device *netdev,
-			    const u32 *indir, const u8 *key,
-			    const u8 hfunc)
+			    struct ethtool_rxfh *rxfh,
+			    const u32 *indir, const u8 *key)
 {
 	struct nfp_net *nn = netdev_priv(netdev);
 	int i;
 
 	if (!(nn->cap & NFP_NET_CFG_CTRL_RSS_ANY) ||
-	    !(hfunc == ETH_RSS_HASH_NO_CHANGE || hfunc == nn->rss_hfunc))
+	    !(rxfh->hfunc == ETH_RSS_HASH_NO_CHANGE ||
+	      rxfh->hfunc == nn->rss_hfunc))
 		return -EOPNOTSUPP;
 
 	if (!key && !indir)
diff --git a/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c b/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c
index 3a6b0a9bc241..1394b280f2e8 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_ethtool.c
@@ -823,8 +823,8 @@ static u32 ionic_get_rxfh_key_size(struct net_device *netdev)
 	return IONIC_RSS_HASH_KEY_SIZE;
 }
 
-static int ionic_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
-			  u8 *hfunc)
+static int ionic_get_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  u32 *indir, u8 *key)
 {
 	struct ionic_lif *lif = netdev_priv(netdev);
 	unsigned int i, tbl_sz;
@@ -838,18 +838,19 @@ static int ionic_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 	if (key)
 		memcpy(key, lif->rss_hash_key, IONIC_RSS_HASH_KEY_SIZE);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int ionic_set_rxfh(struct net_device *netdev, const u32 *indir,
-			  const u8 *key, const u8 hfunc)
+static int ionic_set_rxfh(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+			  const u32 *indir, const u8 *key)
 {
 	struct ionic_lif *lif = netdev_priv(netdev);
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	return ionic_lif_rss_config(lif, lif->rss_types, key, indir);
diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
index b6b849a079ed..3c9381e0fd13 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
@@ -1370,13 +1370,14 @@ static u32 qede_get_rxfh_key_size(struct net_device *dev)
 	return sizeof(edev->rss_key);
 }
 
-static int qede_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
+static int qede_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct qede_dev *edev = netdev_priv(dev);
 	int i;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (!indir)
 		return 0;
@@ -1390,8 +1391,8 @@ static int qede_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
 	return 0;
 }
 
-static int qede_set_rxfh(struct net_device *dev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+static int qede_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
 {
 	struct qed_update_vport_params *vport_update_params;
 	struct qede_dev *edev = netdev_priv(dev);
@@ -1403,7 +1404,8 @@ static int qede_set_rxfh(struct net_device *dev, const u32 *indir,
 		return -EOPNOTSUPP;
 	}
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (!indir && !key)
diff --git a/drivers/net/ethernet/sfc/ethtool_common.c b/drivers/net/ethernet/sfc/ethtool_common.c
index a8cbceeb301b..bc708cc9b976 100644
--- a/drivers/net/ethernet/sfc/ethtool_common.c
+++ b/drivers/net/ethernet/sfc/ethtool_common.c
@@ -1163,8 +1163,8 @@ u32 efx_ethtool_get_rxfh_key_size(struct net_device *net_dev)
 	return efx->type->rx_hash_key_size;
 }
 
-int efx_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			 u8 *hfunc)
+int efx_ethtool_get_rxfh(struct net_device *net_dev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 	int rc;
@@ -1173,8 +1173,8 @@ int efx_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
 	if (rc)
 		return rc;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (indir)
 		memcpy(indir, efx->rss_context.rx_indir_table,
 		       sizeof(efx->rss_context.rx_indir_table));
@@ -1184,13 +1184,14 @@ int efx_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
 	return 0;
 }
 
-int efx_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
-			 const u8 *key, const u8 hfunc)
+int efx_ethtool_set_rxfh(struct net_device *net_dev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 
 	/* Hash function is Toeplitz, cannot be changed */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 	if (!indir && !key)
 		return 0;
diff --git a/drivers/net/ethernet/sfc/ethtool_common.h b/drivers/net/ethernet/sfc/ethtool_common.h
index 659491932101..05308a2c1d14 100644
--- a/drivers/net/ethernet/sfc/ethtool_common.h
+++ b/drivers/net/ethernet/sfc/ethtool_common.h
@@ -44,10 +44,10 @@ int efx_ethtool_set_rxnfc(struct net_device *net_dev,
 			  struct ethtool_rxnfc *info);
 u32 efx_ethtool_get_rxfh_indir_size(struct net_device *net_dev);
 u32 efx_ethtool_get_rxfh_key_size(struct net_device *net_dev);
-int efx_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			 u8 *hfunc);
-int efx_ethtool_set_rxfh(struct net_device *net_dev,
-			 const u32 *indir, const u8 *key, const u8 hfunc);
+int efx_ethtool_get_rxfh(struct net_device *net_dev, struct ethtool_rxfh *rxfh,
+			 u32 *indir, u8 *key);
+int efx_ethtool_set_rxfh(struct net_device *net_dev, struct ethtool_rxfh *rxfh,
+			 const u32 *indir, const u8 *key);
 int efx_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
 				 u8 *key, u8 *hfunc, u32 rss_context);
 int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
diff --git a/drivers/net/ethernet/sfc/falcon/ethtool.c b/drivers/net/ethernet/sfc/falcon/ethtool.c
index 3976a333f7e3..df81fe6c9703 100644
--- a/drivers/net/ethernet/sfc/falcon/ethtool.c
+++ b/drivers/net/ethernet/sfc/falcon/ethtool.c
@@ -1257,26 +1257,29 @@ static u32 ef4_ethtool_get_rxfh_indir_size(struct net_device *net_dev)
 		0 : ARRAY_SIZE(efx->rx_indir_table));
 }
 
-static int ef4_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-				u8 *hfunc)
+static int ef4_ethtool_get_rxfh(struct net_device *net_dev,
+				struct ethtool_rxfh *rxfh,
+				u32 *indir, u8 *key)
 {
 	struct ef4_nic *efx = netdev_priv(net_dev);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (indir)
 		memcpy(indir, efx->rx_indir_table, sizeof(efx->rx_indir_table));
 	return 0;
 }
 
-static int ef4_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
-				const u8 *key, const u8 hfunc)
+static int ef4_ethtool_set_rxfh(struct net_device *net_dev,
+				struct ethtool_rxfh *rxfh,
+				const u32 *indir, const u8 *key)
 {
 	struct ef4_nic *efx = netdev_priv(net_dev);
 
 	/* We do not allow change in unsupported parameters */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 	if (!indir)
 		return 0;
diff --git a/drivers/net/ethernet/sfc/siena/ethtool_common.c b/drivers/net/ethernet/sfc/siena/ethtool_common.c
index f590e87e5a23..991d2d87a55e 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool_common.c
+++ b/drivers/net/ethernet/sfc/siena/ethtool_common.c
@@ -1164,8 +1164,9 @@ u32 efx_siena_ethtool_get_rxfh_key_size(struct net_device *net_dev)
 	return efx->type->rx_hash_key_size;
 }
 
-int efx_siena_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			       u8 *hfunc)
+int efx_siena_ethtool_get_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh *rxfh,
+			       u32 *indir, u8 *key)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 	int rc;
@@ -1174,8 +1175,8 @@ int efx_siena_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
 	if (rc)
 		return rc;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (indir)
 		memcpy(indir, efx->rss_context.rx_indir_table,
 		       sizeof(efx->rss_context.rx_indir_table));
@@ -1185,13 +1186,15 @@ int efx_siena_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
 	return 0;
 }
 
-int efx_siena_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
-			       const u8 *key, const u8 hfunc)
+int efx_siena_ethtool_set_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh *rxfh,
+			       const u32 *indir, const u8 *key)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 
 	/* Hash function is Toeplitz, cannot be changed */
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 	if (!indir && !key)
 		return 0;
diff --git a/drivers/net/ethernet/sfc/siena/ethtool_common.h b/drivers/net/ethernet/sfc/siena/ethtool_common.h
index 04b375dc6800..a3207b4d3153 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool_common.h
+++ b/drivers/net/ethernet/sfc/siena/ethtool_common.h
@@ -41,10 +41,11 @@ int efx_siena_ethtool_set_rxnfc(struct net_device *net_dev,
 				struct ethtool_rxnfc *info);
 u32 efx_siena_ethtool_get_rxfh_indir_size(struct net_device *net_dev);
 u32 efx_siena_ethtool_get_rxfh_key_size(struct net_device *net_dev);
-int efx_siena_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
-			       u8 *hfunc);
+int efx_siena_ethtool_get_rxfh(struct net_device *net_dev,
+			       struct ethtool_rxfh *rxfh, u32 *indir, u8 *key);
 int efx_siena_ethtool_set_rxfh(struct net_device *net_dev,
-			       const u32 *indir, const u8 *key, const u8 hfunc);
+			       struct ethtool_rxfh *rxfh,
+			       const u32 *indir, const u8 *key);
 int efx_siena_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
 				       u8 *key, u8 *hfunc, u32 rss_context);
 int efx_siena_ethtool_set_rxfh_context(struct net_device *net_dev,
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index f628411ae4ae..8853aec7c6f1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -1077,8 +1077,8 @@ static u32 stmmac_get_rxfh_indir_size(struct net_device *dev)
 	return ARRAY_SIZE(priv->rss.table);
 }
 
-static int stmmac_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			   u8 *hfunc)
+static int stmmac_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			   u32 *indir, u8 *key)
 {
 	struct stmmac_priv *priv = netdev_priv(dev);
 	int i;
@@ -1090,19 +1090,20 @@ static int stmmac_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 
 	if (key)
 		memcpy(key, priv->rss.key, sizeof(priv->rss.key));
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int stmmac_set_rxfh(struct net_device *dev, const u32 *indir,
-			   const u8 *key, const u8 hfunc)
+static int stmmac_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			   const u32 *indir, const u8 *key)
 {
 	struct stmmac_priv *priv = netdev_priv(dev);
 	int i;
 
-	if ((hfunc != ETH_RSS_HASH_NO_CHANGE) && (hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (indir) {
diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index 3ba3c8fb28a5..534c631e8ab6 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -1752,8 +1752,8 @@ static u32 netvsc_rss_indir_size(struct net_device *dev)
 	return ndc->rx_table_sz;
 }
 
-static int netvsc_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
-			   u8 *hfunc)
+static int netvsc_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			   u32 *indir, u8 *key)
 {
 	struct net_device_context *ndc = netdev_priv(dev);
 	struct netvsc_device *ndev = rtnl_dereference(ndc->nvdev);
@@ -1763,8 +1763,8 @@ static int netvsc_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	if (!ndev)
 		return -ENODEV;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;	/* Toeplitz */
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;	/* Toeplitz */
 
 	rndis_dev = ndev->extension;
 	if (indir) {
@@ -1778,8 +1778,8 @@ static int netvsc_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
 	return 0;
 }
 
-static int netvsc_set_rxfh(struct net_device *dev, const u32 *indir,
-			   const u8 *key, const u8 hfunc)
+static int netvsc_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			   const u32 *indir, const u8 *key)
 {
 	struct net_device_context *ndc = netdev_priv(dev);
 	struct netvsc_device *ndev = rtnl_dereference(ndc->nvdev);
@@ -1789,7 +1789,8 @@ static int netvsc_set_rxfh(struct net_device *dev, const u32 *indir,
 	if (!ndev)
 		return -ENODEV;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	rndis_dev = ndev->extension;
diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index d16f592c2061..a28936d6eebf 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -3535,7 +3535,8 @@ static u32 virtnet_get_rxfh_indir_size(struct net_device *dev)
 	return ((struct virtnet_info *)netdev_priv(dev))->rss_indir_table_size;
 }
 
-static int virtnet_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
+static int virtnet_get_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			    u32 *indir, u8 *key)
 {
 	struct virtnet_info *vi = netdev_priv(dev);
 	int i;
@@ -3548,18 +3549,20 @@ static int virtnet_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfu
 	if (key)
 		memcpy(key, vi->ctrl->rss.key, vi->rss_key_size);
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	return 0;
 }
 
-static int virtnet_set_rxfh(struct net_device *dev, const u32 *indir, const u8 *key, const u8 hfunc)
+static int virtnet_set_rxfh(struct net_device *dev, struct ethtool_rxfh *rxfh,
+			    const u32 *indir, const u8 *key)
 {
 	struct virtnet_info *vi = netdev_priv(dev);
 	int i;
 
-	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
 
 	if (indir) {
diff --git a/drivers/net/vmxnet3/vmxnet3_ethtool.c b/drivers/net/vmxnet3/vmxnet3_ethtool.c
index 98c22d7d87a2..e4f937d19a05 100644
--- a/drivers/net/vmxnet3/vmxnet3_ethtool.c
+++ b/drivers/net/vmxnet3/vmxnet3_ethtool.c
@@ -1136,14 +1136,15 @@ vmxnet3_get_rss_indir_size(struct net_device *netdev)
 }
 
 static int
-vmxnet3_get_rss(struct net_device *netdev, u32 *p, u8 *key, u8 *hfunc)
+vmxnet3_get_rss(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+		u32 *p, u8 *key)
 {
 	struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 	struct UPT1_RSSConf *rssConf = adapter->rss_conf;
 	unsigned int n = rssConf->indTableSize;
 
-	if (hfunc)
-		*hfunc = ETH_RSS_HASH_TOP;
+	if (rxfh)
+		rxfh->hfunc = ETH_RSS_HASH_TOP;
 	if (!p)
 		return 0;
 	if (n > UPT1_RSS_MAX_IND_TABLE_SIZE)
@@ -1155,8 +1156,8 @@ vmxnet3_get_rss(struct net_device *netdev, u32 *p, u8 *key, u8 *hfunc)
 }
 
 static int
-vmxnet3_set_rss(struct net_device *netdev, const u32 *p, const u8 *key,
-		const u8 hfunc)
+vmxnet3_set_rss(struct net_device *netdev, struct ethtool_rxfh *rxfh,
+		const u32 *p, const u8 *key)
 {
 	unsigned int i;
 	unsigned long flags;
@@ -1165,7 +1166,8 @@ vmxnet3_set_rss(struct net_device *netdev, const u32 *p, const u8 *key,
 
 	/* We do not allow change in unsupported parameters */
 	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	     rxfh->hfunc != ETH_RSS_HASH_TOP))
 		return -EOPNOTSUPP;
 	if (!p)
 		return 0;
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index c2bb74143eda..f2d9570813b1 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -844,10 +844,10 @@ struct ethtool_ops {
 	int	(*reset)(struct net_device *, u32 *);
 	u32	(*get_rxfh_key_size)(struct net_device *);
 	u32	(*get_rxfh_indir_size)(struct net_device *);
-	int	(*get_rxfh)(struct net_device *, u32 *indir, u8 *key,
-			    u8 *hfunc);
-	int	(*set_rxfh)(struct net_device *, const u32 *indir,
-			    const u8 *key, const u8 hfunc);
+	int	(*get_rxfh)(struct net_device *, struct ethtool_rxfh *,
+			    u32 *indir, u8 *key);
+	int	(*set_rxfh)(struct net_device *, struct ethtool_rxfh *,
+			    const u32 *indir, const u8 *key);
 	int	(*get_rxfh_context)(struct net_device *, u32 *indir, u8 *key,
 				    u8 *hfunc, u32 rss_context);
 	int	(*set_rxfh_context)(struct net_device *, const u32 *indir,
diff --git a/net/ethtool/common.c b/net/ethtool/common.c
index 11d8797f63f6..22b5f6e5cd57 100644
--- a/net/ethtool/common.c
+++ b/net/ethtool/common.c
@@ -604,7 +604,7 @@ int ethtool_get_max_rxfh_channel(struct net_device *dev, u32 *max)
 	if (!indir)
 		return -ENOMEM;
 
-	ret = dev->ethtool_ops->get_rxfh(dev, indir, NULL, NULL);
+	ret = dev->ethtool_ops->get_rxfh(dev, NULL, indir, NULL);
 	if (ret)
 		goto out;
 
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 0b0ce4f81c01..f4e6067d200f 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1089,7 +1089,7 @@ static noinline_for_stack int ethtool_get_rxfh_indir(struct net_device *dev,
 	if (!indir)
 		return -ENOMEM;
 
-	ret = dev->ethtool_ops->get_rxfh(dev, indir, NULL, NULL);
+	ret = dev->ethtool_ops->get_rxfh(dev, NULL, indir, NULL);
 	if (ret)
 		goto out;
 
@@ -1108,6 +1108,7 @@ static noinline_for_stack int ethtool_set_rxfh_indir(struct net_device *dev,
 {
 	struct ethtool_rxnfc rx_rings;
 	u32 user_size, dev_size, i;
+	struct ethtool_rxfh rxfh;
 	u32 *indir;
 	const struct ethtool_ops *ops = dev->ethtool_ops;
 	int ret;
@@ -1150,7 +1151,8 @@ static noinline_for_stack int ethtool_set_rxfh_indir(struct net_device *dev,
 			goto out;
 	}
 
-	ret = ops->set_rxfh(dev, indir, NULL, ETH_RSS_HASH_NO_CHANGE);
+	rxfh.hfunc = ETH_RSS_HASH_NO_CHANGE;
+	ret = ops->set_rxfh(dev, &rxfh, indir, NULL);
 	if (ret)
 		goto out;
 
@@ -1176,7 +1178,6 @@ static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 	u32 total_size;
 	u32 indir_bytes;
 	u32 *indir = NULL;
-	u8 dev_hfunc = 0;
 	u8 *hkey = NULL;
 	u8 *rss_config;
 
@@ -1200,15 +1201,13 @@ static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 	if (rxfh.rss_context && !ops->get_rxfh_context)
 		return -EOPNOTSUPP;
 
-	rxfh.indir_size = dev_indir_size;
-	rxfh.key_size = dev_key_size;
-	if (copy_to_user(useraddr, &rxfh, sizeof(rxfh)))
-		return -EFAULT;
-
 	if ((user_indir_size && (user_indir_size != dev_indir_size)) ||
 	    (user_key_size && (user_key_size != dev_key_size)))
 		return -EINVAL;
 
+	rxfh.indir_size = dev_indir_size;
+	rxfh.key_size = dev_key_size;
+
 	indir_bytes = user_indir_size * sizeof(indir[0]);
 	total_size = indir_bytes + user_key_size;
 	rss_config = kzalloc(total_size, GFP_USER);
@@ -1223,15 +1222,14 @@ static noinline_for_stack int ethtool_get_rxfh(struct net_device *dev,
 
 	if (rxfh.rss_context)
 		ret = dev->ethtool_ops->get_rxfh_context(dev, indir, hkey,
-							 &dev_hfunc,
+							 &rxfh.hfunc,
 							 rxfh.rss_context);
 	else
-		ret = dev->ethtool_ops->get_rxfh(dev, indir, hkey, &dev_hfunc);
+		ret = dev->ethtool_ops->get_rxfh(dev, &rxfh, indir, hkey);
 	if (ret)
 		goto out;
 
-	if (copy_to_user(useraddr + offsetof(struct ethtool_rxfh, hfunc),
-			 &dev_hfunc, sizeof(rxfh.hfunc))) {
+	if (copy_to_user(useraddr, &rxfh, sizeof(rxfh))) {
 		ret = -EFAULT;
 	} else if (copy_to_user(useraddr +
 			      offsetof(struct ethtool_rxfh, rss_config[0]),
@@ -1336,7 +1334,7 @@ static noinline_for_stack int ethtool_set_rxfh(struct net_device *dev,
 		ret = ops->set_rxfh_context(dev, indir, hkey, rxfh.hfunc,
 					    &rxfh.rss_context, delete);
 	else
-		ret = ops->set_rxfh(dev, indir, hkey, rxfh.hfunc);
+		ret = ops->set_rxfh(dev, &rxfh, indir, hkey);
 	if (ret)
 		goto out;
 
diff --git a/net/ethtool/rss.c b/net/ethtool/rss.c
index 5764202e6cb6..2d11f881810d 100644
--- a/net/ethtool/rss.c
+++ b/net/ethtool/rss.c
@@ -50,7 +50,7 @@ rss_prepare_data(const struct ethnl_req_info *req_base,
 	struct net_device *dev = reply_base->dev;
 	const struct ethtool_ops *ops;
 	u32 total_size, indir_bytes;
-	u8 dev_hfunc = 0;
+	struct ethtool_rxfh rxfh;
 	u8 *rss_config;
 	int ret;
 
@@ -89,15 +89,14 @@ rss_prepare_data(const struct ethnl_req_info *req_base,
 
 	if (request->rss_context)
 		ret = ops->get_rxfh_context(dev, data->indir_table, data->hkey,
-					    &dev_hfunc, request->rss_context);
+					    &rxfh.hfunc, request->rss_context);
 	else
-		ret = ops->get_rxfh(dev, data->indir_table, data->hkey,
-				    &dev_hfunc);
+		ret = ops->get_rxfh(dev, &rxfh, data->indir_table, data->hkey);
 
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
