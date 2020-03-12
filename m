Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E910518269E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:27:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98C8088AAF;
	Thu, 12 Mar 2020 01:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hc5zEEhqZV60; Thu, 12 Mar 2020 01:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAD6A88AA9;
	Thu, 12 Mar 2020 01:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32E2E1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FEF088D5C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gKEutL7QI-bx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:27:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2921B88CEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="242867041"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 18:27:28 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 18:27:22 -0700
Message-Id: <20200312012726.973301-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312012726.973301-1-jacob.e.keller@intel.com>
References: <20200312012726.973301-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 5/9] ice: implement full NVM read from
 ETHTOOL_GEEPROM
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The current implementation of .get_eeprom only enables reading from the
Shadow RAM portion of the NVM contents. Implement support for reading
the entire flash contents instead of only the initial portion contained
in the Shadow RAM.

A complete dump can take several seconds, but the ETHTOOL_GEEPROM ioctl
is capable of reading only a limited portion at a time by specifying the
offset and length to read.

In order to perform the reads directly, several functions are made non
static. Additionally, the unused ice_read_sr_buf_aq and ice_read_sr_buf
functions are removed.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h  |   3 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  33 ++--
 drivers/net/ethernet/intel/ice/ice_nvm.c     | 150 +------------------
 drivers/net/ethernet/intel/ice/ice_nvm.h     |   4 +
 4 files changed, 26 insertions(+), 164 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 0885bdb5830c..ded704236643 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -38,9 +38,6 @@ enum ice_status
 ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res);
 enum ice_status
 ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res);
-enum ice_status ice_init_nvm(struct ice_hw *hw);
-enum ice_status
-ice_read_sr_buf(struct ice_hw *hw, u16 offset, u16 *words, u16 *data);
 enum ice_status
 ice_aq_alloc_free_res(struct ice_hw *hw, u16 num_entries,
 		      struct ice_aqc_alloc_free_res_elem *buf, u16 buf_size,
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 75970bcfa6c0..593fb37bd59e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -245,7 +245,7 @@ static int ice_get_eeprom_len(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_pf *pf = np->vsi->back;
 
-	return (int)(pf->hw.nvm.sr_words * sizeof(u16));
+	return (int)pf->hw.nvm.flash_size;
 }
 
 static int
@@ -253,39 +253,46 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	       u8 *bytes)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	u16 first_word, last_word, nwords;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	enum ice_status status;
 	struct device *dev;
 	int ret = 0;
-	u16 *buf;
+	u8 *buf;
 
 	dev = ice_pf_to_dev(pf);
 
 	eeprom->magic = hw->vendor_id | (hw->device_id << 16);
+	netdev_dbg(netdev, "GEEPROM cmd 0x%08x, offset 0x%08x, len 0x%08x\n",
+		   eeprom->cmd, eeprom->offset, eeprom->len);
 
-	first_word = eeprom->offset >> 1;
-	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
-	nwords = last_word - first_word + 1;
-
-	buf = devm_kcalloc(dev, nwords, sizeof(u16), GFP_KERNEL);
+	buf = kzalloc(eeprom->len, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
-	status = ice_read_sr_buf(hw, first_word, &nwords, buf);
+	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (status) {
-		dev_err(dev, "ice_read_sr_buf failed, err %d aq_err %d\n",
+		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
 			status, hw->adminq.sq_last_status);
-		eeprom->len = sizeof(u16) * nwords;
 		ret = -EIO;
 		goto out;
 	}
 
-	memcpy(bytes, (u8 *)buf + (eeprom->offset & 1), eeprom->len);
+	status = ice_read_flat_nvm(hw, eeprom->offset, &eeprom->len, buf,
+				   false);
+	if (status) {
+		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %d\n",
+			status, hw->adminq.sq_last_status);
+		ret = -EIO;
+		goto release;
+	}
+
+	memcpy(bytes, buf, eeprom->len);
+release:
+	ice_release_nvm(hw);
 out:
-	devm_kfree(dev, buf);
+	kfree(buf);
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 4cdce0370963..08909d1c7cce 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -107,70 +107,6 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 	return status;
 }
 
-/**
- * ice_check_sr_access_params - verify params for Shadow RAM R/W operations.
- * @hw: pointer to the HW structure
- * @offset: offset in words from module start
- * @words: number of words to access
- */
-static enum ice_status
-ice_check_sr_access_params(struct ice_hw *hw, u32 offset, u16 words)
-{
-	if ((offset + words) > hw->nvm.sr_words) {
-		ice_debug(hw, ICE_DBG_NVM,
-			  "NVM error: offset beyond SR lmt.\n");
-		return ICE_ERR_PARAM;
-	}
-
-	if (words > ICE_SR_SECTOR_SIZE_IN_WORDS) {
-		/* We can access only up to 4KB (one sector), in one AQ write */
-		ice_debug(hw, ICE_DBG_NVM,
-			  "NVM error: tried to access %d words, limit is %d.\n",
-			  words, ICE_SR_SECTOR_SIZE_IN_WORDS);
-		return ICE_ERR_PARAM;
-	}
-
-	if (((offset + (words - 1)) / ICE_SR_SECTOR_SIZE_IN_WORDS) !=
-	    (offset / ICE_SR_SECTOR_SIZE_IN_WORDS)) {
-		/* A single access cannot spread over two sectors */
-		ice_debug(hw, ICE_DBG_NVM,
-			  "NVM error: cannot spread over two sectors.\n");
-		return ICE_ERR_PARAM;
-	}
-
-	return 0;
-}
-
-/**
- * ice_read_sr_aq - Read Shadow RAM.
- * @hw: pointer to the HW structure
- * @offset: offset in words from module start
- * @words: number of words to read
- * @data: storage for the words read from Shadow RAM (Little Endian)
- * @last_command: tells the AdminQ that this is the last command
- *
- * Reads 16-bit Little Endian word buffers from the Shadow RAM using the admin
- * command.
- */
-static enum ice_status
-ice_read_sr_aq(struct ice_hw *hw, u32 offset, u16 words, __le16 *data,
-	       bool last_command)
-{
-	enum ice_status status;
-
-	status = ice_check_sr_access_params(hw, offset, words);
-
-	/* values in "offset" and "words" parameters are sized as words
-	 * (16 bits) but ice_aq_read_nvm expects these values in bytes.
-	 * So do this conversion while calling ice_aq_read_nvm.
-	 */
-	if (!status)
-		status = ice_aq_read_nvm(hw, 0, 2 * offset, 2 * words, data,
-					 last_command, true, NULL);
-
-	return status;
-}
-
 /**
  * ice_read_sr_word_aq - Reads Shadow RAM via AQ
  * @hw: pointer to the HW structure
@@ -198,63 +134,6 @@ ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
 	return 0;
 }
 
-/**
- * ice_read_sr_buf_aq - Reads Shadow RAM buf via AQ
- * @hw: pointer to the HW structure
- * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF)
- * @words: (in) number of words to read; (out) number of words actually read
- * @data: words read from the Shadow RAM
- *
- * Reads 16 bit words (data buf) from the SR using the ice_read_sr_aq
- * method. Ownership of the NVM is taken before reading the buffer and later
- * released.
- */
-static enum ice_status
-ice_read_sr_buf_aq(struct ice_hw *hw, u16 offset, u16 *words, u16 *data)
-{
-	enum ice_status status;
-	bool last_cmd = false;
-	u16 words_read = 0;
-	u16 i = 0;
-
-	do {
-		u16 read_size, off_w;
-
-		/* Calculate number of bytes we should read in this step.
-		 * It's not allowed to read more than one page at a time or
-		 * to cross page boundaries.
-		 */
-		off_w = offset % ICE_SR_SECTOR_SIZE_IN_WORDS;
-		read_size = off_w ?
-			min_t(u16, *words,
-			      (ICE_SR_SECTOR_SIZE_IN_WORDS - off_w)) :
-			min_t(u16, (*words - words_read),
-			      ICE_SR_SECTOR_SIZE_IN_WORDS);
-
-		/* Check if this is last command, if so set proper flag */
-		if ((words_read + read_size) >= *words)
-			last_cmd = true;
-
-		status = ice_read_sr_aq(hw, offset, read_size,
-					data + words_read, last_cmd);
-		if (status)
-			goto read_nvm_buf_aq_exit;
-
-		/* Increment counter for words already read and move offset to
-		 * new read location
-		 */
-		words_read += read_size;
-		offset += read_size;
-	} while (words_read < *words);
-
-	for (i = 0; i < *words; i++)
-		data[i] = le16_to_cpu(((__force __le16 *)data)[i]);
-
-read_nvm_buf_aq_exit:
-	*words = words_read;
-	return status;
-}
-
 /**
  * ice_acquire_nvm - Generic request for acquiring the NVM ownership
  * @hw: pointer to the HW structure
@@ -262,7 +141,7 @@ ice_read_sr_buf_aq(struct ice_hw *hw, u16 offset, u16 *words, u16 *data)
  *
  * This function will request NVM ownership.
  */
-static enum ice_status
+enum ice_status
 ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access)
 {
 	if (hw->nvm.blank_nvm_mode)
@@ -277,7 +156,7 @@ ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access)
  *
  * This function will release NVM ownership.
  */
-static void ice_release_nvm(struct ice_hw *hw)
+void ice_release_nvm(struct ice_hw *hw)
 {
 	if (hw->nvm.blank_nvm_mode)
 		return;
@@ -514,31 +393,6 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 	return 0;
 }
 
-/**
- * ice_read_sr_buf - Reads Shadow RAM buf and acquire lock if necessary
- * @hw: pointer to the HW structure
- * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF)
- * @words: (in) number of words to read; (out) number of words actually read
- * @data: words read from the Shadow RAM
- *
- * Reads 16 bit words (data buf) from the SR using the ice_read_nvm_buf_aq
- * method. The buf read is preceded by the NVM ownership take
- * and followed by the release.
- */
-enum ice_status
-ice_read_sr_buf(struct ice_hw *hw, u16 offset, u16 *words, u16 *data)
-{
-	enum ice_status status;
-
-	status = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (!status) {
-		status = ice_read_sr_buf_aq(hw, offset, words, data);
-		ice_release_nvm(hw);
-	}
-
-	return status;
-}
-
 /**
  * ice_nvm_validate_checksum
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 4245ef988edf..7375f6b96919 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -4,8 +4,12 @@
 #ifndef _ICE_NVM_H_
 #define _ICE_NVM_H_
 
+enum ice_status
+ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
+void ice_release_nvm(struct ice_hw *hw);
 enum ice_status
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
+enum ice_status ice_init_nvm(struct ice_hw *hw);
 enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
 #endif /* _ICE_NVM_H_ */
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
