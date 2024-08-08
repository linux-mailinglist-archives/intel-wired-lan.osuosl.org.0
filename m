Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B6B94BC25
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 13:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2139660A69;
	Thu,  8 Aug 2024 11:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AUw3sh-6-gUI; Thu,  8 Aug 2024 11:22:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16D3360A71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723116146;
	bh=MhsRDNUkFOmypR6vf3cbzZXFpR5oGTyDhVgOLCmU1d8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=urMTfVDLUUePp2CJhcdPhklSvB7AcN7EYnIpkIfaUQ9Dqm6Ozf0DkHNWzBoVyOtA+
	 jAFUCgFSm2eXuxpyTj6hjb6X9ka87whQ20iGU7PyhrsN47ezPcO6iFuheLzGLyLtiw
	 p6V82bqD6vYy2z/MGRi5NAlB+yq7inEkI58p1ZdNbNNUcBlTIcNghtsRSTlDeKTWae
	 0lcc8R8ZqaShRtVKWTSl4Af2CK/zLM7W+++2hMr+no2Yz60R8PrblnqUMIrljbCOuj
	 2ZD8c7x63p085iqR0ubUSuexAVmJuhG/JhVpyi1B9xIYmKkb4yDbG3hYbR5PFLk76K
	 cI1c192aM914w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16D3360A71;
	Thu,  8 Aug 2024 11:22:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDE8B1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA1F860A40
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eUGSKrNjloLY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 11:22:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BADA96090A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BADA96090A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BADA96090A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:22:22 +0000 (UTC)
X-CSE-ConnectionGUID: 1vpgvnqESmKMvj8ukGJyyw==
X-CSE-MsgGUID: CU9L2QlNRo6ybBSHJ0QWvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="25027264"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="25027264"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 04:22:20 -0700
X-CSE-ConnectionGUID: bQu+0RPOTACA7wsMTw5WmQ==
X-CSE-MsgGUID: 9qC6DPDjTEesezrzH2pi9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57109927"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by orviesa009.jf.intel.com with ESMTP; 08 Aug 2024 04:22:19 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Thu,  8 Aug 2024 13:22:17 +0200
Message-Id: <20240808112217.3560733-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723116143; x=1754652143;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=boMFstUhVQMsNW3xa4HAW4jtrge3LjkojImXyNp5wt4=;
 b=L8Fzsia3W/YBZK3Igig1JlBW6U2ICtzxEX+qLofQppKRAuHdG/2NhKyn
 nJmbfBS6dZZAnFWGRvk2DVPfG5xPWOuCL0EmI6VCuD4jEmdx+Vqvkb52s
 KFm3pfiR1EIgzeBCo1SusKUBUsdRRiMC5qKOchUuGSuzXy33BzuPj5iR7
 Za9YIsI59nZVKJvu5px5cjdKaCoBBId1VnfprX+Em03lGjl6iqtf47MS7
 8UZYsf5td+aBvdG3zOiX+DYKOOxaTyq+oM8DCB4ctNR+rA6+YCOP6lFZQ
 zddz5sawG6fkpyRgBxWbcBJp1URtXjfupAEgqJGqppdZQlAz5V76i1H8N
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L8Fzsia3
Subject: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Add Energy Efficient
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
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 37 ++++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 25 +++++++++++--
 3 files changed, 55 insertions(+), 8 deletions(-)

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
index 1d0d2e5..cd7509f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5641,50 +5641,77 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
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
+		if (eee_capability & (1 << (i + 1)))
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
 
+	i40e_eee_capability_to_kedata_supported(phy_cfg.eee_capability, edata->supported);
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
+		int value;
 		const char *name;
 	} param[] = {
-		{edata->tx_lpi_timer, "tx-timer"},
+		{!!(edata->advertised[0] & ~edata->supported[0]), "advertise"},
+		{!!edata->tx_lpi_timer, "tx-timer"},
 		{edata->tx_lpi_enabled != pf->stats.tx_lpi_status, "tx-lpi"}
 	};
 	int i;
@@ -5710,7 +5737,7 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	__le16 eee_capability;
-	int status = 0;
+	int status;
 
 	/* Deny parameters we don't support */
 	if (i40e_is_eee_param_supported(netdev, edata))
@@ -5754,7 +5781,7 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 		config.eeer |= cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);
 	} else {
 		config.eee_capability = 0;
-		config.eeer &= cpu_to_le32(~I40E_PRTPM_EEER_TX_LPI_EN_MASK);
+		config.eeer &= ~cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);
 	}
 
 	/* Apply modified PHY configuration */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index cbcfada..55bbf0f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7263,6 +7263,22 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 	return err;
 }
 #endif /* CONFIG_I40E_DCB */
+static void i40e_print_link_message_eee(struct i40e_vsi *vsi, struct ethtool_keee *kedata,
+			    const char *speed, const char *fc)
+{
+	if (vsi->netdev->ethtool_ops->get_eee)
+		vsi->netdev->ethtool_ops->get_eee(vsi->netdev, kedata);
+
+	if (!linkmode_empty(kedata->supported))
+		netdev_info(vsi->netdev,
+			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s, EEE: %s\n",
+			    speed, fc,
+			    kedata->eee_enabled ? "Enabled" : "Disabled");
+	else
+		netdev_info(vsi->netdev,
+			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s\n",
+			    speed, fc);
+}
 
 /**
  * i40e_print_link_message - print link up or down
@@ -7395,9 +7411,12 @@ void i40e_print_link_message(struct i40e_vsi *vsi, bool isup)
 			    "NIC Link is Up, %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
 			    speed, req_fec, fec, an, fc);
 	} else {
-		netdev_info(vsi->netdev,
-			    "NIC Link is Up, %sbps Full Duplex, Flow Control: %s\n",
-			    speed, fc);
+		struct ethtool_keee kedata;
+
+		linkmode_zero(kedata.supported);
+		kedata.eee_enabled = false;
+
+		i40e_print_link_message_eee(vsi, &kedata, speed, fc);
 	}
 
 }
-- 
2.25.1

