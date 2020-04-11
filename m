Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E131A5605
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Apr 2020 01:13:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E958F875AD;
	Sat, 11 Apr 2020 23:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ij5UgGJ33TfD; Sat, 11 Apr 2020 23:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60AF687699;
	Sat, 11 Apr 2020 23:13:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B6A11BF398
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 23:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7567D8475A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 23:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XGG4+9ESW67E for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2020 23:13:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C52DD8464A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 23:13:48 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD93320CC7;
 Sat, 11 Apr 2020 23:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646828;
 bh=rgMGTIrxSDGzhWSZQzY/BSeDC6f4N3EiouqMAdhVZCA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Gv3As8Sar7ldtw8nSxfeOaYEQTyGqKQjmssDlcr0zDMsnljepaBspJeR9yaeM0W6z
 MkygsUAo/2bd4yRtCoAWKpndnYAAc/EIv9/CFZCqQWSKTmHayse5AvlBNuxNRinO9b
 Acce1ovVgYCnTAAJcqodsZAInRtqMf8/N06cldFQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 11 Apr 2020 19:13:07 -0400
Message-Id: <20200411231327.26550-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411231327.26550-1-sashal@kernel.org>
References: <20200411231327.26550-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.14 18/37] net: intel: e1000e:
 fix possible sleep-in-atomic-context bugs in e1000e_get_hw_semaphore()
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jia-Ju Bai <baijiaju1990@gmail.com>

[ Upstream commit 2e05f756c7099c8991142382648a37b0d4c85943 ]

The driver may sleep while holding a spinlock.
The function call path (from bottom to top) in Linux 4.19 is:

drivers/net/ethernet/intel/e1000e/mac.c, 1366:
	usleep_range in e1000e_get_hw_semaphore
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 322:
	e1000e_get_hw_semaphore in e1000_release_swfw_sync_80003es2lan
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 197:
	e1000_release_swfw_sync_80003es2lan in e1000_release_phy_80003es2lan
drivers/net/ethernet/intel/e1000e/netdev.c, 4883:
	(FUNC_PTR) e1000_release_phy_80003es2lan in e1000e_update_phy_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 4917:
	e1000e_update_phy_stats in e1000e_update_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 5945:
	e1000e_update_stats in e1000e_get_stats64
drivers/net/ethernet/intel/e1000e/netdev.c, 5944:
	spin_lock in e1000e_get_stats64

drivers/net/ethernet/intel/e1000e/mac.c, 1384:
	usleep_range in e1000e_get_hw_semaphore
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 322:
	e1000e_get_hw_semaphore in e1000_release_swfw_sync_80003es2lan
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 197:
	e1000_release_swfw_sync_80003es2lan in e1000_release_phy_80003es2lan
drivers/net/ethernet/intel/e1000e/netdev.c, 4883:
	(FUNC_PTR) e1000_release_phy_80003es2lan in e1000e_update_phy_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 4917:
	e1000e_update_phy_stats in e1000e_update_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 5945:
	e1000e_update_stats in e1000e_get_stats64
drivers/net/ethernet/intel/e1000e/netdev.c, 5944:
	spin_lock in e1000e_get_stats64

(FUNC_PTR) means a function pointer is called.

To fix these bugs, usleep_range() is replaced with udelay().

These bugs are found by a static analysis tool STCheck written by myself.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/e1000e/mac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index 48cc945fc8b0f..4f79a778e1758 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -1381,7 +1381,7 @@ s32 e1000e_get_hw_semaphore(struct e1000_hw *hw)
 		if (!(swsm & E1000_SWSM_SMBI))
 			break;
 
-		usleep_range(50, 100);
+		udelay(100);
 		i++;
 	}
 
@@ -1399,7 +1399,7 @@ s32 e1000e_get_hw_semaphore(struct e1000_hw *hw)
 		if (er32(SWSM) & E1000_SWSM_SWESMBI)
 			break;
 
-		usleep_range(50, 100);
+		udelay(100);
 	}
 
 	if (i == timeout) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
