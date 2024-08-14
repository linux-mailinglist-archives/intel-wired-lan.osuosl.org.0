Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F17F95227B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 21:10:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F168180E36;
	Wed, 14 Aug 2024 19:10:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFtaTc1NgEcq; Wed, 14 Aug 2024 19:10:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D41F380DD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723662615;
	bh=h+B7Ok2724D0YIEU2jqWGAsw0rmpwqc+X6QStwYQ0V4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Bw9YgWBUJEP8urO24wSudHCKeeJ/dDqwnlugNkU+66E6GE5zlE+wpmTkVuUQi4quT
	 AmzAswa/eA9vM/LFSb/XmMv5bXx4lu/6JbTUyRon6dhd1L6q34FIBaHFbRI2efg0J7
	 U/b9MsZW1hD/Y5Jd9uOy9hqgE5ohKG+sX9xSCoCDLI7G9qwcMNROyY8VbbL9eDyJqo
	 EFAUhv2gZ38hAVlDUYE9F14jwXpdD6lHw2nPbCMxn1lVbMNYVlTz2/n2apLB6rrXaB
	 /ug/bKqWbxVnuwKOH2y24BFhzVW5yrAjPwpdS5FU26IxrjqGR6DtKMLYxPTGvR/6z9
	 B99f29Tz2yiUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D41F380DD1;
	Wed, 14 Aug 2024 19:10:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42CD21BF40D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3298180E36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lf2VitIZG2AE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 19:10:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F30FC80DF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F30FC80DF0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F30FC80DF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:10:12 +0000 (UTC)
X-CSE-ConnectionGUID: xIimRRMcQiGZWcJJLJzCQg==
X-CSE-MsgGUID: aM+I1L6/RUux5LQtg6UueQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="21869962"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="21869962"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 12:10:12 -0700
X-CSE-ConnectionGUID: c8ycNxVXSiSegtYsF2ACmg==
X-CSE-MsgGUID: CryTS2bkTnyETYHl7t3KJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="59395720"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 14 Aug 2024 12:10:10 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 14 Aug 2024 21:10:09 +0200
Message-Id: <20240814191009.1127679-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723662613; x=1755198613;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=puAXCRFRIP++S42Pw9m2tr+d7epYbIyOvbOE3LYbsyI=;
 b=PCJd+9SofdWPPqkk/IyiKyGiTizn+7LNlwZpo++SHzuuHBg++USMGSXB
 rer8pT6vmjr9iycEXAF3QBt6uOZba3uiybEH83Y3pfyfnnDU34JDymZDi
 opGHePC/labg8EApVbShmQzGwFc61Uo+rpYA0N5WWJn09niivmrdwcLsF
 m5SlAxNNSfj6Tkx3y4Ihc+xK1YVWPUQBMiWFFmeKj6X77LROxpguAH4cD
 3CnCCv6RddOJb/pHPPkRo0Rqf55WhQ8q/HWyaCN1vor3Y0GGMnpL6vDwo
 IR3GnqcSdMInt9+CjKqF7rUbLUQX1F2yR4G+MtMD9wLDP/hhUhfx8CRvg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PCJd+9So
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Add Energy Efficient
 Ethernet ability for X710 Base-T/KR/KX cards
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add "EEE: Enabled/Disabled" to dmesg for supported X710 Base-T/KR/KX cards.
According to the IEEE standard report the EEE ability and and the
EEE Link Partner ability. Use the kernel's 'ethtool_keee' structure
and report EEE link modes.

Example:
dmesg | grep 'NIC Link is'
ethtool --show-eee <device>

Before:
	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None

        Supported EEE link modes:  Not reported
        Advertised EEE link modes:  Not reported
        Link partner advertised EEE link modes:  Not reported

After:
	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None, EEE: Enabled

        Supported EEE link modes:  100baseT/Full
                                   1000baseT/Full
                                   10000baseT/Full
        Advertised EEE link modes:  100baseT/Full
                                    1000baseT/Full
                                    10000baseT/Full
        Link partner advertised EEE link modes:  100baseT/Full
                                                 1000baseT/Full
                                                 10000baseT/Full

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2 removed some not mandatory changes, some style improvements
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 36 ++++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 23 ++++++++++--
 3 files changed, 53 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d546567..0f25a48 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -7,6 +7,7 @@
 #include <linux/pci.h>
 #include <linux/ptp_clock_kernel.h>
 #include <linux/types.h>
+#include <linux/linkmode.h>
 #include <linux/avf/virtchnl.h>
 #include <linux/net/intel/i40e_client.h>
 #include <net/devlink.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 1d0d2e5..47c5d05 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5641,50 +5641,78 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
 	return 0;
 }
 
+static void i40e_eee_capability_to_kedata_supported(__le16  eee_capability_,
+						    unsigned long *supported)
+{
+	const int eee_capability = le16_to_cpu(eee_capability_);
+	static const int lut[] = {
+		ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+		ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+		ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+		ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
+		ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
+		ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
+		ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
+	};
+
+	linkmode_zero(supported);
+	for (unsigned int i = ARRAY_SIZE(lut); i--; )
+		if (eee_capability & BIT(i + 1))
+			linkmode_set_bit(lut[i], supported);
+}
+
 static int i40e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_aq_get_phy_abilities_resp phy_cfg;
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
-	int status = 0;
+	int status;
 
 	/* Get initial PHY capabilities */
 	status = i40e_aq_get_phy_capabilities(hw, false, true, &phy_cfg, NULL);
 	if (status)
 		return -EAGAIN;
 
 	/* Check whether NIC configuration is compatible with Energy Efficient
 	 * Ethernet (EEE) mode.
 	 */
 	if (phy_cfg.eee_capability == 0)
 		return -EOPNOTSUPP;
 
+	i40e_eee_capability_to_kedata_supported(phy_cfg.eee_capability,
+						edata->supported);
+	linkmode_copy(edata->lp_advertised, edata->supported);
+
 	/* Get current configuration */
 	status = i40e_aq_get_phy_capabilities(hw, false, false, &phy_cfg, NULL);
 	if (status)
 		return -EAGAIN;
 
+	linkmode_zero(edata->advertised);
+	if (phy_cfg.eee_capability)
+		linkmode_copy(edata->advertised, edata->supported);
 	edata->eee_enabled = !!phy_cfg.eee_capability;
 	edata->tx_lpi_enabled = pf->stats.tx_lpi_status;
 
 	edata->eee_active = pf->stats.tx_lpi_status && pf->stats.rx_lpi_status;
 
 	return 0;
 }
 
 static int i40e_is_eee_param_supported(struct net_device *netdev,
 				       struct ethtool_keee *edata)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_ethtool_not_used {
-		u32 value;
+		bool value;
 		const char *name;
 	} param[] = {
-		{edata->tx_lpi_timer, "tx-timer"},
+		{!!(edata->advertised[0] & ~edata->supported[0]), "advertise"},
+		{!!edata->tx_lpi_timer, "tx-timer"},
 		{edata->tx_lpi_enabled != pf->stats.tx_lpi_status, "tx-lpi"}
 	};
 	int i;
@@ -5710,7 +5738,7 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	__le16 eee_capability;
-	int status = 0;
+	int status;
 
 	/* Deny parameters we don't support */
 	if (i40e_is_eee_param_supported(netdev, edata))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index cbcfada..5c102f8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7263,6 +7263,25 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 	return err;
 }
 #endif /* CONFIG_I40E_DCB */
+static void i40e_print_link_message_eee(struct i40e_vsi *vsi,
+			    const char *speed, const char *fc)
+{
+	struct ethtool_keee kedata;
+
+	memzero_explicit(&kedata, sizeof(kedata));
+	if (vsi->netdev->ethtool_ops->get_eee)
+		vsi->netdev->ethtool_ops->get_eee(vsi->netdev, &kedata);
+
+	if (!linkmode_empty(kedata.supported))
+		netdev_info(vsi->netdev,
+			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s, EEE: %s\n",
+			    speed, fc,
+			    kedata.eee_enabled ? "Enabled" : "Disabled");
+	else
+		netdev_info(vsi->netdev,
+			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s\n",
+			    speed, fc);
+}
 
 /**
  * i40e_print_link_message - print link up or down
@@ -7395,9 +7414,7 @@ void i40e_print_link_message(struct i40e_vsi *vsi, bool isup)
 			    "NIC Link is Up, %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
 			    speed, req_fec, fec, an, fc);
 	} else {
-		netdev_info(vsi->netdev,
-			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s\n",
-			    speed, fc);
+		i40e_print_link_message_eee(vsi, speed, fc);
 	}
 
 }
-- 
2.25.1

