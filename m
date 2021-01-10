Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277642F07A1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Jan 2021 15:51:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0943887149;
	Sun, 10 Jan 2021 14:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfS3jfbTZuQx; Sun, 10 Jan 2021 14:51:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D74087147;
	Sun, 10 Jan 2021 14:51:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1138F1BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Jan 2021 14:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C78387143
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Jan 2021 14:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PI8EYnIU12OI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Jan 2021 14:51:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14F6987142
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Jan 2021 14:51:27 +0000 (UTC)
IronPort-SDR: Eez94pk65tKy1HTh0vNcuIYknNUfxnFQzVpeUP0vrpzwnH6lENnIDGX9IWRfw7PdXbFn8iTPh+
 2w0En/30j2yw==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="241838008"
X-IronPort-AV: E=Sophos;i="5.79,336,1602572400"; d="scan'208";a="241838008"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2021 06:51:25 -0800
IronPort-SDR: chJl3/3u2l3WGrxxA6g9WGm1ZIq64w0Vbk977FLP0iZ7/I5MmxWC6l8d9U/dg7jouBI8LAkWRX
 2/gLivm75qCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,336,1602572400"; d="scan'208";a="352275419"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2021 06:51:25 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anna.kostyukovsky@intel.com
Date: Sun, 10 Jan 2021 16:51:14 +0200
Message-Id: <20210110145114.3493608-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused MII_CR_RESET
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

MII_CR_RESET mask not in use in i225 device and could be removed

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
