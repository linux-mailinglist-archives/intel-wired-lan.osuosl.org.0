Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A2358FD0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 15:05:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DA1740470;
	Thu, 11 Aug 2022 13:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DA1740470
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660223155;
	bh=jihUjLmhP0Ljueg38gp1BMOZYd2kFG3xf8dkyWLxCl0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jjh5otVdFwv71ZBO4MVRsMKY+koIy/Ol+yJPvg9e7GPOesHdzNfzqRdSSV6EvVvNG
	 5uwjkvPPB8bzc1A0SGOfzQjLeDpLWIr/kt/iygFhGy73tVSKH68jHVNcpWkk8n5oQ9
	 BHPsCZ0T4OBtYouDt1vODIRmbqoEMjpZh8kh8YDtugVMlblxMHwbN8soc5cx3AOLUZ
	 rtoWpl3uG6w7n2tMUjlDPxdA3ELb1uiU9duL8RaG/sRGTKET+UfWF+nU2K2bYXjR5W
	 rd9cSIo0rjYV+nBCkBvQhZbrPeLaJNwi/HNzP2AhIdpI8ZAT6Ih9WZiKEIC3vF8SKH
	 HJwQib1DbnY7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r97QJgG6QZTK; Thu, 11 Aug 2022 13:05:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40C1D4017C;
	Thu, 11 Aug 2022 13:05:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40C1D4017C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 770F11BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A11B1417E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A11B1417E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rD4XZv9jJ4D8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 13:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 616FE41821
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 616FE41821
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="355342594"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="355342594"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 06:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="933304216"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2022 06:05:42 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 15:05:34 +0200
Message-Id: <20220811130535.1053828-3-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
References: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660223144; x=1691759144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Eg/BOudvwiub5khfYnb0GBsEbEs60ul02DVYerS2wA=;
 b=RRcqj+FZf2eAndngBysFBiGWBvSq/30Lp2m4MaVqpUMuYuYhSIOeXElW
 Z5EBYuZ6BiMs6iyUeFHEOHdO0r8At9MwXDEZRt3c7C/gQQdQjwXtuPe6H
 wQkTL5os09aW8SUfnY/IrbOKPjDQ9PY07tnE3ihQz/sGBY4EUVf3lgGsv
 fcvpxqRphp2lQxeSg3L8Lb0YFI0HQ1geMypAMeDBsVJYwkfO2EKooM3Ma
 fEtMm4XQzyR4kYehxGXF0CLPN0hM3nb49uHNkie/YCEdLTx1m8ntMCcsm
 SqtrwBbq76I+9v1bye/vtZ3m6M/153o1Xc0Dgjfc7HD2FIJ3U17KQlQAk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RRcqj+FZ
Subject: [Intel-wired-lan] [PATCH net-next v1 2/3] ice: Add additional flags
 to ice_nvm_write_activate
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_nvm_write_activate function is used to issue AdminQ command
0x0707 which sends a request to firmware to activate a flash bank. For
basic operations, this command takes an 8bit flag value which defines
the flags to control the activation process. There are some additional
flags that are stored in a second 8bit flag field.

We can simplify the interface by using a u16 cmd_flags variable. Split
this over the two bytes of flag storage in the structure.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  6 ++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c        | 13 +++++++++----
 drivers/net/ethernet/intel/ice/ice_nvm.h        |  2 +-
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 7eb8162c2ecc..b4ccbe58a095 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1538,6 +1538,12 @@ struct ice_aqc_nvm {
 #define ICE_AQC_NVM_PERST_FLAG		1
 #define ICE_AQC_NVM_EMPR_FLAG		2
 #define ICE_AQC_NVM_EMPR_ENA		BIT(0) /* Write Activate reply only */
+	/* For Write Activate, several flags are sent as part of a separate
+	 * flags2 field using a separate byte. For simplicity of the software
+	 * interface, we pass the flags as a 16 bit value so these flags are
+	 * all offset by 8 bits
+	 */
+#define ICE_AQC_NVM_ACTIV_REQ_EMPR	BIT(8) /* NVM Write Activate only */
 	__le16 module_typeid;
 	__le16 length;
 #define ICE_AQC_NVM_ERASE_LEN	0xFFFF
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 13cdb5ea594d..c262dc886e6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -1114,14 +1114,18 @@ int ice_nvm_validate_checksum(struct ice_hw *hw)
  * Update the control word with the required banks' validity bits
  * and dumps the Shadow RAM to flash (0x0707)
  *
- * cmd_flags controls which banks to activate, and the preservation level to
- * use when activating the NVM bank.
+ * cmd_flags controls which banks to activate, the preservation level to use
+ * when activating the NVM bank, and whether an EMP reset is required for
+ * activation.
+ *
+ * Note that the 16bit cmd_flags value is split between two separate 1 byte
+ * flag values in the descriptor.
  *
  * On successful return of the firmware command, the response_flags variable
  * is updated with the flags reported by firmware indicating certain status,
  * such as whether EMP reset is enabled.
  */
-int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags, u8 *response_flags)
+int ice_nvm_write_activate(struct ice_hw *hw, u16 cmd_flags, u8 *response_flags)
 {
 	struct ice_aqc_nvm *cmd;
 	struct ice_aq_desc desc;
@@ -1130,7 +1134,8 @@ int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags, u8 *response_flags)
 	cmd = &desc.params.nvm;
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_write_activate);
 
-	cmd->cmd_flags = cmd_flags;
+	cmd->cmd_flags = (u8)(cmd_flags & 0xFF);
+	cmd->offset_high = (u8)((cmd_flags >> 8) & 0xFF);
 
 	err = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 	if (!err && response_flags)
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 856d1ad4398b..774c2317967d 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -34,7 +34,7 @@ ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 int
 ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct ice_sq_cd *cd);
 int ice_nvm_validate_checksum(struct ice_hw *hw);
-int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags, u8 *response_flags);
+int ice_nvm_write_activate(struct ice_hw *hw, u16 cmd_flags, u8 *response_flags);
 int ice_aq_nvm_update_empr(struct ice_hw *hw);
 int
 ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
