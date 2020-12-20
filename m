Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC622DF5A8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Dec 2020 15:29:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C647786CED;
	Sun, 20 Dec 2020 14:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxEnT9Hvk4dU; Sun, 20 Dec 2020 14:29:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22D9186D0B;
	Sun, 20 Dec 2020 14:29:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48B091BF2F3
 for <intel-wired-lan@osuosl.org>; Sun, 20 Dec 2020 14:29:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 43E4E854D7
 for <intel-wired-lan@osuosl.org>; Sun, 20 Dec 2020 14:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7BojT6Erd5S for <intel-wired-lan@osuosl.org>;
 Sun, 20 Dec 2020 14:29:20 +0000 (UTC)
X-Greylist: delayed 00:10:58 by SQLgrey-1.7.6
Received: from mail.kevlo.org (ns.kevlo.org [220.134.220.36])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 02A9285475
 for <intel-wired-lan@osuosl.org>; Sun, 20 Dec 2020 14:29:19 +0000 (UTC)
Received: from localhost (ns.kevlo.org [local])
 by ns.kevlo.org (OpenSMTPD) with ESMTPA id 0728cfce
 for <intel-wired-lan@osuosl.org>;
 Sun, 20 Dec 2020 22:18:19 +0800 (CST)
Date: Sun, 20 Dec 2020 22:18:19 +0800
From: Kevin Lo <kevlo@kevlo.org>
To: intel-wired-lan@osuosl.org
Message-ID: <20201220141819.GA85707@ns.kevlo.org>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH v2] igc: set the default return value to
 -IGC_ERR_NVM in igc_write_nvm_srwr
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

This patch sets the default return value to -IGC_ERR_NVM in igc_write_nvm_srwr.
Without this change it wouldn't lead to a shadow RAM write EEWR timeout.

Fixes: ab4056126813 ("igc: Add NVM support")
Signed-off-by: Kevin Lo <kevlo@kevlo.org>
---
v2: Add a Fixes tag.
---
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index 8b67d9b49a83..b0a5cd31683e 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -221,7 +221,7 @@ static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
 	struct igc_nvm_info *nvm = &hw->nvm;
 	u32 attempts = 100000;
 	u32 i, k, eewr = 0;
-	s32 ret_val = 0;
+	s32 ret_val = -IGC_ERR_NVM;
 
 	/* A check for invalid values:  offset too large, too many words,
 	 * too many words for the offset, and not enough words.
@@ -229,7 +229,6 @@ static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
 	if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
 	    words == 0) {
 		hw_dbg("nvm parameter(s) out of bounds\n");
-		ret_val = -IGC_ERR_NVM;
 		goto out;
 	}
 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
