Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4D5182698
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:27:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E68DA85DC4;
	Thu, 12 Mar 2020 01:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NvUv_NptudyH; Thu, 12 Mar 2020 01:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 565A686992;
	Thu, 12 Mar 2020 01:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12BCF1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F6D88589C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d6oDz5KyUbib for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:27:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD2DA858A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="242867032"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 18:27:28 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 18:27:19 -0700
Message-Id: <20200312012726.973301-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312012726.973301-1-jacob.e.keller@intel.com>
References: <20200312012726.973301-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 2/9] ice: create function to read a
 section of the NVM and Shadow RAM
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

The NVM contents are read via firmware by using the ice_aq_read_nvm
function. This function has a couple of limits:

1) The AdminQ commands can only take buffers sized up to 4Kb. Thus, any
   larger read must be split into multiple reads.
2) when reading from the Shadow RAM, reads must not cross sector
   boundaries. The sectors are also 4Kb in size.

Implement the ice_read_flat_nvm function to read portions of the NVM by
flat offset. That is, to read using offsets from the start of the NVM
rather than from a specific module.

This function will be able to read both from the NVM and from the Shadow
RAM. For simplicity NVM reads will always be broken up to not cross 4Kb
page boundaries, even though this is not required unless reading from
the Shadow RAM.

Use this new function as the implementation of ice_read_sr_word_aq.

The ice_read_sr_buf_aq function is not modified here. This is because
a following change will remove the only caller of that function in favor
of directly using ice_read_flat_nvm. Thus, there is little benefit to
changing it now only to remove it momentarily. At the same time, the
ice_read_sr_aq function will also be removed.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 87 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  3 +
 3 files changed, 85 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 801e4fd40b03..f7d4befcf283 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1251,6 +1251,8 @@ struct ice_aqc_nvm {
 	__le32 addr_low;
 };
 
+#define ICE_AQC_NVM_START_POINT			0
+
 /* NVM Checksum Command (direct, 0x0706) */
 struct ice_aqc_nvm_checksum {
 	u8 flags;
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 5597ec50a662..97aaf75379ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -11,13 +11,15 @@
  * @length: length of the section to be read (in bytes from the offset)
  * @data: command buffer (size [bytes] = length)
  * @last_command: tells if this is the last command in a series
+ * @read_shadow_ram: tell if this is a shadow RAM read
  * @cd: pointer to command details structure or NULL
  *
  * Read the NVM using the admin queue commands (0x0701)
  */
 static enum ice_status
 ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
-		void *data, bool last_command, struct ice_sq_cd *cd)
+		void *data, bool last_command, bool read_shadow_ram,
+		struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc;
 	struct ice_aqc_nvm *cmd;
@@ -30,6 +32,9 @@ ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_read);
 
+	if (!read_shadow_ram && module_typeid == ICE_AQC_NVM_START_POINT)
+		cmd->cmd_flags |= ICE_AQC_NVM_FLASH_ONLY;
+
 	/* If this is the last command in a series, set the proper flag. */
 	if (last_command)
 		cmd->cmd_flags |= ICE_AQC_NVM_LAST_CMD;
@@ -41,6 +46,68 @@ ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 	return ice_aq_send_cmd(hw, &desc, data, length, cd);
 }
 
+/**
+ * ice_read_flat_nvm - Read portion of NVM by flat offset
+ * @hw: pointer to the HW struct
+ * @offset: offset from beginning of NVM
+ * @length: (in) number of bytes to read; (out) number of bytes actually read
+ * @data: buffer to return data in (sized to fit the specified length)
+ * @read_shadow_ram: if true, read from shadow RAM instead of NVM
+ *
+ * Reads a portion of the NVM, as a flat memory space. This function correctly
+ * breaks read requests across Shadow RAM sectors and ensures that no single
+ * read request exceeds the maximum 4Kb read for a single AdminQ command.
+ *
+ * Returns a status code on failure. Note that the data pointer may be
+ * partially updated if some reads succeed before a failure.
+ */
+enum ice_status
+ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
+		  bool read_shadow_ram)
+{
+	enum ice_status status;
+	u32 inlen = *length;
+	u32 bytes_read = 0;
+	bool last_cmd;
+
+	*length = 0;
+
+	/* Verify the length of the read if this is for the Shadow RAM */
+	if (read_shadow_ram && ((offset + inlen) > (hw->nvm.sr_words * 2u))) {
+		ice_debug(hw, ICE_DBG_NVM,
+			  "NVM error: requested offset is beyond Shadow RAM limit\n");
+		return ICE_ERR_PARAM;
+	}
+
+	do {
+		u32 read_size, sector_offset;
+
+		/* ice_aq_read_nvm cannot read more than 4Kb at a time.
+		 * Additionally, a read from the Shadow RAM may not cross over
+		 * a sector boundary. Conveniently, the sector size is also
+		 * 4Kb.
+		 */
+		sector_offset = offset % ICE_AQ_MAX_BUF_LEN;
+		read_size = min_t(u32, ICE_AQ_MAX_BUF_LEN - sector_offset,
+				  inlen - bytes_read);
+
+		last_cmd = !(bytes_read + read_size < inlen);
+
+		status = ice_aq_read_nvm(hw, ICE_AQC_NVM_START_POINT,
+					 offset, read_size,
+					 data + bytes_read, last_cmd,
+					 read_shadow_ram, NULL);
+		if (status)
+			break;
+
+		bytes_read += read_size;
+		offset += read_size;
+	} while (!last_cmd);
+
+	*length = bytes_read;
+	return status;
+}
+
 /**
  * ice_check_sr_access_params - verify params for Shadow RAM R/W operations.
  * @hw: pointer to the HW structure
@@ -100,7 +167,7 @@ ice_read_sr_aq(struct ice_hw *hw, u32 offset, u16 words, __le16 *data,
 	 */
 	if (!status)
 		status = ice_aq_read_nvm(hw, 0, 2 * offset, 2 * words, data,
-					 last_command, NULL);
+					 last_command, true, NULL);
 
 	return status;
 }
@@ -111,19 +178,25 @@ ice_read_sr_aq(struct ice_hw *hw, u32 offset, u16 words, __le16 *data,
  * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF)
  * @data: word read from the Shadow RAM
  *
- * Reads one 16 bit word from the Shadow RAM using the ice_read_sr_aq method.
+ * Reads one 16 bit word from the Shadow RAM using ice_read_flat_nvm.
  */
 static enum ice_status
 ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
 {
+	u32 bytes = sizeof(u16);
 	enum ice_status status;
 	__le16 data_local;
 
-	status = ice_read_sr_aq(hw, offset, 1, &data_local, true);
-	if (!status)
-		*data = le16_to_cpu(data_local);
+	/* Note that ice_read_flat_nvm takes into account the 4Kb AdminQ and
+	 * Shadow RAM sector restrictions necessary when reading from the NVM.
+	 */
+	status = ice_read_flat_nvm(hw, offset * sizeof(u16), &bytes,
+				   (u8 *)&data_local, true);
+	if (status)
+		return status;
 
-	return status;
+	*data = le16_to_cpu(data_local);
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index a9fa011c22c6..4245ef988edf 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -4,5 +4,8 @@
 #ifndef _ICE_NVM_H_
 #define _ICE_NVM_H_
 
+enum ice_status
+ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
+		  bool read_shadow_ram);
 enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
 #endif /* _ICE_NVM_H_ */
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
