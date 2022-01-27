Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9612049E57B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jan 2022 16:10:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 238D841C99;
	Thu, 27 Jan 2022 15:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xcbzwhXZVHZI; Thu, 27 Jan 2022 15:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 271F741C6E;
	Thu, 27 Jan 2022 15:10:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED401BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CC3540240
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMRZvWppwDNp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jan 2022 15:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1678D4020C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:08:16 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id BF9551F385;
 Thu, 27 Jan 2022 15:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1643296092; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=mvJIovCCwTZuCdni1wLB/3C4S6Z52Y9C071Ax9CQEfg=;
 b=jf60WUdW/fXlDfwzsRfgCO9f8Z7uxstryb7hrnmwPBJESHztvEBUfH3ttI/REYnXs6r6lJ
 ppd8EFmq62b+6nQ3w/D4aQdbHdZbwAEiUOZlY0vn/dhAWq4/wWZpMQNGCd22SnHGpOHzlM
 DhNnbT/DHbxBkYRTUtgT1brae4V1LSE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1643296092;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=mvJIovCCwTZuCdni1wLB/3C4S6Z52Y9C071Ax9CQEfg=;
 b=eepX5l7g6pGuILBefofCCu4h8dJCebYHI6A1uyrUMuvTqvgsOIzd/ui2m/+bKqv2UWm4lT
 xTveboO07szXyMAg==
Received: from adalid.arch.suse.de (adalid.arch.suse.de [10.161.8.13])
 by relay2.suse.de (Postfix) with ESMTP id 62F49A3B83;
 Thu, 27 Jan 2022 15:08:12 +0000 (UTC)
From: Thomas Bogendoerfer <tbogendoerfer@suse.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 27 Jan 2022 16:08:07 +0100
Message-Id: <20220127150807.26448-1-tbogendoerfer@suse.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 27 Jan 2022 15:10:13 +0000
Subject: [Intel-wired-lan] [PATCH net] net: e1000e: Recover at least
 in-memory copy of NVM checksum
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

Commit 4051f68318ca ("e1000e: Do not take care about recovery NVM
checksum") causes a regression for systems with a broken NVM checksum
and hardware which is not able to update the NVM. Before the change the
in-memory copy was correct even the NVM update doesn't work, which is
good enough for the driver to work again.

See

https://bugzilla.opensuse.org/show_bug.cgi?id=1191663

for more details.

This patch reverts the change and moves the check for hardware without
NVM update capability right before the real flash update.

Fixes: 4051f68318ca ("e1000e: Do not take care about recovery NVM checksum")
Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 5e4fc9b4e2ad..613a60f24ba6 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -3808,6 +3808,9 @@ static s32 e1000_update_nvm_checksum_spt(struct e1000_hw *hw)
 	if (nvm->type != e1000_nvm_flash_sw)
 		goto out;
 
+	if (hw->mac.type >= e1000_pch_cnp)
+		goto out;
+
 	nvm->ops.acquire(hw);
 
 	/* We're writing to the opposite bank so if we're on bank 1,
@@ -4136,17 +4139,13 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 		return ret_val;
 
 	if (!(data & valid_csum_mask)) {
-		e_dbg("NVM Checksum Invalid\n");
-
-		if (hw->mac.type < e1000_pch_cnp) {
-			data |= valid_csum_mask;
-			ret_val = e1000_write_nvm(hw, word, 1, &data);
-			if (ret_val)
-				return ret_val;
-			ret_val = e1000e_update_nvm_checksum(hw);
-			if (ret_val)
-				return ret_val;
-		}
+		data |= valid_csum_mask;
+		ret_val = e1000_write_nvm(hw, word, 1, &data);
+		if (ret_val)
+			return ret_val;
+		ret_val = e1000e_update_nvm_checksum(hw);
+		if (ret_val)
+			return ret_val;
 	}
 
 	return e1000e_validate_nvm_checksum_generic(hw);
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
