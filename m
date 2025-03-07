Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 450EBA56A8C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A45B60F69;
	Fri,  7 Mar 2025 14:38:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OX_WFg_RfC3l; Fri,  7 Mar 2025 14:38:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 371AE60BD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741358318;
	bh=ZSpn8eWPyF+H3gkkgmsJmcLv2gMth/DhQZSQr2EH5WM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yXURbZ9QgL9WQR8L3z0DjKtpU6qDUoRjpFTfrgjcMBiNLF6A5/deVFL7xlx8ynL1l
	 cQlbQUMLfipnfL9TdMsqUMykWhPWJsdjV8Va7bTVWUXNLBDsGPNL88ItXqxlzP79+a
	 XBvK1gUethh5gs9hzZ0VnaO4/RNkwm/hlvWBGj1CEa8KE5e33bQUqvFfjhOLXnydEC
	 SlyuChCl0uwdlEtd0HSvFnxeu4sY2gXkARCxiBbbomhCa9OXY5OuMw+HWLR70FlkHd
	 xBZYqZNDgivS0IL05UDu77B1Ac1/YrXpd+DtJPRkY38fCZDgErSUUrTtAPxWDZkPQX
	 Ka7Jpn+pgAmGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 371AE60BD0;
	Fri,  7 Mar 2025 14:38:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C4CD944
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67A004076C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oHZBswBcicqE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:38:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 56EB3413E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56EB3413E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56EB3413E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:30 +0000 (UTC)
X-CSE-ConnectionGUID: xKGndYZTS0OOvdIlEa6hDQ==
X-CSE-MsgGUID: Foe3b/UoT76AUB/3eveRzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42263303"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42263303"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:38:31 -0800
X-CSE-ConnectionGUID: tbRoypROSdmH0AnA8kcggA==
X-CSE-MsgGUID: 6mMma5h+S/mNu/s8aQW3SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142570759"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 07 Mar 2025 06:38:27 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Fri,  7 Mar 2025 15:24:06 +0100
Message-Id: <20250307142419.314402-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741358311; x=1772894311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+j455NyaZa8EvH8xvQZP9n/qvBR/eENkDyxDZD5aN1c=;
 b=LijZ8WhJmj2+0UHV42iIMaHxbzOfbthxXkZsQ72rh765vTmChVhy+Jc8
 t5mMZj4UFV21LEtBA6lRzl280S4jQBGV1mkfhvHUu7Aee1RGKOw8Msttu
 6vp29E5dl98MVRw4Xl9+2AbDW9Zu0YDIc0i37GkiNjCM91MPifijD1fRT
 4qJTloNebFmh86cqP11vSSpS9OAuN+wLeC9iSR+xHXLExuPQ2AGZsDgIk
 eM1D/xGkhfvbK6muJ/AjuAhw3j8j6El4GdRrPWwYJTT0lecNgrIMoksXX
 c6uNg/ttGOUb82mWShJcgdHIHhuKNfmXj8xjC3Qd09gGhrjiT1rcxC0ZY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LijZ8WhJ
Subject: [Intel-wired-lan] [PATCH iwl-next v6 02/15] ixgbe: wrap
 netdev_priv() usage
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

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Wrap use of netdev_priv() in order to change the allocator of the device
private structure from alloc_etherdev_mq() to the devlink in next commit.

All but one netdev_priv() calls in the whole driver are replaced, the
remaining one is called on MACVLAN (so not ixgbe) device.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  5 ++
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   | 56 +++++++-------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 74 +++++++++----------
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 12 +--
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 10 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 74 +++++++++----------
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 16 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |  2 +-
 8 files changed, 127 insertions(+), 122 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index e6a380d4929b..0efd6da874a5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -830,6 +830,11 @@ struct ixgbe_adapter {
 	spinlock_t vfs_lock;
 };
 
+static inline struct ixgbe_adapter *ixgbe_from_netdev(struct net_device *netdev)
+{
+	return netdev_priv(netdev);
+}
+
 static inline int ixgbe_determine_xdp_q_idx(int cpu)
 {
 	if (static_key_enabled(&ixgbe_xdp_locking_key))
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
index 19d6b6fa8fb3..3dd5a16a14df 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
@@ -118,14 +118,14 @@ static int ixgbe_copy_dcb_cfg(struct ixgbe_adapter *adapter, int tc_max)
 
 static u8 ixgbe_dcbnl_get_state(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	return !!(adapter->flags & IXGBE_FLAG_DCB_ENABLED);
 }
 
 static u8 ixgbe_dcbnl_set_state(struct net_device *netdev, u8 state)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	/* Fail command if not in CEE mode */
 	if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
@@ -142,7 +142,7 @@ static u8 ixgbe_dcbnl_set_state(struct net_device *netdev, u8 state)
 static void ixgbe_dcbnl_get_perm_hw_addr(struct net_device *netdev,
 					 u8 *perm_addr)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	int i, j;
 
 	memset(perm_addr, 0xff, MAX_ADDR_LEN);
@@ -167,7 +167,7 @@ static void ixgbe_dcbnl_set_pg_tc_cfg_tx(struct net_device *netdev, int tc,
 					 u8 prio, u8 bwg_id, u8 bw_pct,
 					 u8 up_map)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (prio != DCB_ATTR_VALUE_UNDEFINED)
 		adapter->temp_dcb_cfg.tc_config[tc].path[0].prio_type = prio;
@@ -184,7 +184,7 @@ static void ixgbe_dcbnl_set_pg_tc_cfg_tx(struct net_device *netdev, int tc,
 static void ixgbe_dcbnl_set_pg_bwg_cfg_tx(struct net_device *netdev, int bwg_id,
 					  u8 bw_pct)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	adapter->temp_dcb_cfg.bw_percentage[0][bwg_id] = bw_pct;
 }
@@ -193,7 +193,7 @@ static void ixgbe_dcbnl_set_pg_tc_cfg_rx(struct net_device *netdev, int tc,
 					 u8 prio, u8 bwg_id, u8 bw_pct,
 					 u8 up_map)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (prio != DCB_ATTR_VALUE_UNDEFINED)
 		adapter->temp_dcb_cfg.tc_config[tc].path[1].prio_type = prio;
@@ -210,7 +210,7 @@ static void ixgbe_dcbnl_set_pg_tc_cfg_rx(struct net_device *netdev, int tc,
 static void ixgbe_dcbnl_set_pg_bwg_cfg_rx(struct net_device *netdev, int bwg_id,
 					  u8 bw_pct)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	adapter->temp_dcb_cfg.bw_percentage[1][bwg_id] = bw_pct;
 }
@@ -219,7 +219,7 @@ static void ixgbe_dcbnl_get_pg_tc_cfg_tx(struct net_device *netdev, int tc,
 					 u8 *prio, u8 *bwg_id, u8 *bw_pct,
 					 u8 *up_map)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	*prio = adapter->dcb_cfg.tc_config[tc].path[0].prio_type;
 	*bwg_id = adapter->dcb_cfg.tc_config[tc].path[0].bwg_id;
@@ -230,7 +230,7 @@ static void ixgbe_dcbnl_get_pg_tc_cfg_tx(struct net_device *netdev, int tc,
 static void ixgbe_dcbnl_get_pg_bwg_cfg_tx(struct net_device *netdev, int bwg_id,
 					  u8 *bw_pct)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	*bw_pct = adapter->dcb_cfg.bw_percentage[0][bwg_id];
 }
@@ -239,7 +239,7 @@ static void ixgbe_dcbnl_get_pg_tc_cfg_rx(struct net_device *netdev, int tc,
 					 u8 *prio, u8 *bwg_id, u8 *bw_pct,
 					 u8 *up_map)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	*prio = adapter->dcb_cfg.tc_config[tc].path[1].prio_type;
 	*bwg_id = adapter->dcb_cfg.tc_config[tc].path[1].bwg_id;
@@ -250,7 +250,7 @@ static void ixgbe_dcbnl_get_pg_tc_cfg_rx(struct net_device *netdev, int tc,
 static void ixgbe_dcbnl_get_pg_bwg_cfg_rx(struct net_device *netdev, int bwg_id,
 					  u8 *bw_pct)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	*bw_pct = adapter->dcb_cfg.bw_percentage[1][bwg_id];
 }
@@ -258,7 +258,7 @@ static void ixgbe_dcbnl_get_pg_bwg_cfg_rx(struct net_device *netdev, int bwg_id,
 static void ixgbe_dcbnl_set_pfc_cfg(struct net_device *netdev, int priority,
 				    u8 setting)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	adapter->temp_dcb_cfg.tc_config[priority].dcb_pfc = setting;
 	if (adapter->temp_dcb_cfg.tc_config[priority].dcb_pfc !=
@@ -269,14 +269,14 @@ static void ixgbe_dcbnl_set_pfc_cfg(struct net_device *netdev, int priority,
 static void ixgbe_dcbnl_get_pfc_cfg(struct net_device *netdev, int priority,
 				    u8 *setting)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	*setting = adapter->dcb_cfg.tc_config[priority].dcb_pfc;
 }
 
 static void ixgbe_dcbnl_devreset(struct net_device *dev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 
 	while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
@@ -295,7 +295,7 @@ static void ixgbe_dcbnl_devreset(struct net_device *dev)
 
 static u8 ixgbe_dcbnl_set_all(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_dcb_config *dcb_cfg = &adapter->dcb_cfg;
 	struct ixgbe_hw *hw = &adapter->hw;
 	int ret = DCB_NO_HW_CHG;
@@ -383,7 +383,7 @@ static u8 ixgbe_dcbnl_set_all(struct net_device *netdev)
 
 static u8 ixgbe_dcbnl_getcap(struct net_device *netdev, int capid, u8 *cap)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	switch (capid) {
 	case DCB_CAP_ATTR_PG:
@@ -420,7 +420,7 @@ static u8 ixgbe_dcbnl_getcap(struct net_device *netdev, int capid, u8 *cap)
 
 static int ixgbe_dcbnl_getnumtcs(struct net_device *netdev, int tcid, u8 *num)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (adapter->flags & IXGBE_FLAG_DCB_ENABLED) {
 		switch (tcid) {
@@ -447,14 +447,14 @@ static int ixgbe_dcbnl_setnumtcs(struct net_device *netdev, int tcid, u8 num)
 
 static u8 ixgbe_dcbnl_getpfcstate(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	return adapter->dcb_cfg.pfc_mode_enable;
 }
 
 static void ixgbe_dcbnl_setpfcstate(struct net_device *netdev, u8 state)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	adapter->temp_dcb_cfg.pfc_mode_enable = state;
 }
@@ -471,7 +471,7 @@ static void ixgbe_dcbnl_setpfcstate(struct net_device *netdev, u8 state)
  */
 static int ixgbe_dcbnl_getapp(struct net_device *netdev, u8 idtype, u16 id)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct dcb_app app = {
 				.selector = idtype,
 				.protocol = id,
@@ -486,7 +486,7 @@ static int ixgbe_dcbnl_getapp(struct net_device *netdev, u8 idtype, u16 id)
 static int ixgbe_dcbnl_ieee_getets(struct net_device *dev,
 				   struct ieee_ets *ets)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ieee_ets *my_ets = adapter->ixgbe_ieee_ets;
 
 	ets->ets_cap = adapter->dcb_cfg.num_tcs.pg_tcs;
@@ -506,7 +506,7 @@ static int ixgbe_dcbnl_ieee_getets(struct net_device *dev,
 static int ixgbe_dcbnl_ieee_setets(struct net_device *dev,
 				   struct ieee_ets *ets)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	int max_frame = dev->mtu + ETH_HLEN + ETH_FCS_LEN;
 	int i, err;
 	__u8 max_tc = 0;
@@ -559,7 +559,7 @@ static int ixgbe_dcbnl_ieee_setets(struct net_device *dev,
 static int ixgbe_dcbnl_ieee_getpfc(struct net_device *dev,
 				   struct ieee_pfc *pfc)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ieee_pfc *my_pfc = adapter->ixgbe_ieee_pfc;
 	int i;
 
@@ -584,7 +584,7 @@ static int ixgbe_dcbnl_ieee_getpfc(struct net_device *dev,
 static int ixgbe_dcbnl_ieee_setpfc(struct net_device *dev,
 				   struct ieee_pfc *pfc)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u8 *prio_tc;
 	int err;
@@ -616,7 +616,7 @@ static int ixgbe_dcbnl_ieee_setpfc(struct net_device *dev,
 static int ixgbe_dcbnl_ieee_setapp(struct net_device *dev,
 				   struct dcb_app *app)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	int err;
 
 	if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
@@ -661,7 +661,7 @@ static int ixgbe_dcbnl_ieee_setapp(struct net_device *dev,
 static int ixgbe_dcbnl_ieee_delapp(struct net_device *dev,
 				   struct dcb_app *app)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	int err;
 
 	if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
@@ -705,13 +705,13 @@ static int ixgbe_dcbnl_ieee_delapp(struct net_device *dev,
 
 static u8 ixgbe_dcbnl_getdcbx(struct net_device *dev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	return adapter->dcbx_cap;
 }
 
 static u8 ixgbe_dcbnl_setdcbx(struct net_device *dev, u8 mode)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ieee_ets ets = {0};
 	struct ieee_pfc pfc = {0};
 	int err = 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index da91c582d439..0b21e70918b6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -213,7 +213,7 @@ static void ixgbe_set_advertising_10gtypes(struct ixgbe_hw *hw,
 static int ixgbe_get_link_ksettings(struct net_device *netdev,
 				    struct ethtool_link_ksettings *cmd)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	ixgbe_link_speed supported_link;
 	bool autoneg = false;
@@ -458,7 +458,7 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 static int ixgbe_set_link_ksettings(struct net_device *netdev,
 				    const struct ethtool_link_ksettings *cmd)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 advertised, old;
 	int err = 0;
@@ -535,7 +535,7 @@ static int ixgbe_set_link_ksettings(struct net_device *netdev,
 static void ixgbe_get_pause_stats(struct net_device *netdev,
 				  struct ethtool_pause_stats *stats)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw_stats *hwstats = &adapter->stats;
 
 	stats->tx_pause_frames = hwstats->lxontxc + hwstats->lxofftxc;
@@ -545,7 +545,7 @@ static void ixgbe_get_pause_stats(struct net_device *netdev,
 static void ixgbe_get_pauseparam(struct net_device *netdev,
 				 struct ethtool_pauseparam *pause)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	if (ixgbe_device_supports_autoneg_fc(hw) &&
@@ -567,7 +567,7 @@ static void ixgbe_get_pauseparam(struct net_device *netdev,
 static int ixgbe_set_pauseparam(struct net_device *netdev,
 				struct ethtool_pauseparam *pause)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ixgbe_fc_info fc = hw->fc;
 
@@ -606,13 +606,13 @@ static int ixgbe_set_pauseparam(struct net_device *netdev,
 
 static u32 ixgbe_get_msglevel(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	return adapter->msg_enable;
 }
 
 static void ixgbe_set_msglevel(struct net_device *netdev, u32 data)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	adapter->msg_enable = data;
 }
 
@@ -627,7 +627,7 @@ static int ixgbe_get_regs_len(struct net_device *netdev)
 static void ixgbe_get_regs(struct net_device *netdev,
 			   struct ethtool_regs *regs, void *p)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 *regs_buff = p;
 	u8 i;
@@ -994,14 +994,14 @@ static void ixgbe_get_regs(struct net_device *netdev,
 
 static int ixgbe_get_eeprom_len(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	return adapter->hw.eeprom.word_size * 2;
 }
 
 static int ixgbe_get_eeprom(struct net_device *netdev,
 			    struct ethtool_eeprom *eeprom, u8 *bytes)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u16 *eeprom_buff;
 	int first_word, last_word, eeprom_len;
@@ -1037,7 +1037,7 @@ static int ixgbe_get_eeprom(struct net_device *netdev,
 static int ixgbe_set_eeprom(struct net_device *netdev,
 			    struct ethtool_eeprom *eeprom, u8 *bytes)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u16 *eeprom_buff;
 	void *ptr;
@@ -1107,7 +1107,7 @@ static int ixgbe_set_eeprom(struct net_device *netdev,
 static void ixgbe_get_drvinfo(struct net_device *netdev,
 			      struct ethtool_drvinfo *drvinfo)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	strscpy(drvinfo->driver, ixgbe_driver_name, sizeof(drvinfo->driver));
 
@@ -1161,7 +1161,7 @@ static void ixgbe_get_ringparam(struct net_device *netdev,
 				struct kernel_ethtool_ringparam *kernel_ring,
 				struct netlink_ext_ack *extack)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_ring *tx_ring = adapter->tx_ring[0];
 	struct ixgbe_ring *rx_ring = adapter->rx_ring[0];
 
@@ -1176,7 +1176,7 @@ static int ixgbe_set_ringparam(struct net_device *netdev,
 			       struct kernel_ethtool_ringparam *kernel_ring,
 			       struct netlink_ext_ack *extack)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_ring *temp_ring;
 	int i, j, err = 0;
 	u32 new_rx_count, new_tx_count;
@@ -1336,7 +1336,7 @@ static int ixgbe_get_sset_count(struct net_device *netdev, int sset)
 static void ixgbe_get_ethtool_stats(struct net_device *netdev,
 				    struct ethtool_stats *stats, u64 *data)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct rtnl_link_stats64 temp;
 	const struct rtnl_link_stats64 *net_stats;
 	unsigned int start;
@@ -1710,7 +1710,7 @@ static int ixgbe_eeprom_test(struct ixgbe_adapter *adapter, u64 *data)
 static irqreturn_t ixgbe_test_intr(int irq, void *data)
 {
 	struct net_device *netdev = (struct net_device *) data;
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	adapter->test_icr |= IXGBE_READ_REG(&adapter->hw, IXGBE_EICR);
 
@@ -2183,7 +2183,7 @@ static int ixgbe_loopback_test(struct ixgbe_adapter *adapter, u64 *data)
 static void ixgbe_diag_test(struct net_device *netdev,
 			    struct ethtool_test *eth_test, u64 *data)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	bool if_running = netif_running(netdev);
 
 	if (ixgbe_removed(adapter->hw.hw_addr)) {
@@ -2306,7 +2306,7 @@ static int ixgbe_wol_exclusion(struct ixgbe_adapter *adapter,
 static void ixgbe_get_wol(struct net_device *netdev,
 			  struct ethtool_wolinfo *wol)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	wol->supported = WAKE_UCAST | WAKE_MCAST |
 			 WAKE_BCAST | WAKE_MAGIC;
@@ -2328,7 +2328,7 @@ static void ixgbe_get_wol(struct net_device *netdev,
 
 static int ixgbe_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (wol->wolopts & (WAKE_PHY | WAKE_ARP | WAKE_MAGICSECURE |
 			    WAKE_FILTER))
@@ -2355,7 +2355,7 @@ static int ixgbe_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 
 static int ixgbe_nway_reset(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (netif_running(netdev))
 		ixgbe_reinit_locked(adapter);
@@ -2366,7 +2366,7 @@ static int ixgbe_nway_reset(struct net_device *netdev)
 static int ixgbe_set_phys_id(struct net_device *netdev,
 			     enum ethtool_phys_id_state state)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	if (!hw->mac.ops.led_on || !hw->mac.ops.led_off)
@@ -2399,7 +2399,7 @@ static int ixgbe_get_coalesce(struct net_device *netdev,
 			      struct kernel_ethtool_coalesce *kernel_coal,
 			      struct netlink_ext_ack *extack)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	/* only valid if in constant ITR mode */
 	if (adapter->rx_itr_setting <= 1)
@@ -2455,7 +2455,7 @@ static int ixgbe_set_coalesce(struct net_device *netdev,
 			      struct kernel_ethtool_coalesce *kernel_coal,
 			      struct netlink_ext_ack *extack)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_q_vector *q_vector;
 	int i;
 	u16 tx_itr_param, rx_itr_param, tx_itr_prev;
@@ -2681,7 +2681,7 @@ static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
 static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 			   u32 *rule_locs)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
@@ -3069,7 +3069,7 @@ static int ixgbe_set_rss_hash_opt(struct ixgbe_adapter *adapter,
 
 static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
@@ -3096,7 +3096,7 @@ static u32 ixgbe_get_rxfh_key_size(struct net_device *netdev)
 
 static u32 ixgbe_rss_indir_size(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	return ixgbe_rss_indir_tbl_entries(adapter);
 }
@@ -3116,7 +3116,7 @@ static void ixgbe_get_reta(struct ixgbe_adapter *adapter, u32 *indir)
 static int ixgbe_get_rxfh(struct net_device *netdev,
 			  struct ethtool_rxfh_param *rxfh)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
@@ -3134,7 +3134,7 @@ static int ixgbe_set_rxfh(struct net_device *netdev,
 			  struct ethtool_rxfh_param *rxfh,
 			  struct netlink_ext_ack *extack)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	int i;
 	u32 reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 
@@ -3176,7 +3176,7 @@ static int ixgbe_set_rxfh(struct net_device *netdev,
 static int ixgbe_get_ts_info(struct net_device *dev,
 			     struct kernel_ethtool_ts_info *info)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 
 	/* we always support timestamping disabled */
 	info->rx_filters = BIT(HWTSTAMP_FILTER_NONE);
@@ -3251,7 +3251,7 @@ static unsigned int ixgbe_max_channels(struct ixgbe_adapter *adapter)
 static void ixgbe_get_channels(struct net_device *dev,
 			       struct ethtool_channels *ch)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 
 	/* report maximum channels */
 	ch->max_combined = ixgbe_max_channels(adapter);
@@ -3288,7 +3288,7 @@ static void ixgbe_get_channels(struct net_device *dev,
 static int ixgbe_set_channels(struct net_device *dev,
 			      struct ethtool_channels *ch)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	unsigned int count = ch->combined_count;
 	u8 max_rss_indices = ixgbe_max_rss_indices(adapter);
 
@@ -3326,7 +3326,7 @@ static int ixgbe_set_channels(struct net_device *dev,
 static int ixgbe_get_module_info(struct net_device *dev,
 				       struct ethtool_modinfo *modinfo)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u8 sff8472_rev, addr_mode;
 	bool page_swap = false;
@@ -3372,7 +3372,7 @@ static int ixgbe_get_module_eeprom(struct net_device *dev,
 					 struct ethtool_eeprom *ee,
 					 u8 *data)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	int status = -EFAULT;
 	u8 databyte = 0xFF;
@@ -3468,7 +3468,7 @@ ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
 
 static int ixgbe_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
@@ -3482,7 +3482,7 @@ static int ixgbe_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 
 static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ethtool_keee eee_data;
 	int ret_val;
@@ -3537,7 +3537,7 @@ static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 
 static u32 ixgbe_get_priv_flags(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	u32 priv_flags = 0;
 
 	if (adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
@@ -3554,7 +3554,7 @@ static u32 ixgbe_get_priv_flags(struct net_device *netdev)
 
 static int ixgbe_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	unsigned int flags2 = adapter->flags2;
 	unsigned int i;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index 955dced844a9..7dcf6ecd157b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -56,7 +56,7 @@ int ixgbe_fcoe_ddp_put(struct net_device *netdev, u16 xid)
 	if (xid >= netdev->fcoe_ddp_xid)
 		return 0;
 
-	adapter = netdev_priv(netdev);
+	adapter = ixgbe_from_netdev(netdev);
 	fcoe = &adapter->fcoe;
 	ddp = &fcoe->ddp[xid];
 	if (!ddp->udl)
@@ -153,7 +153,7 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 	if (!netdev || !sgl)
 		return 0;
 
-	adapter = netdev_priv(netdev);
+	adapter = ixgbe_from_netdev(netdev);
 	if (xid >= netdev->fcoe_ddp_xid) {
 		e_warn(drv, "xid=0x%x out-of-range\n", xid);
 		return 0;
@@ -834,7 +834,7 @@ static void ixgbe_fcoe_ddp_disable(struct ixgbe_adapter *adapter)
  */
 int ixgbe_fcoe_enable(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_fcoe *fcoe = &adapter->fcoe;
 
 	atomic_inc(&fcoe->refcnt);
@@ -881,7 +881,7 @@ int ixgbe_fcoe_enable(struct net_device *netdev)
  */
 int ixgbe_fcoe_disable(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (!atomic_dec_and_test(&adapter->fcoe.refcnt))
 		return -EINVAL;
@@ -927,7 +927,7 @@ int ixgbe_fcoe_disable(struct net_device *netdev)
 int ixgbe_fcoe_get_wwn(struct net_device *netdev, u64 *wwn, int type)
 {
 	u16 prefix = 0xffff;
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_mac_info *mac = &adapter->hw.mac;
 
 	switch (type) {
@@ -967,7 +967,7 @@ int ixgbe_fcoe_get_wwn(struct net_device *netdev, u64 *wwn, int type)
 int ixgbe_fcoe_get_hbainfo(struct net_device *netdev,
 			   struct netdev_fcoe_hbainfo *info)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u64 dsn;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index 866024f2b9ee..cb5b29fa6eb3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -478,7 +478,7 @@ static int ixgbe_ipsec_parse_proto_keys(struct xfrm_state *xs,
 static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 {
 	struct net_device *dev = xs->xso.real_dev;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 mfval, manc, reg;
 	int num_filters = 4;
@@ -563,7 +563,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 			      struct netlink_ext_ack *extack)
 {
 	struct net_device *dev = xs->xso.real_dev;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_ipsec *ipsec = adapter->ipsec;
 	struct ixgbe_hw *hw = &adapter->hw;
 	int checked, match, first;
@@ -757,7 +757,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 static void ixgbe_ipsec_del_sa(struct xfrm_state *xs)
 {
 	struct net_device *dev = xs->xso.real_dev;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_ipsec *ipsec = adapter->ipsec;
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 zerobuf[4] = {0, 0, 0, 0};
@@ -1073,7 +1073,7 @@ int ixgbe_ipsec_tx(struct ixgbe_ring *tx_ring,
 		   struct ixgbe_tx_buffer *first,
 		   struct ixgbe_ipsec_tx_data *itd)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(tx_ring->netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(tx_ring->netdev);
 	struct ixgbe_ipsec *ipsec = adapter->ipsec;
 	struct xfrm_state *xs;
 	struct sec_path *sp;
@@ -1163,7 +1163,7 @@ void ixgbe_ipsec_rx(struct ixgbe_ring *rx_ring,
 		    union ixgbe_adv_rx_desc *rx_desc,
 		    struct sk_buff *skb)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(rx_ring->netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(rx_ring->netdev);
 	__le16 pkt_info = rx_desc->wb.lower.lo_dword.hs_rss.pkt_info;
 	__le16 ipsec_pkt_types = cpu_to_le16(IXGBE_RXDADV_PKTTYPE_IPSEC_AH |
 					     IXGBE_RXDADV_PKTTYPE_IPSEC_ESP);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7236f20c9a30..f4f462a3cd79 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1095,7 +1095,7 @@ static void ixgbe_tx_timeout_reset(struct ixgbe_adapter *adapter)
 static int ixgbe_tx_maxrate(struct net_device *netdev,
 			    int queue_index, u32 maxrate)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 bcnrc_val = ixgbe_link_mbps(adapter);
 
@@ -4674,7 +4674,7 @@ static void ixgbe_configure_rx(struct ixgbe_adapter *adapter)
 static int ixgbe_vlan_rx_add_vid(struct net_device *netdev,
 				 __be16 proto, u16 vid)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	/* add VID to filter table */
@@ -4733,7 +4733,7 @@ void ixgbe_update_pf_promisc_vlvf(struct ixgbe_adapter *adapter, u32 vid)
 static int ixgbe_vlan_rx_kill_vid(struct net_device *netdev,
 				  __be16 proto, u16 vid)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	/* remove VID from filter table */
@@ -4958,7 +4958,7 @@ static void ixgbe_restore_vlan(struct ixgbe_adapter *adapter)
  **/
 static int ixgbe_write_mc_addr_list(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	if (!netif_running(netdev))
@@ -5134,7 +5134,7 @@ int ixgbe_del_mac_filter(struct ixgbe_adapter *adapter,
 
 static int ixgbe_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	int ret;
 
 	ret = ixgbe_add_mac_filter(adapter, addr, VMDQ_P(0));
@@ -5144,7 +5144,7 @@ static int ixgbe_uc_sync(struct net_device *netdev, const unsigned char *addr)
 
 static int ixgbe_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	ixgbe_del_mac_filter(adapter, addr, VMDQ_P(0));
 
@@ -5162,7 +5162,7 @@ static int ixgbe_uc_unsync(struct net_device *netdev, const unsigned char *addr)
  **/
 void ixgbe_set_rx_mode(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 fctrl, vmolr = IXGBE_VMOLR_BAM | IXGBE_VMOLR_AUPE;
 	netdev_features_t features = netdev->features;
@@ -5264,7 +5264,7 @@ static void ixgbe_napi_disable_all(struct ixgbe_adapter *adapter)
 
 static int ixgbe_udp_tunnel_sync(struct net_device *dev, unsigned int table)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct udp_tunnel_info ti;
 
@@ -6596,7 +6596,7 @@ static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
  **/
 static void ixgbe_tx_timeout(struct net_device *netdev, unsigned int __always_unused txqueue)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	/* Do the reset outside of interrupt context */
 	ixgbe_tx_timeout_reset(adapter);
@@ -7161,7 +7161,7 @@ static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
  **/
 static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (ixgbe_enabled_xdp_adapter(adapter)) {
 		int new_frame_size = new_mtu + IXGBE_PKT_HDR_PAD;
@@ -7208,7 +7208,7 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
  **/
 int ixgbe_open(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	int err, queues;
 
@@ -7312,7 +7312,7 @@ static void ixgbe_close_suspend(struct ixgbe_adapter *adapter)
  **/
 int ixgbe_close(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	ixgbe_ptp_stop(adapter);
 
@@ -8997,7 +8997,7 @@ static u16 ixgbe_select_queue(struct net_device *dev, struct sk_buff *skb,
 	switch (vlan_get_protocol(skb)) {
 	case htons(ETH_P_FCOE):
 	case htons(ETH_P_FIP):
-		adapter = netdev_priv(dev);
+		adapter = ixgbe_from_netdev(dev);
 
 		if (!sb_dev && (adapter->flags & IXGBE_FLAG_FCOE_ENABLED))
 			break;
@@ -9256,7 +9256,7 @@ static netdev_tx_t __ixgbe_xmit_frame(struct sk_buff *skb,
 				      struct net_device *netdev,
 				      struct ixgbe_ring *ring)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_ring *tx_ring;
 
 	/*
@@ -9288,7 +9288,7 @@ static netdev_tx_t ixgbe_xmit_frame(struct sk_buff *skb,
  **/
 static int ixgbe_set_mac(struct net_device *netdev, void *p)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct sockaddr *addr = p;
 
@@ -9306,7 +9306,7 @@ static int ixgbe_set_mac(struct net_device *netdev, void *p)
 static int
 ixgbe_mdio_read(struct net_device *netdev, int prtad, int devad, u16 addr)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u16 value;
 	int rc;
@@ -9332,7 +9332,7 @@ ixgbe_mdio_read(struct net_device *netdev, int prtad, int devad, u16 addr)
 static int ixgbe_mdio_write(struct net_device *netdev, int prtad, int devad,
 			    u16 addr, u16 value)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	if (adapter->mii_bus) {
@@ -9352,7 +9352,7 @@ static int ixgbe_mdio_write(struct net_device *netdev, int prtad, int devad,
 
 static int ixgbe_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	switch (cmd) {
 	case SIOCSHWTSTAMP:
@@ -9378,7 +9378,7 @@ static int ixgbe_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
 static int ixgbe_add_sanmac_netdev(struct net_device *dev)
 {
 	int err = 0;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	if (is_valid_ether_addr(hw->mac.san_addr)) {
@@ -9402,7 +9402,7 @@ static int ixgbe_add_sanmac_netdev(struct net_device *dev)
 static int ixgbe_del_sanmac_netdev(struct net_device *dev)
 {
 	int err = 0;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_mac_info *mac = &adapter->hw.mac;
 
 	if (is_valid_ether_addr(mac->san_addr)) {
@@ -9433,7 +9433,7 @@ static void ixgbe_get_ring_stats64(struct rtnl_link_stats64 *stats,
 static void ixgbe_get_stats64(struct net_device *netdev,
 			      struct rtnl_link_stats64 *stats)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	int i;
 
 	rcu_read_lock();
@@ -9476,7 +9476,7 @@ static void ixgbe_get_stats64(struct net_device *netdev,
 static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
 				  struct ifla_vf_stats *vf_stats)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (vf < 0 || vf >= adapter->num_vfs)
 		return -EINVAL;
@@ -9593,7 +9593,7 @@ static int ixgbe_reassign_macvlan_pool(struct net_device *vdev,
 
 static void ixgbe_defrag_macvlan_pools(struct net_device *dev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct netdev_nested_priv priv = {
 		.data = (void *)adapter,
 	};
@@ -9614,7 +9614,7 @@ static void ixgbe_defrag_macvlan_pools(struct net_device *dev)
  */
 int ixgbe_setup_tc(struct net_device *dev, u8 tc)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	/* Hardware supports up to 8 traffic classes */
@@ -10172,7 +10172,7 @@ static LIST_HEAD(ixgbe_block_cb_list);
 static int __ixgbe_setup_tc(struct net_device *dev, enum tc_setup_type type,
 			    void *type_data)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 
 	switch (type) {
 	case TC_SETUP_BLOCK:
@@ -10200,7 +10200,7 @@ void ixgbe_sriov_reinit(struct ixgbe_adapter *adapter)
 #endif
 void ixgbe_do_reset(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (netif_running(netdev))
 		ixgbe_reinit_locked(adapter);
@@ -10211,7 +10211,7 @@ void ixgbe_do_reset(struct net_device *netdev)
 static netdev_features_t ixgbe_fix_features(struct net_device *netdev,
 					    netdev_features_t features)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	/* If Rx checksum is disabled, then RSC/LRO should also be disabled */
 	if (!(features & NETIF_F_RXCSUM))
@@ -10248,7 +10248,7 @@ static void ixgbe_reset_l2fw_offload(struct ixgbe_adapter *adapter)
 static int ixgbe_set_features(struct net_device *netdev,
 			      netdev_features_t features)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	netdev_features_t changed = netdev->features ^ features;
 	bool need_reset = false;
 
@@ -10324,7 +10324,7 @@ static int ixgbe_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 {
 	/* guarantee we can provide a unique filter for the unicast address */
 	if (is_unicast_ether_addr(addr) || is_link_local_ether_addr(addr)) {
-		struct ixgbe_adapter *adapter = netdev_priv(dev);
+		struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 		u16 pool = VMDQ_P(0);
 
 		if (netdev_uc_count(dev) >= ixgbe_available_rars(adapter, pool))
@@ -10412,7 +10412,7 @@ static int ixgbe_ndo_bridge_setlink(struct net_device *dev,
 				    struct nlmsghdr *nlh, u16 flags,
 				    struct netlink_ext_ack *extack)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct nlattr *attr, *br_spec;
 	int rem;
 
@@ -10440,7 +10440,7 @@ static int ixgbe_ndo_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 				    struct net_device *dev,
 				    u32 filter_mask, int nlflags)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 
 	if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
 		return 0;
@@ -10452,7 +10452,7 @@ static int ixgbe_ndo_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 
 static void *ixgbe_fwd_add(struct net_device *pdev, struct net_device *vdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(pdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(pdev);
 	struct ixgbe_fwd_adapter *accel;
 	int tcs = adapter->hw_tcs ? : 1;
 	int pool, err;
@@ -10549,7 +10549,7 @@ static void *ixgbe_fwd_add(struct net_device *pdev, struct net_device *vdev)
 static void ixgbe_fwd_del(struct net_device *pdev, void *priv)
 {
 	struct ixgbe_fwd_adapter *accel = priv;
-	struct ixgbe_adapter *adapter = netdev_priv(pdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(pdev);
 	unsigned int rxbase = accel->rx_base_queue;
 	unsigned int i;
 
@@ -10627,7 +10627,7 @@ ixgbe_features_check(struct sk_buff *skb, struct net_device *dev,
 static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 {
 	int i, frame_size = dev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct bpf_prog *old_prog;
 	bool need_reset;
 	int num_queues;
@@ -10699,7 +10699,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 
 static int ixgbe_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
@@ -10734,7 +10734,7 @@ void ixgbe_xdp_ring_update_tail_locked(struct ixgbe_ring *ring)
 static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 			  struct xdp_frame **frames, u32 flags)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_ring *ring;
 	int nxmit = 0;
 	int i;
@@ -11267,7 +11267,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	SET_NETDEV_DEV(netdev, &pdev->dev);
 
-	adapter = netdev_priv(netdev);
+	adapter = ixgbe_from_netdev(netdev);
 
 	adapter->netdev = netdev;
 	adapter->pdev = pdev;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index ccdce80edd14..0dbbd2befd4d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -1418,7 +1418,7 @@ void ixgbe_set_all_vfs(struct ixgbe_adapter *adapter)
 
 int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	int retval;
 
 	if (vf >= adapter->num_vfs)
@@ -1526,7 +1526,7 @@ int ixgbe_ndo_set_vf_vlan(struct net_device *netdev, int vf, u16 vlan,
 			  u8 qos, __be16 vlan_proto)
 {
 	int err = 0;
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if ((vf >= adapter->num_vfs) || (vlan > 4095) || (qos > 7))
 		return -EINVAL;
@@ -1644,7 +1644,7 @@ void ixgbe_check_vf_rate_limit(struct ixgbe_adapter *adapter)
 int ixgbe_ndo_set_vf_bw(struct net_device *netdev, int vf, int min_tx_rate,
 			int max_tx_rate)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	int link_speed;
 
 	/* verify VF is active */
@@ -1679,7 +1679,7 @@ int ixgbe_ndo_set_vf_bw(struct net_device *netdev, int vf, int min_tx_rate,
 
 int ixgbe_ndo_set_vf_spoofchk(struct net_device *netdev, int vf, bool setting)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 
 	if (vf >= adapter->num_vfs)
@@ -1757,7 +1757,7 @@ void ixgbe_set_vf_link_state(struct ixgbe_adapter *adapter, int vf, int state)
  **/
 int ixgbe_ndo_set_vf_link_state(struct net_device *netdev, int vf, int state)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	int ret = 0;
 
 	if (vf < 0 || vf >= adapter->num_vfs) {
@@ -1794,7 +1794,7 @@ int ixgbe_ndo_set_vf_link_state(struct net_device *netdev, int vf, int state)
 int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
 				  bool setting)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	/* This operation is currently supported only for 82599 and x540
 	 * devices.
@@ -1813,7 +1813,7 @@ int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
 
 int ixgbe_ndo_set_vf_trust(struct net_device *netdev, int vf, bool setting)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
@@ -1836,7 +1836,7 @@ int ixgbe_ndo_set_vf_trust(struct net_device *netdev, int vf, bool setting)
 int ixgbe_ndo_get_vf_config(struct net_device *netdev,
 			    int vf, struct ifla_vf_info *ivi)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
 	ivi->vf = vf;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 3e3b471e53f0..ac58964b2f08 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -508,7 +508,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 
 int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_ring *ring;
 
 	if (test_bit(__IXGBE_DOWN, &adapter->state))
-- 
2.31.1

