Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AFD191E2F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED63988CCE;
	Wed, 25 Mar 2020 00:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dwrQW4U2auoL; Wed, 25 Mar 2020 00:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C03D688CC6;
	Wed, 25 Mar 2020 00:38:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B33421BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFA5320107
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jaPBjJ34AUgf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id DF5F720028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
IronPort-SDR: ogI8Dtn7AQjEtrCj+4HBtGsZx/QqPqBvNwIl0dQRFeVPeT3T9B/gM/3KWfBx8SxdNT1OyFrbXX
 +6LxMK1lXmVw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:37 -0700
IronPort-SDR: roEd1z2yn47K4dTCBcDUZLZWGANw6BsF2Iu9/eOOHRuCbORzcpONnBfVqFM/SrijWgdEvwJ+2x
 8zXPd4z9Dk4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099356"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:37 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:23 -0700
Message-Id: <20200325003824.5487-10-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 09/10] igc: Remove '\n' from log messages
 in igc_nvm.c
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

To keep log strings in igc_nvm.c consistent with the rest of the driver
code, this patch removes the '\n' character at the end. The newline
character is automatically added by netdev_dbg() so there is no changes
in the output.

Note: hw_dbg() is a macro that expands to netdev_dbg().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_nvm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.c b/drivers/net/ethernet/intel/igc/igc_nvm.c
index 58f81aba0144..ac01330a8232 100644
--- a/drivers/net/ethernet/intel/igc/igc_nvm.c
+++ b/drivers/net/ethernet/intel/igc/igc_nvm.c
@@ -63,7 +63,7 @@ s32 igc_acquire_nvm(struct igc_hw *hw)
 	if (!timeout) {
 		eecd &= ~IGC_EECD_REQ;
 		wr32(IGC_EECD, eecd);
-		hw_dbg("Could not acquire NVM grant\n");
+		hw_dbg("Could not acquire NVM grant");
 		ret_val = -IGC_ERR_NVM;
 	}
 
@@ -105,7 +105,7 @@ s32 igc_read_nvm_eerd(struct igc_hw *hw, u16 offset, u16 words, u16 *data)
 	 */
 	if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
 	    words == 0) {
-		hw_dbg("nvm parameter(s) out of bounds\n");
+		hw_dbg("nvm parameter(s) out of bounds");
 		ret_val = -IGC_ERR_NVM;
 		goto out;
 	}
@@ -167,14 +167,14 @@ s32 igc_validate_nvm_checksum(struct igc_hw *hw)
 	for (i = 0; i < (NVM_CHECKSUM_REG + 1); i++) {
 		ret_val = hw->nvm.ops.read(hw, i, 1, &nvm_data);
 		if (ret_val) {
-			hw_dbg("NVM Read Error\n");
+			hw_dbg("NVM Read Error");
 			goto out;
 		}
 		checksum += nvm_data;
 	}
 
 	if (checksum != (u16)NVM_SUM) {
-		hw_dbg("NVM Checksum Invalid\n");
+		hw_dbg("NVM Checksum Invalid");
 		ret_val = -IGC_ERR_NVM;
 		goto out;
 	}
@@ -200,7 +200,7 @@ s32 igc_update_nvm_checksum(struct igc_hw *hw)
 	for (i = 0; i < NVM_CHECKSUM_REG; i++) {
 		ret_val = hw->nvm.ops.read(hw, i, 1, &nvm_data);
 		if (ret_val) {
-			hw_dbg("NVM Read Error while updating checksum.\n");
+			hw_dbg("NVM Read Error while updating checksum");
 			goto out;
 		}
 		checksum += nvm_data;
@@ -208,7 +208,7 @@ s32 igc_update_nvm_checksum(struct igc_hw *hw)
 	checksum = (u16)NVM_SUM - checksum;
 	ret_val = hw->nvm.ops.write(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
-		hw_dbg("NVM Write Error while updating checksum.\n");
+		hw_dbg("NVM Write Error while updating checksum");
 
 out:
 	return ret_val;
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
