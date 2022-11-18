Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FF062FA99
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 17:44:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E407040FF5;
	Fri, 18 Nov 2022 16:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E407040FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668789861;
	bh=im3PYoU/cMr/VYnkQfUrG+EnbEypxwpI5AvR6GMkqRU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zGsjRkPZRBE6eZWIm0B+l9HgY9215/zC1idh1G6ukQjtihAhBN2Vqen0SBCoUA7Aj
	 BjzgbzwFXG5LTLSGplLDAB6I2b0dmF09UJ+vYR2NFw03qt3tK4tLn2kGtGAPXnwNfE
	 OxF01MU+HNVdNbJUJMLmkFB2YXPuZpaiNYu+ANesCQZ8a1ZFWcHkcy5pW6A4m4X+kk
	 iA3gqGwx5ICwli8pKQKRJdEQCr5rvWzyegeByTIjVBF/wAwsU9c9O0qjKtp+YBYKqW
	 0KCVI6ffO3NoPYcxX/mtW3N10sTYdlvEhz7YRzeph8OrGL43krLe6pdRMXgkuDuafZ
	 ntSGXa1OWoGWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sl8SYR7kkzFf; Fri, 18 Nov 2022 16:44:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C516E402F3;
	Fri, 18 Nov 2022 16:44:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C516E402F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5090C1BF340
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 09:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B1B260B77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 09:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B1B260B77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 57_xNv2UdXwT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 09:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A4F360A6C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A4F360A6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 09:16:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="375228679"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; d="scan'208";a="375228679"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 01:16:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="782582043"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; d="scan'208";a="782582043"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 01:16:08 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: tirtha@gmail.com, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com
Date: Fri, 18 Nov 2022 14:33:06 +0530
Message-Id: <20221118090306.48022-1-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 18 Nov 2022 16:44:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668762970; x=1700298970;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tFvAKQ1x7/ByRAvgJd7KASfpF+dPcyFIQ0DMGffkq2U=;
 b=Q7MfTwRwHv0keHy0DL95ulxqgzMWcTTqcxL31f6GBSGGQklll6AF+OwF
 08gIsQ+htKK4fFlW/LKUsIruyR6zLRLI7xV9XRcIFh/OskKKoqtJEJp4d
 oXSFD9Cs4jOqJD4YcfkT4cR97UNeKne3v7Vv40qWPtDK46u5Tkx9BrFYH
 AfKM4QNTvjQMY/fD46MKOjA1pLjK8Ynano05IqLWvJ6IDqVl/yy156s+w
 ogwtQTH2DX/q4RTldICXaLfYxNiJMrfDfJ7cQH0aTXiFYN+zmnzh0tTGb
 EjOBO1rgpy5LhWBgDxzyOFngl/ZrzJAMk5x+VBtIhuZ1dS1gZXxRyU6Xb
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q7MfTwRw
Subject: [Intel-wired-lan] [PATCH intel-next v4] i40e: allow toggling
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
    v3 -> v4:
    - Removed unused %_LEGACY macros as suggested by Alexandr Lobakin.
    - Modified checks for interface bringup and i40e_set_loopback().
    - Propagating up return value from i40_set_loopback().

    v2 -> v3:
     - Fixed loopback macros as per NVM version 6.01+.
     - Renamed existing macros as *_LEGACY.
     - Based on NVM verison appropriate macro is used for MAC loopback.

    v1 -> v2:
     - Moved loopback to netdev's hardware features as suggested by
       Alexandr Lobakin.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  8 ++++--
 drivers/net/ethernet/intel/i40e/i40e_common.c | 26 +++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 28 ++++++++++++++++++-
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
 4 files changed, 61 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 60f9e0a6aaca..085355e2acac 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -1795,9 +1795,11 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_an_advt_reg);
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
index 4880b740fa6e..298fdd19900c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12920,6 +12920,29 @@ static void i40e_clear_rss_lut(struct i40e_vsi *vsi)
 	}
 }
 
+/**
+ * i40e_set_loopback - turn on/off loopback mode on underlying PF
+ * @vsi: ptr to VSI
+ * @ena: flag to indicate the on/off setting
+ */
+static int i40e_set_loopback(struct i40e_vsi *vsi, bool ena)
+{
+	bool if_running = netif_running(vsi->netdev) &&
+			  !test_and_set_bit(__I40E_VSI_DOWN, vsi->state);
+	int ret;
+
+	if (if_running)
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
@@ -12960,6 +12983,9 @@ static int i40e_set_features(struct net_device *netdev,
 	if (need_reset)
 		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
 
+	if ((features ^ netdev->features) & NETIF_F_LOOPBACK)
+		return i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
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
