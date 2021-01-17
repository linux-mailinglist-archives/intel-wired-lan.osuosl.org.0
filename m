Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E392F9140
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Jan 2021 08:31:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0D6987114;
	Sun, 17 Jan 2021 07:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJrzOctGEvl5; Sun, 17 Jan 2021 07:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B127870A4;
	Sun, 17 Jan 2021 07:31:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A938A1BF489
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 07:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A4BCE8707C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 07:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nYZBfGiqeUIX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Jan 2021 07:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 965228705C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 07:31:13 +0000 (UTC)
IronPort-SDR: 8ulh5aIfcMfVKEgxtoy/mZU43wzA/0LlujGkFgSF8HT56QMZ99OyLFNo2n2E+KPTbOQSDdHooV
 W0MYx8/kuMRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9866"; a="157884124"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="157884124"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2021 23:31:12 -0800
IronPort-SDR: KLkkE7aZpxptUPbTradYVm+RFJe4nByB3BZVjhQS7O1GFAEdE2iJxR8T7OSrgSELje1a7YTG7d
 uVon91Bf5ejw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="425795335"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga001.jf.intel.com with ESMTP; 16 Jan 2021 23:31:11 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anna.kostyukovsky@intel.com
Date: Sun, 17 Jan 2021 09:31:06 +0200
Message-Id: <20210117073106.4102905-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused MII_CR_SPEED
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

Foce PHY speed not supported for i225 devices.
MII_CR_SPEED masks not in use in i225 device and can be removed.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 58fc207dc995..c5b36ec7bcff 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -442,9 +442,6 @@
 #define MII_CR_POWER_DOWN	0x0800  /* Power down */
 #define MII_CR_AUTO_NEG_EN	0x1000  /* Auto Neg Enable */
 #define MII_CR_LOOPBACK		0x4000  /* 0 = normal, 1 = loopback */
-#define MII_CR_SPEED_1000	0x0040
-#define MII_CR_SPEED_100	0x2000
-#define MII_CR_SPEED_10		0x0000
 
 /* PHY Status Register */
 #define MII_SR_LINK_STATUS	0x0004 /* Link Status 1 = link */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
