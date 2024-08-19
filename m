Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3709566DC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 11:28:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D271605B1;
	Mon, 19 Aug 2024 09:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pd1ZoJxabgRx; Mon, 19 Aug 2024 09:28:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C337607BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724059684;
	bh=bJJDqeEZ7ERcqbjRNV4Gwr2sXHux4lpASjpqx1eB9zU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=URGaBShMmcxHoP+2zzhxVfIbMk8wMzZUAIT56++nNzQf4oWFMZf+AJjWbm7t0PF4S
	 nazgUm6gJt/BLsfR7q3d9GuGuCncwGZIotYVmCsmdIQgayYJjM7vhHYidBn1b2W5gR
	 fgmOeuiI+ujL1aiCpp9xqX2U9lNbfOdj34AesOnOS7pOdgVlE/mZ/KeCWeVnNa/I+c
	 nN43mJe7AaTgt/mTI76/F4jcFxBHd2UGrGBvcoougjFRPJgnqW3ph+Wz2PP1DMMOoU
	 Hcq3zd/ak7Q1Ef0vRLGY+ik2L/JWem6jeufTtPbALnLOKXz27SSMI857uBIk+D97D0
	 y4560tdu0GV/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C337607BA;
	Mon, 19 Aug 2024 09:28:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B60B61BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 09:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A18B080D8B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 09:28:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a6Mr97-DRVTQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 09:28:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 95B2A80D87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95B2A80D87
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95B2A80D87
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 09:27:59 +0000 (UTC)
X-CSE-ConnectionGUID: v7Ys+7cZSRiJgwl/lFeA7g==
X-CSE-MsgGUID: g1boEe6CTS+BidFoMtcs2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="21841936"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="21841936"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 02:27:59 -0700
X-CSE-ConnectionGUID: 1XTFY1D+SoWvqW8rxzrYtg==
X-CSE-MsgGUID: tryv5rn6Q+upwnN/50JV2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="91088133"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa001.fm.intel.com with ESMTP; 19 Aug 2024 02:27:57 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Mon, 19 Aug 2024 11:27:56 +0200
Message-Id: <20240819092756.1113554-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724059680; x=1755595680;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T8WThPouRabXOB4PlAbbOGFKVRHDj2T9p6hhLoSHQhw=;
 b=SzVzw844sXGP8jGsBiO4g87tRwaAcyje5L6pLAlARJaQwv6ay1kIVp1s
 3gr0Q2IlUo6t02PNIvijWd1kB4TDTjd2Dmpmo0xL+Rh2TPcdGAEcQtdtv
 gxahEdJLCQr2Fx6d5+jz/6pu5FIG0KNBAsHBcOY5CiAE4ZLEIXmNXTmad
 WB5lHaTOQTU9ZSNn2bg7Mrl9QTTbXmBFK2GZGNRA795XyEKaQP3Ow4qI9
 DB+1l4xZj+f30JTGL8f0r2eQSvoIafoF1BfIDCdetEvXjqpXlsgCS4UFV
 NFbS01lyTbrhbUdcr7BTYk64pU5qtKUIqPOGTtMprHZrFGBd1k9PE4wFa
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SzVzw844
Subject: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Add Energy Efficient
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
v2->v3 removed double space from code
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
 
+static void i40e_eee_capability_to_kedata_supported(__le16 eee_capability_,
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

