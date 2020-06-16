Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 363D31FAD6F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 12:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3D7A87708;
	Tue, 16 Jun 2020 10:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqQnsZlkNIVe; Tue, 16 Jun 2020 10:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 868F887722;
	Tue, 16 Jun 2020 10:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFA741BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B95BF23491
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XsXQ3QB0EiWb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 10:05:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 23C6B21519
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:05:53 +0000 (UTC)
Received: from [114.249.250.117] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1jl8TR-0004iJ-5x; Tue, 16 Jun 2020 10:05:46 +0000
From: Aaron Ma <aaron.ma@canonical.com>
To: jeffrey.t.kirsher@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, vitaly.lifshits@intel.com,
 kai.heng.feng@canonical.com, sasha.neftin@intel.com
Date: Tue, 16 Jun 2020 18:05:12 +0800
Message-Id: <20200616100512.22512-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] e1000e: continue to init phy even when
 failed to disable ULP
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

After commit "e1000e: disable s0ix entry and exit flows for ME systems",
some ThinkPads always failed to disable ulp by ME.
commit "e1000e: Warn if disabling ULP failed" break out of init phy:

error log:
[   42.364753] e1000e 0000:00:1f.6 enp0s31f6: Failed to disable ULP
[   42.524626] e1000e 0000:00:1f.6 enp0s31f6: PHY Wakeup cause - Unicast Packet
[   42.822476] e1000e 0000:00:1f.6 enp0s31f6: Hardware Error

When disable s0ix, E1000_FWSM_ULP_CFG_DONE will never be 1.
If continue to init phy like before, it can work as before.
iperf test result good too.

Chnage e_warn to e_dbg, in case it confuses.

Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index f999cca37a8a..63405819eb83 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -302,8 +302,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_unknown;
 	ret_val = e1000_disable_ulp_lpt_lp(hw, true);
 	if (ret_val) {
-		e_warn("Failed to disable ULP\n");
-		goto out;
+		e_dbg("Failed to disable ULP\n");
 	}
 
 	ret_val = hw->phy.ops.acquire(hw);
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
