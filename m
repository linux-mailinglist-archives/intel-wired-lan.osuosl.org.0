Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B99B72F0C35
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jan 2021 06:18:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6616F85A6E;
	Mon, 11 Jan 2021 05:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EOZNMPmpOCNi; Mon, 11 Jan 2021 05:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A9A085B81;
	Mon, 11 Jan 2021 05:18:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B246E1BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 05:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE33285A6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 05:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gy5x8yd_egGD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jan 2021 05:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 38E3485A5A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 05:17:58 +0000 (UTC)
IronPort-SDR: s7vWKtxbfjcjtmvGesEpU9kAI9A8a5ARftm8H7NyMJccmm/z2TRuo6+W8ax0yO5Jw5SVTMuVmd
 ViVG1LI4Qhog==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="157586197"
X-IronPort-AV: E=Sophos;i="5.79,337,1602572400"; d="scan'208";a="157586197"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2021 21:17:56 -0800
IronPort-SDR: qfVWIdOW0rd5g2VPE3vpqforDAIDR4+QET4Rq1Fle4yag6XyyPP8nh8X/Ss8ueMpeO3jiqnZSt
 IB8h5DsL2NRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,337,1602572400"; d="scan'208";a="363018876"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga002.jf.intel.com with ESMTP; 10 Jan 2021 21:17:55 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anna.kostyukovsky@intel.com
Date: Mon, 11 Jan 2021 07:17:53 +0200
Message-Id: <20210111051753.3531291-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unused MII_CR_RESET
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

MII_CR_RESET mask not in use in i225 device and can it removed

v1->v2:
Fix commit message

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 4fc9ef978ad3..58fc207dc995 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -442,7 +442,6 @@
 #define MII_CR_POWER_DOWN	0x0800  /* Power down */
 #define MII_CR_AUTO_NEG_EN	0x1000  /* Auto Neg Enable */
 #define MII_CR_LOOPBACK		0x4000  /* 0 = normal, 1 = loopback */
-#define MII_CR_RESET		0x8000  /* 0 = normal, 1 = PHY reset */
 #define MII_CR_SPEED_1000	0x0040
 #define MII_CR_SPEED_100	0x2000
 #define MII_CR_SPEED_10		0x0000
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
