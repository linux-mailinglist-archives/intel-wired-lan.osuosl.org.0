Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C063535A0E0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 16:18:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 223664036F;
	Fri,  9 Apr 2021 14:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHsQDR28FiQ8; Fri,  9 Apr 2021 14:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FD4840361;
	Fri,  9 Apr 2021 14:18:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FF091BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 09:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3557A419BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 09:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6JD39JQoevt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Apr 2021 09:19:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from qq.com (out203-205-221-210.mail.qq.com [203.205.221.210])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7866B419BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 09:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1617959958; bh=aTLMp0LUcyAP8ueQ3QFBy5JYASxfMiq299VtVgNf+v0=;
 h=From:To:Cc:Subject:Date;
 b=NFmZ+QMd1nlcw3kmADlm6G/bMnNFFgrV6wk88pLfKS0XRMkj5s/jxrK73SRuGBYi1
 iOcW3QL5MAuRydXt7aFRn5klJHRCTQTmboRGNPYEXEPllnizhsYp4WcS8i3uvvXfu9
 8vyCIMACjKGoqdeDT3R6+vAcUzR8rfs5btf1O2fM=
Received: from localhost.localdomain ([116.128.247.22])
 by newxmesmtplogicsvrsza5.qq.com (NewEsmtp) with SMTP
 id 4710E27C; Fri, 09 Apr 2021 17:17:49 +0800
X-QQ-mid: xmsmtpt1617959869tperzyxnj
Message-ID: <tencent_A3F0B1FAA65495EB2220B5B72EB6E5AF1B07@qq.com>
X-QQ-XMAILINFO: ORSIo7O5VipNXTHPcIrOILr8Nwm5A9pboQTWeDEXV/Sz0pb9W4bakhR6MwmtuP
 pU6sayecZwmfKVh1VlIAlAgCmA6q8H9x2DnaWkR84sF7eI3ZN6TAM0OLuVd6UH37sZ5zWnpFaBr8
 Z0PVtoax0NDKD3Sdjd2QzjXk8yMc8qmPskC3av3+kd7R6cn/RlJSdXMzckaz2QNkWPM+XcdzcMIJ
 6FBFNQkWGTDAbUEN4Of6nbgG1T/41KOUE0XGD2gqEXl8JcI12gpZ1p/YYFfPXvfuYd1ctzmgzn6y
 3d+PeqifA+4OF6bgJsD9RsA7qNJz1zTFFP5d56+mMyF3bEr6LpQIZ5Hz8R4MTx25q2kXd/zaIMAK
 2M6AloQUZQ0J1/EoPr5bqDTUe3I0nfwuMhcPmVmZJEETFmL1Iz+Z30tiDgjNFAwVuzW+n3gpbzQ3
 cd8F19+25nP1qrOmpN9bZgGDM2vPx3sUzYjhqUeEy5IqYnJySNzQX8dcukoCr/5sqNjy1e+AG6gX
 JXpvv2Lt8teR/56gV7OPDKgsh+MnPyUIC0hyYx/pllTLxKs+mOw3+3ZHknkSGEHSK1DHCqnDH6bQ
 jALfRZ1Mic9gSFpiApIV+3aWIVp8DNr42VTwZoGHWAX3LrSBZDxmHIWPsdcZ8kaqyi2eKuBxzE4h
 N8tWvdLTM/JkiCo6LoBOK6XrRu0OgDm67b92LgVvbeIkeOMSdija6BYIWDMn8ZDoO8XRPw9ofO0B
 FZQaPsINVRUSddnY71RhrrNSApo3uZVXIfMoGGThmLSokUX2SAtMIHpBCc3XWsh0AZrAeAovrFkd
 9LM2+GVx5YpYDfDmpqQrHMKeZApr2O4lD8ozueTMZxuyWP1JJEuh3tpDXWA5Yt9gH/LEKBIJjm5A
 ==
From: xiao33522@qq.com
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Fri,  9 Apr 2021 17:17:47 +0800
X-OQ-MSGID: <20210409091747.32561-1-xiao33522@qq.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Fri, 09 Apr 2021 14:18:24 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: The state of phy may not be correct
 during power-on
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
Cc: netdev@vger.kernel.org, xiaolinkui <xiaolinkui@kylinos.cn>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: xiaolinkui <xiaolinkui@kylinos.cn>

Sometimes the power on state of the x710 network card indicator is not right,
and the indicator shows orange. At this time, the network card speed is Gigabit.

After entering the system, check the network card status through the ethtool
command as follows:

[root@localhost ~]# ethtool enp132s0f0
Settings for enp132s0f0:
	Supported ports: [ FIBRE ]
	Supported link modes:   1000baseX/Full
	                        10000baseSR/Full
	Supported pause frame use: Symmetric
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  1000baseX/Full
	                        10000baseSR/Full
	Advertised pause frame use: No
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Speed: 1000Mb/s
	Duplex: Full
	Port: FIBRE
	PHYAD: 0
	Transceiver: internal
	Auto-negotiation: off
	Supports Wake-on: d
	Wake-on: d
	Current message level: 0x00000007 (7)
			       drv probe link
	Link detected: yes

We can see that the speed is 1000Mb/s.

If you unplug and plug in the optical cable, it can be restored to 10g.
After this operation, the rate is as follows:

[root@localhost ~]# ethtool enp132s0f0
Settings for enp132s0f0:
        Supported ports: [ FIBRE ]
        Supported link modes:   1000baseX/Full
                                10000baseSR/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  1000baseX/Full
                                10000baseSR/Full
        Advertised pause frame use: No
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Speed: 10000Mb/s
        Duplex: Full
        Port: FIBRE
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: off
        Supports Wake-on: d
        Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes

Calling i40e_aq_set_link_restart_an can also achieve this function.
So we need to do a reset operation for the network card when the network card
status is abnormal.

Signed-off-by: xiaolinkui <xiaolinkui@kylinos.cn>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index ec19e18305ec..dde0224776ac 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1866,6 +1866,10 @@ i40e_status i40e_aq_get_link_info(struct i40e_hw *hw,
 	hw_link_info->max_frame_size = le16_to_cpu(resp->max_frame_size);
 	hw_link_info->pacing = resp->config & I40E_AQ_CONFIG_PACING_MASK;
 
+	if (hw_link_info->phy_type == I40E_PHY_TYPE_1000BASE_SX &&
+	    hw->mac.type == I40E_MAC_XL710)
+		i40e_aq_set_link_restart_an(hw, true, NULL);
+
 	/* update fc info */
 	tx_pause = !!(resp->an_info & I40E_AQ_LINK_PAUSE_TX);
 	rx_pause = !!(resp->an_info & I40E_AQ_LINK_PAUSE_RX);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
