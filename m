Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC921FEBC1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 08:55:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C9708817B;
	Thu, 18 Jun 2020 06:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8BNy8uT93S4M; Thu, 18 Jun 2020 06:55:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0C6A8851E;
	Thu, 18 Jun 2020 06:55:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0611D1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 06:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 002EE87DC6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 06:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w2Fq1pqy31jB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 06:55:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CAFBD87DB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 06:55:06 +0000 (UTC)
Received: from [114.249.250.117] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1jloRy-00069K-97; Thu, 18 Jun 2020 06:55:03 +0000
From: Aaron Ma <aaron.ma@canonical.com>
To: kuba@kernel.org, jeffrey.t.kirsher@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, vitaly.lifshits@intel.com,
 kai.heng.feng@canonical.com, sasha.neftin@intel.com
Date: Thu, 18 Jun 2020 14:54:53 +0800
Message-Id: <20200618065453.12140-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616100512.22512-1-aaron.ma@canonical.com>
References: <20200616100512.22512-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [v4][PATCH] e1000e: continue to init phy even
 when failed to disable ULP
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

After 'commit e086ba2fccda4 ("e1000e: disable s0ix entry and exit flows
 for ME systems")',
ThinkPad P14s always failed to disable ULP by ME.
'commit 0c80cdbf3320 ("e1000e: Warn if disabling ULP failed")'
break out of init phy:

error log:
[   42.364753] e1000e 0000:00:1f.6 enp0s31f6: Failed to disable ULP
[   42.524626] e1000e 0000:00:1f.6 enp0s31f6: PHY Wakeup cause - Unicast Packet
[   42.822476] e1000e 0000:00:1f.6 enp0s31f6: Hardware Error

When disable s0ix, E1000_FWSM_ULP_CFG_DONE will never be 1.
If continue to init phy like before, it can work as before.
iperf test result good too.

Fixes: 0c80cdbf3320 ("e1000e: Warn if disabling ULP failed")
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index f999cca37a8a..be7475c5529d 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -303,7 +303,6 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	ret_val = e1000_disable_ulp_lpt_lp(hw, true);
 	if (ret_val) {
 		e_warn("Failed to disable ULP\n");
-		goto out;
 	}
 
 	ret_val = hw->phy.ops.acquire(hw);
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
