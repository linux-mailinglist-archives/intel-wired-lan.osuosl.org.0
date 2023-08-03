Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 290EF76DE58
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 04:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11E3561330;
	Thu,  3 Aug 2023 02:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11E3561330
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691030343;
	bh=PeMVdmX5/0dqpeiR6OLkCf5Im/5ezHAj0TsIHLV1T8Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wdu/SQgbXG1Wjc0CGk+XEB6LebP+wbqVpuUhNl5V7SAFUjpGOO6UGYvCJC0So0Qqk
	 vqxalkUxuXzHFrvRMCTEVg6zZMHiTRFp6eRQqwsy4O1coQDf9BHMubNqwEsUv99cGu
	 QZnjaI8yU108q+uCDp9uXBzewS9Fcclsi1QY6pj3W9xMH9tZDKb/u99CA/dsMCzXR6
	 zhYHdORz1y495BGyAEeBQigf4FCq4Pt2bw2F0FKwHAtg+P0jeQgLXEZpNycLcoFtAQ
	 ptuEVN8Jga5RcponZIKT0PkFhubkVedec/X5KnIZWyFZGQIIte8jzksDkg3WcwBpeE
	 PHgdgbdqegmLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C4MRZBVGsfO0; Thu,  3 Aug 2023 02:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F05B36132B;
	Thu,  3 Aug 2023 02:39:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F05B36132B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DCE11BF420
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 02:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8275441883
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 02:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8275441883
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dc1-6tiYIJ4K for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 02:38:35 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12D88402F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 02:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12D88402F0
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="436067350"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="436067350"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 19:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="706383785"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="706383785"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Aug 2023 19:38:05 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Aug 2023 05:37:58 +0300
Message-Id: <20230803023758.3916368-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691030315; x=1722566315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HB5SaPCVYyLi/5S6jihc0w4W+GiGFQo+w8XQpny+PTg=;
 b=VdrCCerCOsctSNAnszVvSwuotWYUpfk938bumIfatjDUClGG46HOyPlQ
 ho1eGwySJAgp77yE9+X3jNkjxLe/L4aiV47FGQB103UTz1MmrpkAUkPmv
 /58VeU9K7oGjKZIThChM+TwBbvB600ypSwbvTRizebpxjm9PFfyUnSGZS
 lT/uRkS9yrdn8K6Rv8Hv6FdLVSQc5b3d7Zv5iyBH8vqkllIxm/DArn7zu
 viK6ihD90OAE/zepYRqI2PiqHa2OpkL2lFrTbIg6KFYcXUqsugOKFOEGg
 rp1Wx+zy6LpeR4J+iLmCOFKfkwYVs9VmlLSGOJm0qHmNDyEOkCZklpxIs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VdrCCerC
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: Fix the typo in the
 PTM Control macro
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

The IGC_PTM_CTRL_SHRT_CYC defines the time between two consecutive PTM
requests. The bit resolution of this field is six bits. That bit five was
missing in the mask. This patch comes to correct the typo in the
IGC_PTM_CTRL_SHRT_CYC macro.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
v1->v2: Fixed commit message
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index c3722f524ea7..0bac6eeb42c0 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -546,7 +546,7 @@
 #define IGC_PTM_CTRL_START_NOW	BIT(29) /* Start PTM Now */
 #define IGC_PTM_CTRL_EN		BIT(30) /* Enable PTM */
 #define IGC_PTM_CTRL_TRIG	BIT(31) /* PTM Cycle trigger */
-#define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x2f) << 2)
+#define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
 #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
 
 #define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
