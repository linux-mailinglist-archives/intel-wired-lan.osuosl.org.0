Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B533634E2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Apr 2021 13:41:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4675E606F3;
	Sun, 18 Apr 2021 11:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DiMydN24PkHM; Sun, 18 Apr 2021 11:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F6F5606B3;
	Sun, 18 Apr 2021 11:41:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D911A1BF419
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Apr 2021 11:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6C54606EB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Apr 2021 11:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jk1g9c_Jo8v3 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Apr 2021 11:41:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C79DA606B3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Apr 2021 11:41:02 +0000 (UTC)
IronPort-SDR: LhNoCWtoGA4NlzlehdoHy+ZIa2Xqzn+01GAiKdnYp4omXFSaQ62W2mB16tSt5IWfU1kcmRczc7
 5o81ulPEl+hw==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="195327327"
X-IronPort-AV: E=Sophos;i="5.82,231,1613462400"; d="scan'208";a="195327327"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2021 04:41:01 -0700
IronPort-SDR: KwEqNGrqHH+VC3OAF4SN6ITkogSnhAc/pcylap3bXB2JoKtwWf8YLpS3kjjt4wi7trCLnd2i/A
 4M8cKK2gYLiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,231,1613462400"; d="scan'208";a="451882321"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Apr 2021 04:41:00 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	dvorax.fuxbrumer@linux.intel.com
Date: Sun, 18 Apr 2021 14:40:56 +0300
Message-Id: <20210418114056.832012-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused asymmetric
 pause bit from igc defines
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

The CR_1000T_ASYM_PAUSE bit from igc defines is not used so remove it.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 9d80f2550329..7cc48321bb70 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -128,7 +128,6 @@
 #define NWAY_LPAR_ASM_DIR	0x0800 /* LP Asymmetric Pause Direction bit */
 
 /* 1000BASE-T Control Register */
-#define CR_1000T_ASYM_PAUSE	0x0080 /* Advertise asymmetric pause bit */
 #define CR_1000T_HD_CAPS	0x0100 /* Advertise 1000T HD capability */
 #define CR_1000T_FD_CAPS	0x0200 /* Advertise 1000T FD capability  */
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
