Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FD2786ACB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 10:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AD6682303;
	Thu, 24 Aug 2023 08:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AD6682303
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692867395;
	bh=yXv9wLBjOedFfHEC9CsEsY2sUa5MzwHMos5vsxZIyb4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3Z+XGJr5B8jm5Y/JLZn4oxeJxAM+iWGTLr6eYXpOd0EEcVFHz3ktOBYeO9RX+Bxz8
	 tsAovw17rlImvZRPUw95Y4Ol8WH4iJPvgHS4QZSpG7pwsZwJYrHJULZvsNQLu+kDvG
	 F8V7AQv7peY+5SUF2IeexnMeuW51ZSxwgfZ0dLWKPvbobV+r/k9uvl8WotAR9+Y2Cz
	 JjuLmuD2aEU95xpxH2TCxdA/asD4vgWb4/YkqeYF+4u27ezLE5d/Sc0x51TaK1LiIk
	 +++C9YJDr+wYrFsZ9ZK0EMY/D9p1u+CtYEIQYBJpXVxRIx8J01KO8D4jqgE4YW/AP9
	 mGgjt8PKomkYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k3kVRzT5JaSc; Thu, 24 Aug 2023 08:56:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCF93822F9;
	Thu, 24 Aug 2023 08:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCF93822F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 541421BF255
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 08:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3772F4191E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 08:56:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3772F4191E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yqmwLP8Om79a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 08:56:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09D7C40117
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 08:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09D7C40117
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354717729"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354717729"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:56:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880722120"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2023 01:56:23 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5C7CD312D8;
 Thu, 24 Aug 2023 09:56:17 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 10:54:59 +0200
Message-Id: <20230824085459.35998-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692867387; x=1724403387;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=92modolNr5OWa939Sng0WYjDIDaFa3fv74FQxUNm+aA=;
 b=Avvm2u1QKkL7/h/dIzb0ZbSP3qFFpq12Ga2Ge9SOUGu8jP5q99qf1DPe
 JCu5MESrleyVjy3FDd5ng9p+lJkyKyxktdPNPF1qdT/TA3miEFB26iUDn
 E5Q8Q8y1rHWCiRn0KcL5ZUsaiihRCi0feG5MVG3H3ZBNgSNoBENTlQsfF
 hCFoz5Lw+r9KEM7cipOnBMbOXhIaevDMrZPSATN+/ebPyDKyQ/MgSzS8A
 SPWaWCTYvwIFva8RtRGElWPjH+vNsFNyeXznuvLLk4Z9vJDmqhGo3II+e
 8gROlbl77crPiUuABfxZ2krMAc0uckR2hcLICKpyjDa/odaRx4J2bAP4i
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Avvm2u1Q
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max Power
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
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
v2: Move ICE_NUM_OF_CAGES to ice_adminq_cmd.h,
    ice_devlink_aq_clear_cmpo doc changes
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 11 +++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 32 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  4 +++
 4 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index ffbe9d3a5d77..01eadeb46db2 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1569,6 +1569,17 @@ struct ice_aqc_nvm {
 	__le32 addr_low;
 };
 
+#define ICE_AQC_NVM_CMPO_MOD_ID			0x153
+
+#define ICE_NUM_OF_CAGES 8
+
+/* Cage Max Power override NVM module */
+struct ice_aqc_nvm_cmpo {
+	__le16 length;
+#define ICE_AQC_NVM_CMPO_ENABLE	BIT(8)
+	__le16 cages_cfg[ICE_NUM_OF_CAGES];
+};
+
 #define ICE_AQC_NVM_START_POINT			0
 
 /* NVM Checksum Command (direct, 0x0706) */
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..2bd570073bdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -591,6 +591,33 @@ static void ice_devlink_port_options_print(struct ice_pf *pf)
 	kfree(options);
 }
 
+/**
+ * ice_devlink_aq_clear_cmpo - clear Cage Max Power override
+ * @hw: pointer to the HW struct
+ *
+ * Clear Cage Max Power override enable bit for each of the cages
+ */
+static int
+ice_devlink_aq_clear_cmpo(struct ice_hw *hw)
+{
+	struct ice_aqc_nvm_cmpo data;
+	int ret, i;
+
+	/* Read Cage Max Power override NVM module */
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
@@ -623,6 +650,11 @@ ice_devlink_aq_set_port_option(struct ice_pf *pf, u8 option_idx,
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
