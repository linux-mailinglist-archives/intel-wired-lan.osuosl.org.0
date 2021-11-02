Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F000442EE2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 14:11:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 135A14034C;
	Tue,  2 Nov 2021 13:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFSLNEANlKB8; Tue,  2 Nov 2021 13:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 100B540346;
	Tue,  2 Nov 2021 13:11:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 178531BF836
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 01:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EE6960655
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 01:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lynx.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lVoBOyBWBCyW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 01:46:46 +0000 (UTC)
X-Greylist: delayed 00:07:07 by SQLgrey-1.8.0
Received: from smtp114.iad3b.emailsrvr.com (smtp114.iad3b.emailsrvr.com
 [146.20.161.114])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3553F6063C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 01:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lynx.com;
 s=20200402-brzttuan; t=1635817178;
 bh=46oeNoVnfl35I/+WnQNUbsH/ZxQDzKMdXDU3SyPjbHw=;
 h=Date:From:Subject:To:From;
 b=BXK7ieSoa/q93csTLRSRW27q1VzJ+kw1KMuN+b8nXyvP/prn+YHy4g0aaOtjnt0BJ
 IwNNk6yJ1lySrKoMgz7KxxwGoqZ8sz+MYBvV7KMvI5fWzHrUZyVp/sSFJOZTYp0ZVU
 nKLBn5Mvby4WjsBVvLBqdH353iYUq6fIT+HRCkZ8=
X-Auth-ID: cnovikov@lynx.com
Received: by smtp23.relay.iad3b.emailsrvr.com (Authenticated sender:
 cnovikov-AT-lynx.com) with ESMTPSA id 6C343A0091; 
 Mon,  1 Nov 2021 21:39:37 -0400 (EDT)
Message-ID: <896681e4-fcd7-3187-8e59-75ce0896ebd3@lynx.com>
Date: Mon, 1 Nov 2021 18:39:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Cyril Novikov <cnovikov@lynx.com>
To: "David S. Miller" <davem@davemloft.net>
Content-Language: en-US
X-Classification-ID: ae6b94cf-68af-46c0-87e3-795d847de174-1-1
X-Mailman-Approved-At: Tue, 02 Nov 2021 13:11:14 +0000
Subject: [Intel-wired-lan] [PATCH v2 net] ixgbe: set X550 MDIO speed before
 talking to PHY
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The MDIO bus speed must be initialized before talking to the PHY the first
time in order to avoid talking to it using a speed that the PHY doesn't
support.

This fixes HW initialization error -17 (IXGBE_ERR_PHY_ADDR_INVALID) on
Denverton CPUs (a.k.a. the Atom C3000 family) on ports with a 10Gb network
plugged in. On those devices, HLREG0[MDCSPD] resets to 1, which combined
with the 10Gb network results in a 24MHz MDIO speed, which is apparently
too fast for the connected PHY. PHY register reads over MDIO bus return
garbage, leading to initialization failure.

Reproduced with Linux kernel 4.19 and 5.15-rc7. Can be reproduced using
the following setup:

* Use an Atom C3000 family system with at least one X552 LAN on the SoC
* Disable PXE or other BIOS network initialization if possible
  (the interface must not be initialized before Linux boots)
* Connect a live 10Gb Ethernet cable to an X550 port
* Power cycle (not reset, doesn't always work) the system and boot Linux
* Observe: ixgbe interfaces w/ 10GbE cables plugged in fail with error -17

Signed-off-by: Cyril Novikov <cnovikov@lynx.com>
Fixes: e84db7272798 ("ixgbe: Introduce function to control MDIO speed")
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 3 +++
 1 file changed, 3 insertions(+)

Patch v2 addresses review comments: add a Fixed line, move reproduction steps to the commit message. No changes to the code.

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 9724ffb16518..e4b50c7781ff 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -3405,6 +3405,9 @@ static s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 	/* flush pending Tx transactions */
 	ixgbe_clear_tx_pending(hw);
 
+	/* set MDIO speed before talking to the PHY in case it's the 1st time */
+	ixgbe_set_mdio_speed(hw);
+
 	/* PHY ops must be identified and initialized prior to reset */
 	status = hw->phy.ops.init(hw);
 	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED ||
-- 
2.19.1-412.replication
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
