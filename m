Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B127113541
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2019 19:58:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AF1985232;
	Wed,  4 Dec 2019 18:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mocdge1MeRWq; Wed,  4 Dec 2019 18:58:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D71C185118;
	Wed,  4 Dec 2019 18:58:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E10251BF312
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 10:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB0EB22264
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 10:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VirspJZsSLsk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2019 10:52:37 +0000 (UTC)
X-Greylist: delayed 00:11:23 by SQLgrey-1.7.6
Received: from ns.omicron.at (ns.omicron.at [212.183.10.25])
 by silver.osuosl.org (Postfix) with ESMTPS id 9772020394
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 10:52:37 +0000 (UTC)
Received: from MGW02-ATKLA.omicron.at ([172.25.62.35])
 by ns.omicron.at (8.15.2/8.15.2) with ESMTPS id xB4AfAco019657
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <intel-wired-lan@lists.osuosl.org>; Wed, 4 Dec 2019 11:41:10 +0100
DKIM-Filter: OpenDKIM Filter v2.11.0 ns.omicron.at xB4AfAco019657
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=omicronenergy.com;
 s=default; t=1575456070;
 bh=ukI/cX93/kHMVo4B48kFJfdHSp1u4sCSTmqVqM4D+iw=;
 h=From:To:CC:Subject:Date:From;
 b=NKsvp7mAlJTLYSuZ7PkhGwADIYmAV6mfCXlD6W3T0iWLECjTBVPsplq/mqGzl3MJe
 CosPd25Q3M7SCLQxyz9ZGoUc7KD80l4rjej/CnJikZ8xtve0SSf4AENd4bdCO82C5d
 sYR0b2K4ZdlNpNHxw1GF9V+gmaFWOBU1LG4tO+UI=
Received: from MGW02-ATKLA.omicron.at (localhost [127.0.0.1])
 by MGW02-ATKLA.omicron.at (Postfix) with ESMTP id A4F28A010D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 11:41:10 +0100 (CET)
Received: from MGW01-ATKLA.omicron.at (unknown [172.25.62.34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by MGW02-ATKLA.omicron.at (Postfix) with ESMTPS id A3364A010C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 11:41:10 +0100 (CET)
Received: from EXC04-ATKLA.omicron.at ([172.22.100.189])
 by MGW01-ATKLA.omicron.at  with ESMTP id xB4AfAGx014102-xB4AfAH1014102
 (version=TLSv1.2 cipher=AES256-SHA256 bits=256 verify=CAFAIL);
 Wed, 4 Dec 2019 11:41:10 +0100
Received: from manrud11.omicron.at (172.22.24.34) by EXC04-ATKLA.omicron.at
 (172.22.100.189) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 4 Dec 2019
 11:41:06 +0100
From: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
To: <jeffrey.t.kirsher@intel.com>
Date: Wed, 4 Dec 2019 11:40:26 +0100
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Originating-IP: [172.22.24.34]
X-ClientProxiedBy: EXC04-ATKLA.omicron.at (172.22.100.189) To
 EXC04-ATKLA.omicron.at (172.22.100.189)
Message-ID: <ef7b98c8-0ce4-4f84-989d-28b5a29d4831@EXC04-ATKLA.omicron.at>
X-Mailman-Approved-At: Wed, 04 Dec 2019 18:58:03 +0000
Subject: [Intel-wired-lan] [PATCH] igb: Fix SGMII SFP module discovery for
 100FX/LX.
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
Cc: Manfred Rudigier <manfred.rudigier@omicronenergy.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing the link mode should also be done for 100BaseFX SGMII modules,
otherwise they just don't work when the default link mode in CTRL_EXT
coming from the EEPROM is SERDES.

Additionally 100Base-LX SGMII SFP modules are also supported now, which
was not the case before.

Tested with an i210 using Flexoptix S.1303.2M.G 100FX and
S.1303.10.G 100LX SGMII SFP modules.

Signed-off-by: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
---
 drivers/net/ethernet/intel/igb/e1000_82575.c | 8 ++------
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index 614130a6ba1f..30e77f5406cf 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -530,7 +530,7 @@ static s32 igb_set_sfp_media_type_82575(struct e1000_hw *hw)
 		dev_spec->module_plugged = true;
 		if (eth_flags->e1000_base_lx || eth_flags->e1000_base_sx) {
 			hw->phy.media_type = e1000_media_type_internal_serdes;
-		} else if (eth_flags->e100_base_fx) {
+		} else if (eth_flags->e100_base_fx || eth_flags->e100_base_lx) {
 			dev_spec->sgmii_active = true;
 			hw->phy.media_type = e1000_media_type_internal_serdes;
 		} else if (eth_flags->e1000_base_t) {
@@ -657,14 +657,10 @@ static s32 igb_get_invariants_82575(struct e1000_hw *hw)
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
index 5acf3b743876..50954e444985 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -181,7 +181,7 @@ static int igb_get_link_ksettings(struct net_device *netdev,
 				advertising &= ~ADVERTISED_1000baseKX_Full;
 			}
 		}
-		if (eth_flags->e100_base_fx) {
+		if (eth_flags->e100_base_fx || eth_flags->e100_base_lx) {
 			supported |= SUPPORTED_100baseT_Full;
 			advertising |= ADVERTISED_100baseT_Full;
 		}
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
