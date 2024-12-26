Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB869FCBF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Dec 2024 17:52:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACB2480B76;
	Thu, 26 Dec 2024 16:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lNoVHuPT-TLM; Thu, 26 Dec 2024 16:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1017D80ACD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735231965;
	bh=pdsFoyjvN7jwIB/z6Mz4XwBi+s2/8ncP7Z2rx9wjM1I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Lc5Rjahv8DlmtRhNpyWii++H6vkIFYpOG8DKZrGyADRL0zBmsBYCi1eNz1jdQQY2u
	 GHagA05efN8WMBvNcstEibwrXtEMl8eU24Udaq6iexqVTXFfHkhpqmergTDq4/bI9k
	 O1TJMy9UFTRHldbgGjCKTCUo2KHvq7tfRAPeCWDr3mRCfFTat5yVakHdC4cIHiWATS
	 Ebt+2zvdno0EiokeWBtkRPt6DL5TbTFJ0YBqPNPfDoMf/IILOp5SLmcG2va92pYpJP
	 vwKdnXjzXAW1DhlTZcU1yEJTvWuM7+wru6pxloT8TaMzxigv2mLtPa4R53mXCxdmE1
	 4j0jPAe9F1i0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1017D80ACD;
	Thu, 26 Dec 2024 16:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 98063F15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 16:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7925880ACD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 16:52:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8mxLiRvMtv6N for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Dec 2024 16:52:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B458980A59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B458980A59
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B458980A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 16:52:41 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tQr5s-007IaP-37;
 Thu, 26 Dec 2024 16:52:17 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu, 26 Dec 2024 16:52:13 +0000
Message-ID: <20241226165215.105092-2-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241226165215.105092-1-linux@treblig.org>
References: <20241226165215.105092-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=pdsFoyjvN7jwIB/z6Mz4XwBi+s2/8ncP7Z2rx9wjM1I=; b=SzKyHP6r9yFoZfQj
 GObburqqgBg5LtQqlBjJefLXBMgrh3rtBd0IWjZUFyljWso6JxyCPa897IOZoIexayjLo7arfhKyF
 zozh/jPxxNnES6GvMrJfR5WbHz8W8e8KfSaUNnYBtaJGcUtOzYdtgWvTPUyxcQlQP+ky1xkDX2UIe
 R6Qy9LTwvjf96k8k1ldkBs8ZlPd8DEZo4a7pynVUA0iNmVPGRfDN74yEo0dtyPuqG0s2V5g2OsV54
 b5dst4qS/St0WdU9GjJq/PrcBrrJkla+lgVZnRCAV817Q7W77/ZJl8kEKdo4czM5VpmieQXMxT4vQ
 nY4MdThk8Bhc1urWtA==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=SzKyHP6r
Subject: [Intel-wired-lan] [RFC net-next 1/3] igc: Remove unused
 igc_acquire/release_nvm
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Dr. David Alan Gilbert" <linux@treblig.org>

igc_acquire_nvm() and igc_release_nvm() were added in 2018 as part of
commit ab4056126813 ("igc: Add NVM support")

but never used.

Remove them.

The igc_1225.c has it's own specific implementations.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/igc/igc_nvm.c | 50 ------------------------
 drivers/net/ethernet/intel/igc/igc_nvm.h |  2 -
 2 files changed, 52 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.c b/drivers/net/ethernet/intel/igc/igc_nvm.c
index 58f81aba0144..efd121c03967 100644
--- a/drivers/net/ethernet/intel/igc/igc_nvm.c
+++ b/drivers/net/ethernet/intel/igc/igc_nvm.c
@@ -35,56 +35,6 @@ static s32 igc_poll_eerd_eewr_done(struct igc_hw *hw, int ee_reg)
 	return ret_val;
 }
 
-/**
- * igc_acquire_nvm - Generic request for access to EEPROM
- * @hw: pointer to the HW structure
- *
- * Set the EEPROM access request bit and wait for EEPROM access grant bit.
- * Return successful if access grant bit set, else clear the request for
- * EEPROM access and return -IGC_ERR_NVM (-1).
- */
-s32 igc_acquire_nvm(struct igc_hw *hw)
-{
-	s32 timeout = IGC_NVM_GRANT_ATTEMPTS;
-	u32 eecd = rd32(IGC_EECD);
-	s32 ret_val = 0;
-
-	wr32(IGC_EECD, eecd | IGC_EECD_REQ);
-	eecd = rd32(IGC_EECD);
-
-	while (timeout) {
-		if (eecd & IGC_EECD_GNT)
-			break;
-		udelay(5);
-		eecd = rd32(IGC_EECD);
-		timeout--;
-	}
-
-	if (!timeout) {
-		eecd &= ~IGC_EECD_REQ;
-		wr32(IGC_EECD, eecd);
-		hw_dbg("Could not acquire NVM grant\n");
-		ret_val = -IGC_ERR_NVM;
-	}
-
-	return ret_val;
-}
-
-/**
- * igc_release_nvm - Release exclusive access to EEPROM
- * @hw: pointer to the HW structure
- *
- * Stop any current commands to the EEPROM and clear the EEPROM request bit.
- */
-void igc_release_nvm(struct igc_hw *hw)
-{
-	u32 eecd;
-
-	eecd = rd32(IGC_EECD);
-	eecd &= ~IGC_EECD_REQ;
-	wr32(IGC_EECD, eecd);
-}
-
 /**
  * igc_read_nvm_eerd - Reads EEPROM using EERD register
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.h b/drivers/net/ethernet/intel/igc/igc_nvm.h
index f9fc2e9cfb03..ab78d0c64547 100644
--- a/drivers/net/ethernet/intel/igc/igc_nvm.h
+++ b/drivers/net/ethernet/intel/igc/igc_nvm.h
@@ -4,8 +4,6 @@
 #ifndef _IGC_NVM_H_
 #define _IGC_NVM_H_
 
-s32 igc_acquire_nvm(struct igc_hw *hw);
-void igc_release_nvm(struct igc_hw *hw);
 s32 igc_read_mac_addr(struct igc_hw *hw);
 s32 igc_read_nvm_eerd(struct igc_hw *hw, u16 offset, u16 words, u16 *data);
 s32 igc_validate_nvm_checksum(struct igc_hw *hw);
-- 
2.47.1

