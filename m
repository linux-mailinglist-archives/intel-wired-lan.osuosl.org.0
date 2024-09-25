Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD50985AB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 14:12:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13C4540265;
	Wed, 25 Sep 2024 12:12:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yGdJ0IAWBY0t; Wed, 25 Sep 2024 12:12:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAA634028F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727266344;
	bh=3Y1HpFhW8LqE2v7iVHtCj5Q4AbrtbdlcQ/dqvGLkcoc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mcqES3/RO5TQGdl8rojOd2y/lAmUI67yLYMm+B7IPURHs+80DFSXc0Fa+Tg/LoObJ
	 BicWwd5iexr6UYmF0+ko7Lu47ZwA0V41ryjVUfuBZx8f7kUtTQRQfSTGGzeDljt/w4
	 +Y0TgitDOA6eSsTZRPRQO33lDhHCcb5CvuFCqOUED1RaPScgeNRlGi6bIr1KctrBel
	 gdhxX5WsdSnMOKhyqj2CcjoilybdQX49kAdnNoPD2xYRSGwo9OZmOlR6MY7zNGitAd
	 jGds2bhXD1DjKqgVkTULW9+XTvH/xDO5dcmjMOMhjuGLlwsR6oSHt7GU5rFn34L2fi
	 /H6dxN6iJKIpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAA634028F;
	Wed, 25 Sep 2024 12:12:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9991BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 12:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6893E6071F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 12:12:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id efbNqwaTMsEI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 12:12:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DB686068A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DB686068A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DB686068A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 12:12:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7C8885C5D2B;
 Wed, 25 Sep 2024 12:12:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 696F9C4CECD;
 Wed, 25 Sep 2024 12:12:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 25 Sep 2024 08:07:18 -0400
Message-ID: <20240925121137.1307574-18-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240925121137.1307574-1-sashal@kernel.org>
References: <20240925121137.1307574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.52
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727266340;
 bh=efPEQVsn/u4JRC2jcGC/mNjRx6++mnw/8wnsLTZVvC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=khv2x5hiX9rE+HNOfm6dowCh22nrIrpH4M58UzmkgEVFXItLFN/caxGCBZmaCjvRN
 xJEDIRLLQngn17Vzi0ab0a1O06jBhzvkuGVsagrZtkQnDT/39oDzH92cqBBADO90zX
 u/z0tvrIXhZmikT403VsjK1tlNZ4LgA9Wa6fWr+0A1XzKGtUput7e1Sm2Pz+NGfN3j
 CqKhyCXC06RaRcz0Q3vlWyo5Wm8PZVOypbXQk9B1hZRp8EXZAYE4FKQQiY0pY5Rdai
 0+9f1+4Iwpl+QXZGCXoh0xzltE/HvjF5S/vjKaIZUzi9b1NAajYRrpqU1qMxcf/Xd5
 fS0cJJlt5pqGQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=khv2x5hi
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.6 018/139] e1000e: avoid failing
 the system during pm_suspend
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
Cc: Sasha Levin <sashal@kernel.org>, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, Mor Bar-Gabay <morx.bar.gabay@intel.com>,
 edumazet@google.com, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, kuba@kernel.org,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vitaly Lifshits <vitaly.lifshits@intel.com>

[ Upstream commit 0a6ad4d9e1690c7faa3a53f762c877e477093657 ]

Occasionally when the system goes into pm_suspend, the suspend might fail
due to a PHY access error on the network adapter. Previously, this would
have caused the whole system to fail to go to a low power state.
An example of this was reported in the following Bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=205015

[ 1663.694828] e1000e 0000:00:19.0 eth0: Failed to disable ULP
[ 1664.731040] asix 2-3:1.0 eth1: link up, 100Mbps, full-duplex, lpa 0xC1E1
[ 1665.093513] e1000e 0000:00:19.0 eth0: Hardware Error
[ 1665.596760] e1000e 0000:00:19.0: pci_pm_resume+0x0/0x80 returned 0 after 2975399 usecs

and then the system never recovers from it, and all the following suspend failed due to this
[22909.393854] PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x760 [e1000e] returns -2
[22909.393858] PM: dpm_run_callback(): pci_pm_suspend+0x0/0x160 returns -2
[22909.393861] PM: Device 0000:00:1f.6 failed to suspend async: error -2

This can be avoided by changing the return values of __e1000_shutdown and
e1000e_pm_suspend functions so that they always return 0 (success). This
is consistent with what other drivers do.

If the e1000e driver encounters a hardware error during suspend, potential
side effects include slightly higher power draw or non-working wake on
LAN. This is preferred to a system-level suspend failure, and a warning
message is written to the system log, so that the user can be aware that
the LAN controller experienced a problem during suspend.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=205015
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 334f652c60601..d377a286c0e1b 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6672,8 +6672,10 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 		if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
 			/* enable wakeup by the PHY */
 			retval = e1000_init_phy_wakeup(adapter, wufc);
-			if (retval)
-				return retval;
+			if (retval) {
+				e_err("Failed to enable wakeup\n");
+				goto skip_phy_configurations;
+			}
 		} else {
 			/* enable wakeup by the MAC */
 			ew32(WUFC, wufc);
@@ -6694,8 +6696,10 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 			 * or broadcast.
 			 */
 			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
-			if (retval)
-				return retval;
+			if (retval) {
+				e_err("Failed to enable ULP\n");
+				goto skip_phy_configurations;
+			}
 		}
 
 		/* Force SMBUS to allow WOL */
@@ -6744,6 +6748,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 		hw->phy.ops.release(hw);
 	}
 
+skip_phy_configurations:
 	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
 	 * would have already happened in close and is redundant.
 	 */
@@ -6986,15 +6991,13 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 	e1000e_pm_freeze(dev);
 
 	rc = __e1000_shutdown(pdev, false);
-	if (rc) {
-		e1000e_pm_thaw(dev);
-	} else {
+	if (!rc) {
 		/* Introduce S0ix implementation */
 		if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
 			e1000e_s0ix_entry_flow(adapter);
 	}
 
-	return rc;
+	return 0;
 }
 
 static __maybe_unused int e1000e_pm_resume(struct device *dev)
-- 
2.43.0

