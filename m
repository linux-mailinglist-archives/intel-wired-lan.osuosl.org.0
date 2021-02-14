Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 089B031AF93
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Feb 2021 08:18:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0D4D86932;
	Sun, 14 Feb 2021 07:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZ8vEBPclDRH; Sun, 14 Feb 2021 07:18:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 543A5869FE;
	Sun, 14 Feb 2021 07:18:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E41621BF873
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Feb 2021 07:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1C806F500
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Feb 2021 07:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YGBwxv4zc04N for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Feb 2021 07:18:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 299F76F510; Sun, 14 Feb 2021 07:18:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3554B6F500
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Feb 2021 07:18:02 +0000 (UTC)
IronPort-SDR: H3CDiCSd/JNSLw2r4GNlTuD7GN6Ra0ZsQLAh2ygga9hur78xHUnGlocyUI2n+OFIpFvh/ZgEDC
 2vxRtt0NVGrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="246628815"
X-IronPort-AV: E=Sophos;i="5.81,178,1610438400"; d="scan'208";a="246628815"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 23:17:57 -0800
IronPort-SDR: T/dEabeT+kChDfqYPKDeUalB+XcRS5Mn7VlPgeq4dsDz3acEIb2O7n87wEnMnErVtaBpuSSBUI
 kiU6bucTViSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,178,1610438400"; d="scan'208";a="579829657"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga005.jf.intel.com with ESMTP; 13 Feb 2021 23:17:54 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anna.kostyukovsky@intel.com
Date: Sun, 14 Feb 2021 09:17:49 +0200
Message-Id: <20210214071749.4068885-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused MII_CR_LOOPBACK
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

MII_CR_LOOPBACK masks not in use in i225 device and can be removed.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index c5b36ec7bcff..153561291166 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -441,7 +441,6 @@
 #define MII_CR_RESTART_AUTO_NEG	0x0200  /* Restart auto negotiation */
 #define MII_CR_POWER_DOWN	0x0800  /* Power down */
 #define MII_CR_AUTO_NEG_EN	0x1000  /* Auto Neg Enable */
-#define MII_CR_LOOPBACK		0x4000  /* 0 = normal, 1 = loopback */
 
 /* PHY Status Register */
 #define MII_SR_LINK_STATUS	0x0004 /* Link Status 1 = link */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
