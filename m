Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D113955BF4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Aug 2024 10:33:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B004880F29;
	Sun, 18 Aug 2024 08:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKlWHAhXVHXN; Sun, 18 Aug 2024 08:32:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B273E80F23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723969977;
	bh=EGrTlgcoFB89WH3YPkz7RTiPpIXfzKAo0EwSnWd5uus=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dRnBzFwxBLKAIdBg39BXrICUlJCLOJKHuEoeJugMmfEA8fb2CcAj0apqwuxUokHQf
	 zeC42QtP3vEvM7ZFot5F9bl8SiKxDJFtkBvSUroBqieXwB0Wf+f7K1XrCgzzT5Ayml
	 EoKAzxpComuVmENKz3kEwWaAdJoMyfRf5dmyiEtkSSPhceJAVsXsEH1znCKfgj+ExW
	 TaTxilFbrqfrv7cbq0aRbr/pYCeCa1XKUqhkv2OI3siUGsaR5n32MgW5ac7RuaWYse
	 PylZbo7ri+MM9S5FHzUwN6h7IkpEFG2pVtnFB/1iUhhyM6zeAj6MhjqbR801WYAqPp
	 uqpMC/bzprA8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B273E80F23;
	Sun, 18 Aug 2024 08:32:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 467E61BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 08:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 322ED40277
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 08:32:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GlRYWjIKZwpU for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Aug 2024 08:32:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2FB1940275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FB1940275
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FB1940275
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 08:32:53 +0000 (UTC)
X-CSE-ConnectionGUID: eufkeo/0RnWvjygtqpjWdw==
X-CSE-MsgGUID: QsqH4qgnSj6WT4DJ/gj3qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11167"; a="22381111"
X-IronPort-AV: E=Sophos;i="6.10,156,1719903600"; d="scan'208";a="22381111"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2024 01:32:53 -0700
X-CSE-ConnectionGUID: /nR9zrvwS16oa5PYotUy1g==
X-CSE-MsgGUID: O5rWs6RuRzC3eBnrA0Jsew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,156,1719903600"; d="scan'208";a="97569896"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by orviesa001.jf.intel.com with ESMTP; 18 Aug 2024 01:32:52 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 18 Aug 2024 11:32:50 +0300
Message-Id: <20240818083250.3153977-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723969974; x=1755505974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K428SFHKOUhG2ZL6v07+fOLT5FGuPgrXJFRr3tA/voo=;
 b=QjDNha/UzAxWZZwRUMR8zydwaalGFF/CuSKN5cKfHc4W4HYQ5ndLgqkR
 Mxl2RmH22Wdvyy9U3wtHMCBYtSgEKm4qFzeeVzysKzqCp/UrXdKcnaPfK
 p9DRRm9XIadPIMM7/l+UrqmWwzHMn9czDH75faGJro09dsqm16QB/zTNx
 KQtYeCan1WDCdDy3wqM8LvuwU+Lqr1S1tzG1BUKnwORGd9T62R0G9EARu
 s0UkhDhqrgQyGAn7K/mgwtvHtQSnQKm/u5vq2LsgIPYi3orSEm2VUPa04
 Ko4IjOhopKdwNoX8hyJTxgc5zNE+JXYkuhtz2hlMl1u8f3nKOk3ENaBiL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QjDNha/U
Subject: [Intel-wired-lan] [iwl-next v1 1/1] igc: Move the MULTI GBT AN
 Control Register to _regs file
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

MULTI GBT AN Control Register is IEEE Standard Register 7.32 (not a mask).
The right place should be in igc_reg.h file. In accordance with the
registers naming convention added IGC_' prefix.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 drivers/net/ethernet/intel/igc/igc_phy.c     | 4 ++--
 drivers/net/ethernet/intel/igc/igc_regs.h    | 3 +++
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 6d6717ba4ffd..8e449904aa7d 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -178,7 +178,6 @@
 
 /* PHY GPY 211 registers */
 #define STANDARD_AN_REG_MASK	0x0007 /* MMD */
-#define ANEG_MULTIGBT_AN_CTRL	0x0020 /* MULTI GBT AN Control Register */
 #define MMD_DEVADDR_SHIFT	16     /* Shift MMD to higher bits */
 #define CR_2500T_FD_CAPS	0x0080 /* Advertise 2500T FD capability */
 
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 861f37076861..2801e5f24df9 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -240,7 +240,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 		/* Read the MULTI GBT AN Control Register - reg 7.32 */
 		ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
 					    MMD_DEVADDR_SHIFT) |
-					    ANEG_MULTIGBT_AN_CTRL,
+					    IGC_ANEG_MULTIGBT_AN_CTRL,
 					    &aneg_multigbt_an_ctrl);
 
 		if (ret_val)
@@ -380,7 +380,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 		ret_val = phy->ops.write_reg(hw,
 					     (STANDARD_AN_REG_MASK <<
 					     MMD_DEVADDR_SHIFT) |
-					     ANEG_MULTIGBT_AN_CTRL,
+					     IGC_ANEG_MULTIGBT_AN_CTRL,
 					     aneg_multigbt_an_ctrl);
 
 	return ret_val;
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index bb6f37f5d3a5..12ddc5793651 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -310,6 +310,9 @@
 #define IGC_IPCNFG	0x0E38 /* Internal PHY Configuration */
 #define IGC_EEE_SU	0x0E34 /* EEE Setup */
 
+/* MULTI GBT AN Control Register - reg. 7.32 */
+#define IGC_ANEG_MULTIGBT_AN_CTRL	0x0020
+
 /* EEE ANeg Advertisement Register - reg 7.60 and reg 7.62 */
 #define IGC_ANEG_EEE_AB1	0x003c
 #define IGC_ANEG_EEE_AB2	0x003e
-- 
2.34.1

