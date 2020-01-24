Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C59B914872D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jan 2020 15:21:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82F98877E3;
	Fri, 24 Jan 2020 14:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nMD7IgLzEBI5; Fri, 24 Jan 2020 14:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 752E6877D1;
	Fri, 24 Jan 2020 14:21:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FA631BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BE868805D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 71Y-7IjjRCLH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jan 2020 14:21:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 911E987B8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:21:32 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 938EE218AC;
 Fri, 24 Jan 2020 14:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875692;
 bh=QbtyRYuDdnoF3CdA9Du4Q2Xg3mhXCyDP5kEE0dKS9qs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s01OoJFJUKGbDPSzXWh1f/08okUI9eYg6CgENuiSPDtsENhqpjhBaeFHtcwikVp0u
 IzpdmtRkn4vuZo/r9HYE9j378UiYaftr6irDl/tzef0K0c8AlJy43VhvoLCSCfWJeV
 jBMjMa6VohKESKlW/0NuCNVFuv6OCm45BJHrF+k8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 24 Jan 2020 09:20:58 -0500
Message-Id: <20200124142119.30484-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124142119.30484-1-sashal@kernel.org>
References: <20200124142119.30484-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.14 11/32] igb: Fix SGMII SFP
 module discovery for 100FX/LX.
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
 Manfred Rudigier <manfred.rudigier@omicronenergy.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Manfred Rudigier <manfred.rudigier@omicronenergy.com>

[ Upstream commit 5365ec1aeff5b9f2962a9c9b31d63f9dad7e0e2d ]

Changing the link mode should also be done for 100BaseFX SGMII modules,
otherwise they just don't work when the default link mode in CTRL_EXT
coming from the EEPROM is SERDES.

Additionally 100Base-LX SGMII SFP modules are also supported now, which
was not the case before.

Tested with an i210 using Flexoptix S.1303.2M.G 100FX and
S.1303.10.G 100LX SGMII SFP modules.

Signed-off-by: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/igb/e1000_82575.c | 8 ++------
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index c37cc8bccf477..158c277ec3538 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -562,7 +562,7 @@ static s32 igb_set_sfp_media_type_82575(struct e1000_hw *hw)
 		dev_spec->module_plugged = true;
 		if (eth_flags->e1000_base_lx || eth_flags->e1000_base_sx) {
 			hw->phy.media_type = e1000_media_type_internal_serdes;
-		} else if (eth_flags->e100_base_fx) {
+		} else if (eth_flags->e100_base_fx || eth_flags->e100_base_lx) {
 			dev_spec->sgmii_active = true;
 			hw->phy.media_type = e1000_media_type_internal_serdes;
 		} else if (eth_flags->e1000_base_t) {
@@ -689,14 +689,10 @@ static s32 igb_get_invariants_82575(struct e1000_hw *hw)
 			break;
 		}
 
-		/* do not change link mode for 100BaseFX */
-		if (dev_spec->eth_flags.e100_base_fx)
-			break;
-
 		/* change current link mode setting */
 		ctrl_ext &= ~E1000_CTRL_EXT_LINK_MODE_MASK;
 
-		if (hw->phy.media_type == e1000_media_type_copper)
+		if (dev_spec->sgmii_active)
 			ctrl_ext |= E1000_CTRL_EXT_LINK_MODE_SGMII;
 		else
 			ctrl_ext |= E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index d06a8db514d4a..82028ce355fb1 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -201,7 +201,7 @@ static int igb_get_link_ksettings(struct net_device *netdev,
 				advertising &= ~ADVERTISED_1000baseKX_Full;
 			}
 		}
-		if (eth_flags->e100_base_fx) {
+		if (eth_flags->e100_base_fx || eth_flags->e100_base_lx) {
 			supported |= SUPPORTED_100baseT_Full;
 			advertising |= ADVERTISED_100baseT_Full;
 		}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
