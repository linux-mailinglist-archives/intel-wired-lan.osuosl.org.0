Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD3E90193E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 03:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F6D84068C;
	Mon, 10 Jun 2024 01:33:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id isvIkPDq3-NJ; Mon, 10 Jun 2024 01:33:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF2D64069B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717983181;
	bh=CM8RVCv8qEgwNBN7E7+ByiwzUl3Fkcuqyzp/ex5KlGY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SPfoGMuZNpqWvTVglNLpFuI8Oh/JPuuJFz5xnSFT3xpUcWxZhOeADlGm7FPN7rGQD
	 yd1UVG12Xuzelj3wxQsSmtp9QcBEFl0urTNFMgExNx9EDYG5HHMTMZA0ggvdpDpKlz
	 MsM2Zh8lGoCUyhWAuBBy8OjLhfhses2gmadn0iZrLGahjbqyGwm4Qpdr8gnq0KAcjq
	 S1T44eOc+r+d+/nADwbEtEAW9MPwL30TxVQkSJJgNymZSLOAnm8KiV8jhLmC6Izsuk
	 Vu1y9FmJ+pjtz2I9Txmdt7Gk3pX/H5V+swhjDIGQRTnlRb3YIfsDXJ+cNUfmDccpFn
	 kaPR6xWYY84LA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF2D64069B;
	Mon, 10 Jun 2024 01:33:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FED71BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 01:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 399D46075E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 01:32:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A2trE-nKZ21L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 01:32:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.121;
 helo=smtp-relay-canonical-1.canonical.com;
 envelope-from=hui.wang@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EDE4A60685
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDE4A60685
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDE4A60685
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 01:32:57 +0000 (UTC)
Received: from hwang4-ThinkPad-T14s-Gen-2a.conference (unknown
 [123.112.65.116])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id B9DB03F94E; 
 Mon, 10 Jun 2024 01:32:43 +0000 (UTC)
From: Hui Wang <hui.wang@canonical.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, vitaly.lifshits@intel.com,
 dima.ruinskiy@intel.com, davem@davemloft.net, pabeni@redhat.com,
 edumazet@google.com, sasha.neftin@intel.com, naamax.meir@linux.intel.com
Date: Mon, 10 Jun 2024 09:32:22 +0800
Message-Id: <20240610013222.12082-1-hui.wang@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1717983171;
 bh=CM8RVCv8qEgwNBN7E7+ByiwzUl3Fkcuqyzp/ex5KlGY=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=K9imTUcEQyLR6VwAPQyStvUgWV++MyIRTCJubFOFpNkAE+iBRACTgeqYd//3cGs0q
 wqYB33NZrKpZWfPN93dA1AJszX9InpQbCso+1aNwLQP7bayU1F3PlzIpXrwUhTDbdm
 2ZG1dBMwbBqDfGC8nrgz0aTDBCC9owvZY+gdwFI64Bxft028ubGqmbVQI6w51u83/I
 DQBqbTkWDUawgqomMmrcVT9Ezzk6GIJGlA9RQNuIVSQUMbVctFRV90L/PwDJK5cJCR
 qOUFkpMvPkzdtsnrHbjrfj6DlW5SMGshRf0FlxiMHKFxo2Yx3SlttsP0XxX6+vOjyV
 HceAp0ZabW5qQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=K9imTUcE
Subject: [Intel-wired-lan] [iwl-net][PATCH] Revert "e1000e: move force SMBUS
 near the end of enable_ulp function"
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
Cc: pmenzel@molgen.mpg.de, hui.wang@canonical.com, horms@kernel.org,
 jacob.e.keller@intel.com, todd.e.brandt@intel.com, rui.zhang@intel.com,
 dmummenschanz@web.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reverts commit bfd546a552e140b0a4c8a21527c39d6d21addb28

Commit bfd546a552e1 ("e1000e: move force SMBUS near the end of
enable_ulp function") introduces system suspend failure on some
ethernet cards, at the moment, the pciid of the affected ethernet
cards include [8086:15b8] and [8086:15bc].

About the regression the commit bfd546a552e1 ("e1000e: move force
SMBUS near the end of enable_ulp function") tried to fix, looks like
it is not trivial to fix, we need to find a better way to resolve it.

Reported-by: Todd Brandt <todd.e.brandt@intel.com>
Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218940
Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218936
Signed-off-by: Hui Wang <hui.wang@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 22 ---------------------
 drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++++++++++++
 2 files changed, 18 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2e98a2a0bead..f9e94be36e97 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1225,28 +1225,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	}
 
 release:
-	/* Switching PHY interface always returns MDI error
-	 * so disable retry mechanism to avoid wasting time
-	 */
-	e1000e_disable_phy_retry(hw);
-
-	/* Force SMBus mode in PHY */
-	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
-	if (ret_val) {
-		e1000e_enable_phy_retry(hw);
-		hw->phy.ops.release(hw);
-		goto out;
-	}
-	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
-	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
-
-	e1000e_enable_phy_retry(hw);
-
-	/* Force SMBus mode in MAC */
-	mac_reg = er32(CTRL_EXT);
-	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
-	ew32(CTRL_EXT, mac_reg);
-
 	hw->phy.ops.release(hw);
 out:
 	if (ret_val)
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index da5c59daf8ba..220d62fca55d 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6623,6 +6623,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 ctrl, ctrl_ext, rctl, status, wufc;
 	int retval = 0;
+	u16 smb_ctrl;
 
 	/* Runtime suspend should only enable wakeup for link changes */
 	if (runtime)
@@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 			if (retval)
 				return retval;
 		}
+
+		/* Force SMBUS to allow WOL */
+		/* Switching PHY interface always returns MDI error
+		 * so disable retry mechanism to avoid wasting time
+		 */
+		e1000e_disable_phy_retry(hw);
+
+		e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
+		smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
+		e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
+
+		e1000e_enable_phy_retry(hw);
+
+		/* Force SMBus mode in MAC */
+		ctrl_ext = er32(CTRL_EXT);
+		ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
+		ew32(CTRL_EXT, ctrl_ext);
 	}
 
 	/* Ensure that the appropriate bits are set in LPI_CTRL
-- 
2.34.1

