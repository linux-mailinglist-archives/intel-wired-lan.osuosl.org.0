Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D7127A9AC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 10:37:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AFEBC20410;
	Mon, 28 Sep 2020 08:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vVVmqW4F-TKB; Mon, 28 Sep 2020 08:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0A78120431;
	Mon, 28 Sep 2020 08:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91A3E1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 08:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88017861A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 08:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z+cOQB4595IL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 08:37:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 750EF86180
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 08:37:16 +0000 (UTC)
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>)
 id 1kMoei-0006rf-AQ; Mon, 28 Sep 2020 08:37:08 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jeffrey.t.kirsher@intel.com
Date: Mon, 28 Sep 2020 16:36:58 +0800
Message-Id: <20200928083658.8567-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924164542.19906-1-kai.heng.feng@canonical.com>
References: <20200924164542.19906-1-kai.heng.feng@canonical.com>
Subject: [Intel-wired-lan] [PATCH v4] e1000e: Increase polling timeout on
 MDIC ready bit
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
Cc: andrew@lunn.ch, "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We are seeing the following error after S3 resume:
[  704.746874] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
[  704.844232] e1000e 0000:00:1f.6 eno1: MDI Write did not complete
[  704.902817] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
[  704.903075] e1000e 0000:00:1f.6 eno1: reading PHY page 769 (or 0x6020 shifted) reg 0x17
[  704.903281] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
[  704.903486] e1000e 0000:00:1f.6 eno1: writing PHY page 769 (or 0x6020 shifted) reg 0x17
[  704.943155] e1000e 0000:00:1f.6 eno1: MDI Error
...
[  705.108161] e1000e 0000:00:1f.6 eno1: Hardware Error

As Andrew Lunn pointed out, MDIO has nothing to do with phy, and indeed
increase polling iteration can resolve the issue.

This patch only papers over the symptom, as we don't really know the
root cause of the issue. The most possible culprit is Intel ME, which
may do its own things that conflict with software.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
v4:
 - States that this patch just papers over the symptom.

v3:
 - Moving delay to end of loop doesn't save anytime, move it back.
 - Point out this is quitely likely caused by Intel ME.

v2:
 - Increase polling iteration instead of powering down the phy.

 drivers/net/ethernet/intel/e1000e/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index e11c877595fb..e6d4acd90937 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -203,7 +203,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
 	 * Increasing the time out as testing showed failures with
 	 * the lower time out
 	 */
-	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
+	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 10); i++) {
 		udelay(50);
 		mdic = er32(MDIC);
 		if (mdic & E1000_MDIC_READY)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
