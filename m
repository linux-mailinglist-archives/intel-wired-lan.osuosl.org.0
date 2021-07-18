Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D30B73CC752
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Jul 2021 06:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E73D606DA;
	Sun, 18 Jul 2021 04:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkNyEfIFSa0q; Sun, 18 Jul 2021 04:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3258960651;
	Sun, 18 Jul 2021 04:10:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0EEB1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 04:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC0C283906
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 04:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nOGy51m-cBMt for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Jul 2021 04:10:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 83699838B6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 04:10:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10048"; a="190512527"
X-IronPort-AV: E=Sophos;i="5.84,249,1620716400"; d="scan'208";a="190512527"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2021 21:10:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,249,1620716400"; d="scan'208";a="508781909"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2021 21:10:37 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Sun, 18 Jul 2021 07:10:31 +0300
Message-Id: <20210718041031.3619696-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Do not take care about
 recovery NVM checksum
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On new platforms, the NVM is read-only. Attempting to update the NVM
is causing a lockup to occur. Do not attempt to write to the NVM
on platforms where it's not supported.
Emit an error message when the NVM checksum is invalid.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=213667
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Suggested-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 9bae4932a11d..a34010580bfc 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4141,13 +4141,17 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 		return ret_val;
 
 	if (!(data & valid_csum_mask)) {
-		data |= valid_csum_mask;
-		ret_val = e1000_write_nvm(hw, word, 1, &data);
-		if (ret_val)
-			return ret_val;
-		ret_val = e1000e_update_nvm_checksum(hw);
-		if (ret_val)
-			return ret_val;
+		e_dbg("NVM Checksum Invalid\n");
+
+		if (hw->mac.type < e1000_pch_cnp) {
+			data |= valid_csum_mask;
+			ret_val = e1000_write_nvm(hw, word, 1, &data);
+			if (ret_val)
+				return ret_val;
+			ret_val = e1000e_update_nvm_checksum(hw);
+			if (ret_val)
+				return ret_val;
+		}
 	}
 
 	return e1000e_validate_nvm_checksum_generic(hw);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
