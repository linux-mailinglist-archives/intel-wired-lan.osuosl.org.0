Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F2F4592DE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 17:19:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0794F80D4D;
	Mon, 22 Nov 2021 16:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KocK_1_5mjyK; Mon, 22 Nov 2021 16:19:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D2BD80D4A;
	Mon, 22 Nov 2021 16:19:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 130EF1BF350
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 16:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E43A80D36
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 16:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZGuAtGTSxIwR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Nov 2021 16:19:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1153880C2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 16:19:43 +0000 (UTC)
Received: from HP-EliteBook-840-G7.. (1-171-213-156.dynamic-ip.hinet.net
 [1.171.213.156])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 42C523F253; 
 Mon, 22 Nov 2021 16:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1637597979;
 bh=9DFzQ/hGOpPY2w9z421LKZyZIqGCdRtsLKMhNNyM3q4=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=ktHlX7NdqNRgkSwTTi5sjdU1txHiKE5YJ0aNFTcs9BAaFCO7Q4IWZ+wh5rdpYTnw/
 8onYaPehsORGbk16wae1tXJWWrVjTLBsopf3EnncQYFX8UV8ZVHvFp0zZ1GR38O+2l
 kLnSDsDbk5eRbSpQqSppDygBAAd8on+ilvPnDRP2bnfclqlaXPGaqxJ7q3Jc6IKVuO
 dIf7ieaPXQ5STbOEIrwsvAWGRhe4wyEoMqfLVHqU6aNCirgkr460TdhtcjlGN3/NhR
 27t7suuzHst7RnzO9tzdXv45YZzLkcrI1YmIvGYF2yQs6Jo2bMZuC4Ac9adw9KqmNN
 gFzJOun79e3pg==
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Tue, 23 Nov 2021 00:19:25 +0800
Message-Id: <20211122161927.874291-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/3] Revert "e1000e: Additional PHY power
 saving in S0ix"
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, acelan.kao@canonical.com,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reverts commit 3ad3e28cb203309fb29022dea41cd65df0583632.

The s0ix series makes e1000e on TGL and ADL fails to work after s2idle
resume.

There doesn't seem to be any solution soon, so revert the whole series.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 44e2dc8328a22..e16b7c0d98089 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6380,16 +6380,10 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 		ew32(CTRL_EXT, mac_data);
 
 		/* DFT control: PHY bit: page769_20[0] = 1
-		 * page769_20[7] - PHY PLL stop
-		 * page769_20[8] - PHY go to the electrical idle
-		 * page769_20[9] - PHY serdes disable
 		 * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
 		 */
 		e1e_rphy(hw, I82579_DFT_CTRL, &phy_data);
 		phy_data |= BIT(0);
-		phy_data |= BIT(7);
-		phy_data |= BIT(8);
-		phy_data |= BIT(9);
 		e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
 
 		mac_data = er32(EXTCNF_CTRL);
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
