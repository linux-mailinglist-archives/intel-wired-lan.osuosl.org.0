Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A5F191E36
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE79220022;
	Wed, 25 Mar 2020 00:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iY0yMO-KvtSn; Wed, 25 Mar 2020 00:38:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9214C23B2B;
	Wed, 25 Mar 2020 00:38:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC5621BF999
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B99D620028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1L-8MNoEDn8z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id B49F42012F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
IronPort-SDR: CSknj1UlMFT/3NI7vh+D8IacTYqrOTyZ0aapA/OG+JaJQpOad4NEfIqLNI1Utlvl9zXFMbEoHJ
 D6X/Av1deR1w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:36 -0700
IronPort-SDR: ee+aGW3VCGxCZprw+l6K5X0yE4YG3gETu9Gjk/mhpSZ0VDE6mJpsd7sqW/fVxHojIdJ+61UZPb
 2EbNo+vcN1jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099349"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:36 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:21 -0700
Message-Id: <20200325003824.5487-8-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 07/10] igc: Remove '\n' from log strings
 in igc_i225.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To keep log strings in igc_i225.c consistent with the rest of the driver
code, this patch removes the '\n' character at the end. The newline
character is automatically added by netdev_dbg() so there is no changes
in the output.

Note: hw_dbg() is a macro that expands to netdev_dbg().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_i225.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index c25f555aaf82..a5856ae87a7e 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -71,7 +71,7 @@ static s32 igc_get_hw_semaphore_i225(struct igc_hw *hw)
 
 		/* If we do not have the semaphore here, we have to give up. */
 		if (i == timeout) {
-			hw_dbg("Driver can't access device - SMBI bit is set.\n");
+			hw_dbg("Driver can't access device - SMBI bit is set");
 			return -IGC_ERR_NVM;
 		}
 	}
@@ -91,7 +91,7 @@ static s32 igc_get_hw_semaphore_i225(struct igc_hw *hw)
 	if (i == timeout) {
 		/* Release semaphores */
 		igc_put_hw_semaphore(hw);
-		hw_dbg("Driver can't access the NVM\n");
+		hw_dbg("Driver can't access the NVM");
 		return -IGC_ERR_NVM;
 	}
 
@@ -131,7 +131,7 @@ s32 igc_acquire_swfw_sync_i225(struct igc_hw *hw, u16 mask)
 	}
 
 	if (i == timeout) {
-		hw_dbg("Driver can't access resource, SW_FW_SYNC timeout.\n");
+		hw_dbg("Driver can't access resource, SW_FW_SYNC timeout");
 		ret_val = -IGC_ERR_SWFW_SYNC;
 		goto out;
 	}
@@ -228,7 +228,7 @@ static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
 	 */
 	if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
 	    words == 0) {
-		hw_dbg("nvm parameter(s) out of bounds\n");
+		hw_dbg("nvm parameter(s) out of bounds");
 		ret_val = -IGC_ERR_NVM;
 		goto out;
 	}
@@ -250,7 +250,7 @@ static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
 		}
 
 		if (ret_val) {
-			hw_dbg("Shadow RAM write EEWR timed out\n");
+			hw_dbg("Shadow RAM write EEWR timed out");
 			break;
 		}
 	}
@@ -369,7 +369,7 @@ static s32 igc_update_flash_i225(struct igc_hw *hw)
 
 	ret_val = igc_pool_flash_update_done_i225(hw);
 	if (ret_val == -IGC_ERR_NVM) {
-		hw_dbg("Flash update time out\n");
+		hw_dbg("Flash update time out");
 		goto out;
 	}
 
@@ -378,9 +378,9 @@ static s32 igc_update_flash_i225(struct igc_hw *hw)
 
 	ret_val = igc_pool_flash_update_done_i225(hw);
 	if (ret_val)
-		hw_dbg("Flash update time out\n");
+		hw_dbg("Flash update time out");
 	else
-		hw_dbg("Flash update complete\n");
+		hw_dbg("Flash update complete");
 
 out:
 	return ret_val;
@@ -406,7 +406,7 @@ static s32 igc_update_nvm_checksum_i225(struct igc_hw *hw)
 	 */
 	ret_val = igc_read_nvm_eerd(hw, 0, 1, &nvm_data);
 	if (ret_val) {
-		hw_dbg("EEPROM read failed\n");
+		hw_dbg("EEPROM read failed");
 		goto out;
 	}
 
@@ -423,7 +423,7 @@ static s32 igc_update_nvm_checksum_i225(struct igc_hw *hw)
 		ret_val = igc_read_nvm_eerd(hw, i, 1, &nvm_data);
 		if (ret_val) {
 			hw->nvm.ops.release(hw);
-			hw_dbg("NVM Read Error while updating checksum.\n");
+			hw_dbg("NVM Read Error while updating checksum");
 			goto out;
 		}
 		checksum += nvm_data;
@@ -433,7 +433,7 @@ static s32 igc_update_nvm_checksum_i225(struct igc_hw *hw)
 				     &checksum);
 	if (ret_val) {
 		hw->nvm.ops.release(hw);
-		hw_dbg("NVM Write Error while updating checksum.\n");
+		hw_dbg("NVM Write Error while updating checksum");
 		goto out;
 	}
 
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
