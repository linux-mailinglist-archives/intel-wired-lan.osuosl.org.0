Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B01241C827B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 May 2020 08:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C81188058;
	Thu,  7 May 2020 06:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3hzXUthBaN7m; Thu,  7 May 2020 06:27:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DCDF87FEC;
	Thu,  7 May 2020 06:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E80001BF41D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 06:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB1B720780
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 06:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRv4rhD0k1Xi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 06:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id A134B2076E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 06:27:20 +0000 (UTC)
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>)
 id 1jWZyi-0000tF-64; Thu, 07 May 2020 06:25:52 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jeffrey.t.kirsher@intel.com
Date: Thu,  7 May 2020 14:25:45 +0800
Message-Id: <20200507062545.15461-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] e1000e: Warn if disabling ULP failed
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The hardware may stop working if driver failed to disable ULP mode.

Take the return value of e1000_disable_ulp_lpt_lp() into account, and
pass up the error if it fails.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 15f6c0a4dc63..9cbd2d6c7da4 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -300,7 +300,11 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	 * so forcibly disable it.
 	 */
 	hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_unknown;
-	e1000_disable_ulp_lpt_lp(hw, true);
+	ret_val = e1000_disable_ulp_lpt_lp(hw, true);
+	if (ret_val) {
+		e_warn("Failed to disable ULP\n");
+		goto out;
+	}
 
 	ret_val = hw->phy.ops.acquire(hw);
 	if (ret_val) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
