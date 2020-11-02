Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 231D82A36FA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 00:13:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDEA186B80;
	Mon,  2 Nov 2020 23:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdshw5fxrh1K; Mon,  2 Nov 2020 23:13:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA2BC86BA2;
	Mon,  2 Nov 2020 23:13:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB1551BF343
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 23:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7F86864AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 23:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aNOrMDewbqFU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Nov 2020 23:13:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2D5088648E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 23:13:25 +0000 (UTC)
Received: from localhost.localdomain (ip5f5af1d0.dynamic.kabel-deutschland.de
 [95.90.241.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 571FE2064712B;
 Tue,  3 Nov 2020 00:13:23 +0100 (CET)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue,  3 Nov 2020 00:13:07 +0100
Message-Id: <20201102231307.13021-3-pmenzel@molgen.mpg.de>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] ethernet: igb: e1000_phy: Check for
 ops.force_speed_duplex existence
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, John W Linville <linville@tuxdriver.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeffrey Townsend <jeffrey.townsend@bigswitch.com>

The ops field might no be defined, so add a check.

The patch is taken from Open Network Linux (ONL), and it was added there
as part of the patch

    packages/base/any/kernels/3.16+deb8/patches/driver-support-intel-igb-bcm5461X-phy.patch

in ONL commit f32316c63c (Support the BCM54616 and BCM5461S.) [1]. Part
of this commit was already upstreamed in Linux commit eeb0149660 (igb:
support BCM54616 PHY) in 2017.

I applied the forward-ported

    packages/base/any/kernels/5.4-lts/patches/0002-driver-support-intel-igb-bcm5461S-phy.patch

added in ONL commit 5ace6bcdb3 (Add 5.4 LTS kernel build.) [2].

[1]: https://github.com/opencomputeproject/OpenNetworkLinux/commit/f32316c63ce3a64de125b7429115c6d45e942bd1
[2]: https://github.com/opencomputeproject/OpenNetworkLinux/commit/5ace6bcdb37cb8065dcd1d4404b3dcb6424f6331

Cc: Jeffrey Townsend <jeffrey.townsend@bigswitch.com>
Cc: John W Linville <linville@tuxdriver.com>
Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/igb/e1000_phy.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
index 4e0b4ba09a00..4151e55a6d2a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_phy.c
+++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
@@ -1107,11 +1107,13 @@ s32 igb_setup_copper_link(struct e1000_hw *hw)
 		/* PHY will be set to 10H, 10F, 100H or 100F
 		 * depending on user settings.
 		 */
-		hw_dbg("Forcing Speed and Duplex\n");
-		ret_val = hw->phy.ops.force_speed_duplex(hw);
-		if (ret_val) {
-			hw_dbg("Error Forcing Speed and Duplex\n");
-			goto out;
+		if (hw->phy.ops.force_speed_duplex) {
+			hw_dbg("Forcing Speed and Duplex\n");
+			ret_val = hw->phy.ops.force_speed_duplex(hw);
+			if (ret_val) {
+				hw_dbg("Error Forcing Speed and Duplex\n");
+				goto out;
+			}
 		}
 	}
 
-- 
2.29.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
