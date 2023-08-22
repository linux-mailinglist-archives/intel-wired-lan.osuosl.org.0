Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3B3783B0A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 09:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EECFC40B5E;
	Tue, 22 Aug 2023 07:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EECFC40B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692689795;
	bh=G0qgsn72HWpY8xTQjewE2XACpNz1vIWxiwAq6h8Dq0M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SjVxn2QDOpDeK7GoMY9W/MyCPsHbpmcae8eWjrraNNb1ZNEXvtwkaYI2DIYwo4nQZ
	 m3aIsYKIjDIyI45N6nvpc8LPHrJKujELvUDtN1RUhRZo/xo58nJytQCFw4WOhVKkY0
	 ikiQPiyjKheZFDCXX5PVxcz/T+H6uDb5RJ17ghCCdMjz7yCrAxqlD+OUUhwislBmdj
	 SohJexdKFRhmiZhtmuZMyThcU7mhJ4ReFUGo2S6objEMnu7t7bhsRurr3y4l36R9Np
	 MaoDN7MIIaYkJw684Eh9MM9rUIKHT8M4JFIdoGqo2PmEqU5ujXGACniFnYLZLjHUKM
	 friWCTO2uL5Rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MeeTCaEsyTOP; Tue, 22 Aug 2023 07:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A646240A58;
	Tue, 22 Aug 2023 07:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A646240A58
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70F761BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 07:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 494A381D46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 07:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 494A381D46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fAoLQuP9ZDnx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 07:36:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6756581BA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 07:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6756581BA8
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="437723487"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="437723487"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 00:36:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="713060718"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="713060718"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga006.jf.intel.com with ESMTP; 22 Aug 2023 00:36:11 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D5FD0333CE;
 Tue, 22 Aug 2023 08:36:10 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Aug 2023 09:34:52 +0200
Message-Id: <20230822073452.28446-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692689785; x=1724225785;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bAcGHkc+BDZTeEBPWBUcR2G/1CyIxh7FabUDc3RWk80=;
 b=bssP91zwWmUpl84cVq7GTZtRn38nc1y9wqhtdxnpFdpLscFHTfYlbdAJ
 zfIHfnMWFJSptsGL+dcA30RwfLTYSDa0MNWXnUhyUNNgxbLvlQEOlmmpp
 fwSiGXu0tMbHD6gHOtKK0brmd7M0ery+Yv497u8K8WswReCmYDrzcUmT6
 8mxKz7cZolrVGWSROCq9OHTdhPh0SCnCab8f1wl4VcbZNEQH3SjmfWKPw
 6BtycoUNGL0UrzQQyh2UxYNV3pjVf66bGg/X6E3pRvGKzqviHqAVCyTU6
 Q2sYg8Al1yreE2jltGlLlHJ+uG/dlRII/JDli72z1Cmavqzk1GCPlJri1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bssP91zw
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Disable Cage Max Power
 override
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

NVM module called "Cage Max Power override" allows to
change max power in the cage. This can be achieved
using external tools. The responsibility of the ice driver is to
go back to the default settings whenever port split is done.
This is achieved by clearing Override Enable bit in the
NVM module. Override of the max power is disabled so the
default value will be used.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  9 +++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 35 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  4 +++
 4 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index ffbe9d3a5d77..a3a49d922650 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1569,6 +1569,15 @@ struct ice_aqc_nvm {
 	__le32 addr_low;
 };
 
+#define ICE_AQC_NVM_CMPO_MOD_ID			0x153
+
+/* Cage Max Power override NVM module */
+struct ice_aqc_nvm_cmpo {
+	__le16 length;
+#define ICE_AQC_NVM_CMPO_ENABLE	BIT(8)
+	__le16 cages_cfg[8];
+};
+
 #define ICE_AQC_NVM_START_POINT			0
 
 /* NVM Checksum Command (direct, 0x0706) */
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..e9300df9ef40 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -591,6 +591,36 @@ static void ice_devlink_port_options_print(struct ice_pf *pf)
 	kfree(options);
 }
 
+#define ICE_NUM_OF_CAGES 8
+
+/**
+ * ice_devlink_aq_clear_cmpo - clear Cage Max Power override
+ * @hw: pointer to the HW struct
+ *
+ * Read Cage Max Power override NVM module, clear override
+ * enable bit for each of the cages. Write the settings back to
+ * the NVM.
+ */
+static int
+ice_devlink_aq_clear_cmpo(struct ice_hw *hw)
+{
+	struct ice_aqc_nvm_cmpo data;
+	int ret, i;
+
+	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 0, sizeof(data),
+			      &data, true, false, NULL);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < ICE_NUM_OF_CAGES; i++)
+		data.cages_cfg[i] &= ~cpu_to_le16(ICE_AQC_NVM_CMPO_ENABLE);
+
+	/* Do not update the length word since it is not permitted */
+	return ice_aq_update_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 2,
+				 sizeof(data.cages_cfg), data.cages_cfg,
+				 false, 0, NULL);
+}
+
 /**
  * ice_devlink_aq_set_port_option - Send set port option admin queue command
  * @pf: the PF to print split port options
@@ -623,6 +653,11 @@ ice_devlink_aq_set_port_option(struct ice_pf *pf, u8 option_idx,
 		return -EIO;
 	}
 
+	status = ice_devlink_aq_clear_cmpo(&pf->hw);
+	if (status)
+		dev_dbg(dev, "Failed to clear Cage Max Power override, err %d aq_err %d\n",
+			status, pf->hw.adminq.sq_last_status);
+
 	status = ice_nvm_write_activate(&pf->hw, ICE_AQC_NVM_ACTIV_REQ_EMPR, NULL);
 	if (status) {
 		dev_dbg(dev, "ice_nvm_write_activate failed, err %d aq_err %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index f6f52a248066..745f2459943f 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -18,7 +18,7 @@
  *
  * Read the NVM using the admin queue commands (0x0701)
  */
-static int
+int
 ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 		void *data, bool last_command, bool read_shadow_ram,
 		struct ice_sq_cd *cd)
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 774c2317967d..90f36e19e06b 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -15,6 +15,10 @@ struct ice_orom_civd_info {
 int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_nvm(struct ice_hw *hw);
 int
+ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
+		void *data, bool last_command, bool read_shadow_ram,
+		struct ice_sq_cd *cd);
+int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
 int
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
