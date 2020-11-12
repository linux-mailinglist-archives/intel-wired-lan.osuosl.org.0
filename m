Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A37C82AFBCF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 01:45:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 375C586C8F;
	Thu, 12 Nov 2020 00:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oA9DOWhFM+lS; Thu, 12 Nov 2020 00:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B69CE86C5B;
	Thu, 12 Nov 2020 00:45:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A226D1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B10F2E0EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PS3kMf3ODdGj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 00:45:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E2142E11A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:10 +0000 (UTC)
IronPort-SDR: Qx1MlIYK3AsVvt2QgLuJ6+oy4eLKM9U2Ji4E1wv1unHAe1YcvyDgigdc2eduDHcFGh+pJSNXbs
 l4PVH7dH1y4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="170406223"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="170406223"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:06 -0800
IronPort-SDR: EPMhGcUP0oLLmtOrSXfCChuO+BHBD2xgFiTLuu7LmFKpjI0gWPfrq81h9iIOTqznm/+D9chjXt
 Vv6m3hf8852g==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="309015611"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:06 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Nov 2020 16:43:27 -0800
Message-Id: <20201112004330.2896993-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201112004330.2896993-1-jacob.e.keller@intel.com>
References: <20201112004330.2896993-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 4/7] ice: allow reading arbitrary
 size data with read_flash_module
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor ice_read_flash_module so that it takes a size and a length
value, rather than always reading in 2-byte increments. The
ice_read_nvm_module and ice_read_orom_module wrapper functions will
still read a u16 with the byte-swapping enabled.

This will be used in a future change to implement reading of the CIVD
data from the Option ROM module.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 34 ++++++++++++++++--------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 88a9e17744f3..ff99815402d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -306,10 +306,11 @@ static u32 ice_get_flash_bank_offset(struct ice_hw *hw, enum ice_bank_select ban
  * @hw: pointer to the HW structure
  * @bank: which bank of the module to read
  * @module: the module to read
- * @offset: the offset into the module in words
+ * @offset: the offset into the module in bytes
  * @data: storage for the word read from the flash
+ * @length: bytes of data to read
  *
- * Read a word from the specified flash module. The bank parameter indicates
+ * Read data from the specified flash module. The bank parameter indicates
  * whether or not to read from the active bank or the inactive bank of that
  * module.
  *
@@ -319,11 +320,9 @@ static u32 ice_get_flash_bank_offset(struct ice_hw *hw, enum ice_bank_select ban
  */
 static enum ice_status
 ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
-		      u32 offset, u16 *data)
+		      u32 offset, u8 *data, u32 length)
 {
-	u32 bytes = sizeof(u16);
 	enum ice_status status;
-	__le16 data_local;
 	u32 start;
 
 	start = ice_get_flash_bank_offset(hw, bank, module);
@@ -337,10 +336,7 @@ ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
 	if (status)
 		return status;
 
-	status = ice_read_flat_nvm(hw, start + offset * sizeof(u16), &bytes,
-				   (__force u8 *)&data_local, false);
-	if (!status)
-		*data = le16_to_cpu(data_local);
+	status = ice_read_flat_nvm(hw, start + offset, &length, data, false);
 
 	ice_release_nvm(hw);
 
@@ -360,7 +356,15 @@ ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
 static enum ice_status
 ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
 {
-	return ice_read_flash_module(hw, bank, ICE_SR_1ST_NVM_BANK_PTR, offset, data);
+	enum ice_status status;
+	__le16 data_local;
+
+	status = ice_read_flash_module(hw, bank, ICE_SR_1ST_NVM_BANK_PTR, offset * sizeof(u16),
+				       (__force u8 *)&data_local, sizeof(u16));
+	if (!status)
+		*data = le16_to_cpu(data_local);
+
+	return status;
 }
 
 /**
@@ -377,7 +381,15 @@ ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u1
 static enum ice_status
 ice_read_orom_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
 {
-	return ice_read_flash_module(hw, bank, ICE_SR_1ST_OROM_BANK_PTR, offset, data);
+	enum ice_status status;
+	__le16 data_local;
+
+	status = ice_read_flash_module(hw, bank, ICE_SR_1ST_OROM_BANK_PTR, offset * sizeof(u16),
+				       (__force u8 *)&data_local, sizeof(u16));
+	if (!status)
+		*data = le16_to_cpu(data_local);
+
+	return status;
 }
 
 /**
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
