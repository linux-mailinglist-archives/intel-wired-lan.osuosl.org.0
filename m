Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7E743F513
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 04:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69B8740219;
	Fri, 29 Oct 2021 02:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hCYYNToR0PVL; Fri, 29 Oct 2021 02:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B0034012B;
	Fri, 29 Oct 2021 02:48:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A3051BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 01:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34F90606A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 01:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lynx.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BAx4G7NXj_a8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 01:11:45 +0000 (UTC)
X-Greylist: delayed 00:08:58 by SQLgrey-1.8.0
Received: from smtp98.iad3a.emailsrvr.com (smtp98.iad3a.emailsrvr.com
 [173.203.187.98])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 552A06068F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 01:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lynx.com;
 s=20200402-brzttuan; t=1635469365;
 bh=jMM+C2LT4KU86ldYN4hpLRQjbvr7iv6JRSnCpYFXPiA=;
 h=From:Subject:To:Date:From;
 b=RvZtQBCul4PKfrn4LzVsVM9XpJBJoC36y+V4PBnd4glqO2L2P9tJcC/92cvcNT+Iv
 TB+VAx0APRg22nVESvYCI+Zxsxai+JH4q6hanxvPKpre2JeHp58WsWKR6VU0eq3YrI
 6M/RQW/uk34jloyvp87ZQEN3hq7aySxw/is5vP/A=
X-Auth-ID: cnovikov@lynx.com
Received: by smtp37.relay.iad3a.emailsrvr.com (Authenticated sender:
 cnovikov-AT-lynx.com) with ESMTPSA id AC0885A2E; 
 Thu, 28 Oct 2021 21:02:44 -0400 (EDT)
From: Cyril Novikov <cnovikov@lynx.com>
To: "David S. Miller" <davem@davemloft.net>
Message-ID: <81be24c4-a7e4-0761-abf4-204f4849b6eb@lynx.com>
Date: Thu, 28 Oct 2021 18:03:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Language: en-US
X-Classification-ID: df0f361c-6133-4f2f-845e-777970af93a5-1-1
X-Mailman-Approved-At: Fri, 29 Oct 2021 02:48:15 +0000
Subject: [Intel-wired-lan] [PATCH net] ixgbe: set X550 MDIO speed before
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

Signed-off-by: Cyril Novikov <cnovikov@lynx.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 3 +++
 1 file changed, 3 insertions(+)

Reproduced with Linux kernel 4.19 and 5.15-rc7. Can be reproduced using
the following setup:

* Use an Atom C3000 family system with at least one X550 LAN on the SoC
* Disable PXE or other BIOS network initialization if possible
  (the interface must not be initialized before Linux boots)
* Connect a live 10Gb Ethernet cable to an X550 port
* Power cycle (not reset, doesn't always work) the system and boot Linux
* Observe: ixgbe interfaces w/ 10GbE cables plugged in fail with error -17

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
