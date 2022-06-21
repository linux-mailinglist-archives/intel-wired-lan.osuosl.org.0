Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 537AC55361D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 17:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 631EF60681;
	Tue, 21 Jun 2022 15:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 631EF60681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655825483;
	bh=Po1WH49JWsmfPDA8/c0/Fey8LQSziY/erLmMggLu8OQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GLjXcT9cQCKjPsyJfqwgpUDh71Er/5J80urTjoUnmoqpzZl52hNi/eHaktxws2Brg
	 wuHuRMOjFD1zuYdd5lll5gO0XjByaquRYp0FTETTgR2ob9Itu22VdN/xJTfvUbxMvz
	 QQsnraK0lf/HSzF3D0J7zwN2J1WhKF4b70N2PJ7vK2c0XrZm0bSm1lEDiS0P7xH8TD
	 eEZAESzmz7BeOr1k1sQ9PE0TRs7PoHmrJun6G0UBGmJUFffowt1VLszF2wVfWBdMqb
	 x8SdS7iJkmXNrlGY6uVzDBcOnCpEXUBieP2VrTF7gfgeAjrgIVyNQKj3p0ygTugu7h
	 qe8++/dydh9tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XEssGTfy3x8x; Tue, 21 Jun 2022 15:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 476C560D57;
	Tue, 21 Jun 2022 15:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 476C560D57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 496121BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:35:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21F6140142
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21F6140142
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hvlgbg_1I-sd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 08:35:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA98940104
Received: from smtpbg.qq.com (smtpbg139.qq.com [175.27.65.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA98940104
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:35:10 +0000 (UTC)
X-QQ-mid: bizesmtp63t1655799963tih337vy
Received: from ubuntu.localdomain ( [106.117.99.68])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Tue, 21 Jun 2022 16:25:56 +0800 (CST)
X-QQ-SSF: 01000000007000109000B00A0000000
X-QQ-FEAT: EbWlFiDChHPYfU5yL6223QxbRZgfR1rtB43QG8V5Y7Z2MVodubW05u6ah+dI/
 3d49daniGvuu5+3qEQ8bNjMDL1XKeplZV0Lb/zJQmboLN3Hj3g3Je/aGanv0f/cAdxj05KR
 63khFKXwieh3DmbsQQg1jOzH4izzfk90u/P00FNaMVeA+Rj3y/Fcc57uQ89tfcm/LjXACen
 zIAfl/3M1Q3iqx3vFRIQodrB3BPJx4yxQf1UE40yWQN4nxShLBuY+ruDPxub4Tdt+jgetVT
 ZWjMDmWYJPO9G3MC5PTRCFqA8XXcwKWAuJq69kri2qkARwW+32zwuf6OMdAWWHwTsNG1iht
 w1dXSIC
X-QQ-GoodBg: 0
From: Jiang Jian <jiangjian@cdjrlc.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Tue, 21 Jun 2022 16:25:54 +0800
Message-Id: <20220621082554.52380-1-jiangjian@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam6
X-Mailman-Approved-At: Tue, 21 Jun 2022 15:31:12 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: remove unexpected word "the"
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 jiangjian@cdjrlc.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

there is an unexpected word "the" in the comments that need to be removed

Signed-off-by: Jiang Jian <jiangjian@cdjrlc.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index e4b50c7781ff..35c2b9b8bd19 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1737,7 +1737,7 @@ static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
  * @speed: link speed
  * @autoneg_wait_to_complete: unused
  *
- * Configure the the integrated PHY for native SFP support.
+ * Configure the integrated PHY for native SFP support.
  */
 static s32
 ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
@@ -1786,7 +1786,7 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  * @speed: link speed
  * @autoneg_wait_to_complete: unused
  *
- * Configure the the integrated PHY for SFP support.
+ * Configure the integrated PHY for SFP support.
  */
 static s32
 ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
