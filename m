Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC0F62C5B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 01:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01D3185B0C;
	Mon,  8 Jul 2019 23:12:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-cBV0ksCWPu; Mon,  8 Jul 2019 23:12:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57C6B85B5B;
	Mon,  8 Jul 2019 23:12:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8814B1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 84DAF85A72
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xrWChFRhrKdA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77AD685A57
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:12:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="192484832"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2019 16:12:41 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  8 Jul 2019 16:12:36 -0700
Message-Id: <20190708231236.20516-20-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.22.0.214.g8dca754b1e87
In-Reply-To: <20190708231236.20516-1-jacob.e.keller@intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 19/19] fm10k: fix fm10k_get_fault_pf to
 read correct address
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

Fix assignment of the FM10K_FAULT_ADDR_LO register into fault->address
by using a bit-wise |= operation. Without this, the low address is
completely overwriting the high potion of the address. This caused the
fault to incorrectly return only the lower 32 bits of the fault address.

This issue was detected by cppcheck and resolves the following warnings
produced by that tool:

[fm10k_pf.c:1668] -> [fm10k_pf.c:1670]: (style) Variable
'fault->address' is reassigned a value before the old one has been used.

[fm10k_pf.c:1669] -> [fm10k_pf.c:1670]: (style) Variable
'fault->address' is reassigned a value before the old one has been used.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index 095c5b0e4096..be07bfdb0bb4 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1565,7 +1565,7 @@ static s32 fm10k_get_fault_pf(struct fm10k_hw *hw, int type,
 	/* read remaining fields */
 	fault->address = fm10k_read_reg(hw, type + FM10K_FAULT_ADDR_HI);
 	fault->address <<= 32;
-	fault->address = fm10k_read_reg(hw, type + FM10K_FAULT_ADDR_LO);
+	fault->address |= fm10k_read_reg(hw, type + FM10K_FAULT_ADDR_LO);
 	fault->specinfo = fm10k_read_reg(hw, type + FM10K_FAULT_SPECINFO);
 
 	/* clear valid bit to allow for next error */
-- 
2.22.0.214.g8dca754b1e87

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
