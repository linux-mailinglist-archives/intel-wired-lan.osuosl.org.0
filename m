Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13393624722
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 17:37:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D033417BC;
	Thu, 10 Nov 2022 16:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D033417BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668098246;
	bh=VN32K/ZHfZmX633Jo3Mou8gHx3EEboU7VN8h4GyR7SU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Tktl5qKzf2etyD1dnI7WaC9L4wE+UhHdy98y99nlpIKnmB9OKr1R5kdRgQiReb+fQ
	 POAxMoYcEINgSoObER/J1HAqmbM+I82dtAWp7w5lzenR3YvKtkDLQszIECYPrwWJom
	 jqFLdhMIBiD1fm1XB2V/BW+4kbsCmo5CVEe0RuVp07d6DM4ST73+4dEuIP9OqCKHVE
	 hgVwwNorpsLl5KKAS5mUyvSMBZhY3An7+fzf15ku09Jw4CYhpTYk9D9pVg8b/QOQaa
	 wk4sB4YxSP2ouesG+HidVYmgSamsfkFRt1Tqzu3sNMZw6W81bhsjNUT5VxFAX0wD8H
	 OCuxFcIh03ysQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJFukT6BAFLI; Thu, 10 Nov 2022 16:37:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E535F417B9;
	Thu, 10 Nov 2022 16:37:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E535F417B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C608D1BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 07:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A005140156
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 07:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A005140156
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6TotIPug9WLu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 07:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 223A7400AF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 223A7400AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 07:53:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="313016675"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="313016675"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 23:53:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="588080557"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="588080557"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 23:53:36 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: tirtha@gmail.com, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com
Date: Thu, 10 Nov 2022 13:10:38 +0530
Message-Id: <20221110074038.94804-1-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 10 Nov 2022 16:37:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668066818; x=1699602818;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fYkttwNKwU/bCgG8EmqEBArJJBs2YCKQhQd9sHquWPk=;
 b=Nsjdn8Gmgp3pFQnn25t6t2Bd7YbzFR90SGGydlV3NbPop6+Eq1Lb203s
 BVfiptvYLTyoiuELsSVwQbRkE0VIZHbT92DcFc2B4qzm32Vubx4+JwNV2
 DqWn7/yURWMIH28Y6r+Umcbu3FktEoRs/tsLtb7ny6lRRYKmF/oQk2jTO
 YA/z77t8/XsryUy8w05gX4LBNS13o/cbeDhakTO+fiyIdwZSZ0Rd3U/cU
 uwSbigFmuQ6oH82WlVtok0Am7H3saEHK6wh8/hGitqMH/elvnCqaDH8Xv
 ENeH2dXzAVhjQwkXHfy7lv0F9OpyD4NFacEmSTd3AZdvVTHl6YJ14VgXv
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nsjdn8Gm
Subject: [Intel-wired-lan] [PATCH intel-next v2] i40e: allow toggling
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

Feature can be useful for local data path tests.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 22 +++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 28 ++++++++++++++++++-
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
 3 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 4f01e2a6b6bb..73d2c700dc35 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1830,6 +1830,28 @@ i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
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
+	if (ena_lpbk)
+		cmd->lb_mode = cpu_to_le16(I40E_AQ_LB_MAC_LOCAL);
+
+	return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
+}
+
 /**
  * i40e_aq_set_phy_debug
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1a1fab94205d..f134ae9169d7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12919,6 +12919,28 @@ static void i40e_clear_rss_lut(struct i40e_vsi *vsi)
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
@@ -12959,6 +12981,10 @@ static int i40e_set_features(struct net_device *netdev,
 	if (need_reset)
 		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
 
+	if (features & NETIF_F_LOOPBACK)
+		if (i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK)))
+			return -EINVAL;
+
 	return 0;
 }
 
@@ -13721,7 +13747,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
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
