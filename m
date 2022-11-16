Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E53662C5C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 18:03:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8865040BFE;
	Wed, 16 Nov 2022 17:03:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8865040BFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668618231;
	bh=4zpkOStfi8bHY9uIhKxsnCalCxXy6P0sME5QAck21S0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mhCUChy8/dAKXESuEqbLHPOsSqx0OW2NJSpl6TEciI77IUUyEDN0/tIJWQar2/zCA
	 ti5UOnpueR4WhC0eNDm5cEDyzPVEn7T8tCPG3zgMfVmQP6tDeYcH4sD02lGiBkFi+k
	 z9/S23y+OcX53zbCYBMNLrx0fHFRWY1RY91NxfAsiZbteqkj79j3bp2YZvgD7IFi23
	 m3F2Kp+u5T4MBEyd7Aj1OMceymkEfSFFV3De+BjYpb5HwMcgyL6laK4Ql3EBZ50f76
	 i2irxEW6atFFjVREuUAcMhfsa3bSi1+QJ+/gYdZgGDv1scIN+66NXREh8l7vyPEV7G
	 O8LnpWVsgL6RA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2U-_bvOzDFFL; Wed, 16 Nov 2022 17:03:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 454F640BF5;
	Wed, 16 Nov 2022 17:03:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 454F640BF5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3EFA31BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 17:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2664181ED5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 17:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2664181ED5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xuZY7KERJirI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 17:00:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 225F081EB7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 225F081EB7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 17:00:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="314414542"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="314414542"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 09:00:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="708237606"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="708237606"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 09:00:09 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: tirtha@gmail.com, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com
Date: Wed, 16 Nov 2022 22:17:09 +0530
Message-Id: <20221116164709.9201-1-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Nov 2022 17:03:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668618012; x=1700154012;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HUgEMlU6yNuQmgDFwrXwjchEJj+a9g564qvmdiMgtfY=;
 b=fsj0mA+YQRpoeKdSqxAnFVc81RJvKnOhvn8WSq3+82XHtbwYI1itqbv5
 tHkWIlN995Lujz8WKbDIAWHrv78nwALJyyuCC91oeEC3hLwr9N4+ODVrn
 hO9ToYBvW8c3j2PeLaoJNWed9Hlwd5xhYnCdYvyFAHebZ/9+yWCkkav8w
 CnpVVySMi4/KkrCeDg8mGH9gPQu0aNlsElXifBlKdpKve5+bUtxssy3q/
 cHvhnTnxG+aVln/oYl/IqIu25O56n7eyFTwcayH1KkOrGAKTLZpknjGqf
 ojAWjoYIeV0WamQ3GNCnxi69Ug1EwzajwlQ0swowdqqCO+1PiLH5pvFVi
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fsj0mA+Y
Subject: [Intel-wired-lan] [PATCH intel-next v3] i40e: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for NETIF_F_LOOPBACK. This feature can be set via:
$ ethtool -K eth0 loopback <on|off>

This sets the MAC Tx->Rx loopback.

This feature is used for the xsk selftests, and might have other uses
too.

Changelog:
    v2 -> v3:
     - Fixed loopback macros as per NVM version 6.01+.
     - Renamed existing macros as *_LEGACY
     - Based on NVM verison appropriate macro is used for MAC loopback.

    v1 -> v2:
     - Moved loopback to netdev's hardware features as suggested by
       Alexandr Lobakin.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 10 +++++--
 drivers/net/ethernet/intel/i40e/i40e_common.c | 26 +++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 28 ++++++++++++++++++-
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
 4 files changed, 63 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 60f9e0a6aaca..7532553a6982 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -1795,9 +1795,13 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_an_advt_reg);
 /* Set Loopback mode (0x0618) */
 struct i40e_aqc_set_lb_mode {
 	__le16	lb_mode;
-#define I40E_AQ_LB_PHY_LOCAL	0x01
-#define I40E_AQ_LB_PHY_REMOTE	0x02
-#define I40E_AQ_LB_MAC_LOCAL	0x04
+#define I40E_LEGACY_LOOPBACK_NVM_VER	0x6000
+#define I40E_AQ_LB_MAC_LOCAL		0x01
+#define I40E_AQ_LB_PHY_LOCAL		0x05
+#define I40E_AQ_LB_PHY_REMOTE		0x06
+#define I40E_AQ_LB_PHY_LOCAL_LEGACY   	0x01
+#define I40E_AQ_LB_PHY_REMOTE_LEGACY  	0x02
+#define I40E_AQ_LB_MAC_LOCAL_LEGACY   	0x04
 	u8	reserved[14];
 };
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 4f01e2a6b6bb..8f764ff5c990 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1830,6 +1830,32 @@ i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
 	return status;
 }
 
+/**
+ * i40e_aq_set_mac_loopback
+ * @hw: pointer to the HW struct
+ * @ena_lpbk: Enable or Disable loopback
+ * @cmd_details: pointer to command details structure or NULL
+ *
+ * Enable/disable loopback on a given port
+ */
+i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
+				     struct i40e_asq_cmd_details *cmd_details)
+{
+	struct i40e_aq_desc desc;
+	struct i40e_aqc_set_lb_mode *cmd =
+		(struct i40e_aqc_set_lb_mode *)&desc.params.raw;
+
+	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_lb_modes);
+	if (ena_lpbk) {
+		if (hw->nvm.version <= I40E_LEGACY_LOOPBACK_NVM_VER)
+			cmd->lb_mode = cpu_to_le16(I40E_AQ_LB_MAC_LOCAL_LEGACY);
+		else
+			cmd->lb_mode = cpu_to_le16(I40E_AQ_LB_MAC_LOCAL);
+	}
+
+	return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
+}
+
 /**
  * i40e_aq_set_phy_debug
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4880b740fa6e..1941715b6223 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12920,6 +12920,28 @@ static void i40e_clear_rss_lut(struct i40e_vsi *vsi)
 	}
 }
 
+/**
+ * i40e_set_loopback - turn on/off loopback mode on underlying PF
+ * @vsi: ptr to VSI
+ * @ena: flag to indicate the on/off setting
+ */
+static int i40e_set_loopback(struct i40e_vsi *vsi, bool ena)
+{
+	bool if_running = netif_running(vsi->netdev);
+	int ret;
+
+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
+		i40e_down(vsi);
+
+	ret = i40e_aq_set_mac_loopback(&vsi->back->hw, ena, NULL);
+	if (ret)
+		netdev_err(vsi->netdev, "Failed to toggle loopback state\n");
+	if (if_running)
+		i40e_up(vsi);
+
+	return ret;
+}
+
 /**
  * i40e_set_features - set the netdev feature flags
  * @netdev: ptr to the netdev being adjusted
@@ -12960,6 +12982,10 @@ static int i40e_set_features(struct net_device *netdev,
 	if (need_reset)
 		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
 
+	if (netdev->hw_features & NETIF_F_LOOPBACK)
+		if (i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK)))
+			return -EINVAL;
+
 	return 0;
 }
 
@@ -13722,7 +13748,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
 		hw_features |= NETIF_F_NTUPLE | NETIF_F_HW_TC;
 
-	netdev->hw_features |= hw_features;
+	netdev->hw_features |= hw_features | NETIF_F_LOOPBACK;
 
 	netdev->features |= hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;
 	netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index ebdcde6f1aeb..9a71121420c3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -105,6 +105,9 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
 				struct i40e_asq_cmd_details *cmd_details);
 enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 				  bool atomic_reset);
+i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw,
+				     bool ena_lpbk,
+				     struct i40e_asq_cmd_details *cmd_details);
 i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
 				     struct i40e_asq_cmd_details *cmd_details);
 i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
