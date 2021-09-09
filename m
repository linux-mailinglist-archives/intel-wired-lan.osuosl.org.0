Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00548405C59
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 19:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9915183E79;
	Thu,  9 Sep 2021 17:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OUBA4QC_ysL4; Thu,  9 Sep 2021 17:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8F2D83B2B;
	Thu,  9 Sep 2021 17:49:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05B951BF867
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 17:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E677F40154
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 17:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e4ouOH5YK9eD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 17:49:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D891440116
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 17:49:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="208089665"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="208089665"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 10:49:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="431202957"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.56])
 by orsmga006.jf.intel.com with ESMTP; 09 Sep 2021 10:49:07 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, michael.edri@intel.com,
 nechamax.kraus@intel.com
Date: Thu,  9 Sep 2021 20:49:04 +0300
Message-Id: <20210909174904.3765604-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Update the device ID
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

Update device ID for the I226_K part.

Fixes: bfa5e98c9de4 ("igc: Add new device ID")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 772fd06e93ac..587db7483f25 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -22,9 +22,9 @@
 #define IGC_DEV_ID_I220_V			0x15F7
 #define IGC_DEV_ID_I225_K			0x3100
 #define IGC_DEV_ID_I225_K2			0x3101
+#define IGC_DEV_ID_I226_K			0x3102
 #define IGC_DEV_ID_I225_LMVP			0x5502
 #define IGC_DEV_ID_I226_LMVP			0x5503
-#define IGC_DEV_ID_I226_K			0x5504
 #define IGC_DEV_ID_I225_IT			0x0D9F
 #define IGC_DEV_ID_I226_LM			0x125B
 #define IGC_DEV_ID_I226_V			0x125C
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
