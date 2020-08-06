Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8BE23DAF5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Aug 2020 15:45:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F24086E93;
	Thu,  6 Aug 2020 13:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6e86cUMeF81g; Thu,  6 Aug 2020 13:45:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FD0586E65;
	Thu,  6 Aug 2020 13:45:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF7331BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 13:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB1E586E76
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 13:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NZvLrcro9yYx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Aug 2020 13:45:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2658686E5E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 13:45:16 +0000 (UTC)
IronPort-SDR: TFtFeyq4MKARMFl3p4Pt6czQLqRf6ekWyZgeJyaUfClpqFR/a9dL8NgACr5aEDMtVP8eKUo5Br
 0lCKsmsqaZsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="150536314"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="150536314"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 06:45:10 -0700
IronPort-SDR: Zc94kvYfdrSK0jBexEc+l6a5Dj1p78CWxUZGd+o23WtACRFdH8EQxlDkIxOO63nGcs/df8iXD+
 kQSeypz50Nig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="493197843"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga006.fm.intel.com with ESMTP; 06 Aug 2020 06:45:09 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Aug 2020 13:40:59 +0000
Message-Id: <20200806134059.11058-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Set RX_ONLY mode for unicast
 promiscuous on VLAN
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Trusted VF with unicast promiscuous mode set, could listen to TX
traffic of other VFs.
Set unicast promiscuous mode to rx traffic, if VSI has port VLAN
configured. Rename misleading I40E_AQC_SET_VSI_PROMISC_TX bit to
I40E_AQC_SET_VSI_PROMISC_RX_ONLY. Aligned unicast promiscuous with
VLAN to the one without VLAN.
Previously, other trusted VFs with port VLAN could listen to unicast
tx traffic of other VFs.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 35 ++++++++++++++-----
 2 files changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index a62ddd6..c0c8efe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -981,7 +981,7 @@ struct i40e_aqc_set_vsi_promiscuous_modes {
 #define I40E_AQC_SET_VSI_PROMISC_BROADCAST	0x04
 #define I40E_AQC_SET_VSI_DEFAULT		0x08
 #define I40E_AQC_SET_VSI_PROMISC_VLAN		0x10
-#define I40E_AQC_SET_VSI_PROMISC_TX		0x8000
+#define I40E_AQC_SET_VSI_PROMISC_RX_ONLY	0x8000
 	__le16	seid;
 	__le16	vlan_tag;
 #define I40E_AQC_SET_VSI_VLAN_VALID		0x8000
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index afad5e9..5328d41 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1966,6 +1966,21 @@ i40e_status i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
 	return status;
 }
 
+/**
+ * i40e_is_aq_api_ver_ge
+ * @hw: pointer to the hw struct
+ * @maj: api major value
+ * @min: api minor value
+ *
+ * Assert whether current HW api version is greater/equal than provided.
+ **/
+static bool i40e_is_aq_api_ver_ge(struct i40e_adminq_info *aq, u16 maj,
+				  u16 min)
+{
+	return (aq->api_maj_ver > maj ||
+		(aq->api_maj_ver == maj && aq->api_min_ver >= min));
+}
+
 /**
  * i40e_aq_add_vsi
  * @hw: pointer to the hw struct
@@ -2091,18 +2106,16 @@ i40e_status i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
 
 	if (set) {
 		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
-		if (rx_only_promisc &&
-		    (((hw->aq.api_maj_ver == 1) && (hw->aq.api_min_ver >= 5)) ||
-		     (hw->aq.api_maj_ver > 1)))
-			flags |= I40E_AQC_SET_VSI_PROMISC_TX;
+		if (rx_only_promisc && i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+			flags |= I40E_AQC_SET_VSI_PROMISC_RX_ONLY;
 	}
 
 	cmd->promiscuous_flags = cpu_to_le16(flags);
 
 	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_UNICAST);
-	if (((hw->aq.api_maj_ver >= 1) && (hw->aq.api_min_ver >= 5)) ||
-	    (hw->aq.api_maj_ver > 1))
-		cmd->valid_flags |= cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_TX);
+	if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+		cmd->valid_flags |=
+			cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_RX_ONLY);
 
 	cmd->seid = cpu_to_le16(seid);
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -2199,11 +2212,17 @@ enum i40e_status_code i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
 
-	if (enable)
+	if (enable) {
 		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
+		if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+			flags |= I40E_AQC_SET_VSI_PROMISC_RX_ONLY;
+	}
 
 	cmd->promiscuous_flags = cpu_to_le16(flags);
 	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_UNICAST);
+	if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+		cmd->valid_flags |=
+			cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_RX_ONLY);
 	cmd->seid = cpu_to_le16(seid);
 	cmd->vlan_tag = cpu_to_le16(vid | I40E_AQC_SET_VSI_VLAN_VALID);
 
-- 
2.26.0

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
