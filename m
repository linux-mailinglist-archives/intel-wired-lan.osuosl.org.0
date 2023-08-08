Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AEB7737E9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 06:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E46881F26;
	Tue,  8 Aug 2023 04:24:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E46881F26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691468646;
	bh=kVQYVxG8SX60EV5BxCKMvSGxUX7zF2xV+MmzoskgopU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=o2BiAzaPjWjlvi5+DPryojxiFpOvkxqtzaEjIxZ914KEEjlcECtV4OReDXJS6SB4n
	 5N7ySa/gsX7jwHl4/tDv7WryK5ffOte1trCHocHYc3TDP+ouQVKfwa3P2VDVBqKEhz
	 HZqJ/MXGdJY43wUo1GZjqGtIoSnStAA9CbFw6JSAmMYND4CFPEflYeyFQePvjqne4H
	 iwkUyb0G+m3d1Bi2gUvOhpDH+HT6TdEd2Exkn27otgNr5KcBDbmhtri7hetGebSgI+
	 qdUjDM8YjTvtXXoZGjHe/aM4wfjL3/OKRtn9MLA9oVw7LC6UjmopRr+J8puy8Ja81Y
	 VT//LQyPVvb0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9zTjdKOblPz; Tue,  8 Aug 2023 04:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1267481442;
	Tue,  8 Aug 2023 04:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1267481442
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D39A1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 04:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18F57813D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 04:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18F57813D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCMpbW17ZcLd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 04:23:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B40E813A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 04:23:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B40E813A2
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="355654377"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="355654377"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 21:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="766226927"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="766226927"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by orsmga001.jf.intel.com with ESMTP; 07 Aug 2023 21:23:56 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  8 Aug 2023 07:23:52 +0300
Message-Id: <20230808042352.2930822-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691468638; x=1723004638;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=743XItrDA6DamgtL0kPNgnH3LXlqa+z7wckvbxJvOL0=;
 b=gu7vRQAPAY8qET5BTXWQcCGnLpYU+bYg5/fvf1ZhDg9wQxQQaaGpJ4x8
 jSbEDs8ckWib6wjwvH8pwfsNP3woK9VFVOWE8PLXQOCUUg4ruHgCLKRWl
 CLOBSbka8jX9S3xgenolvgDmDo2V403MBwo5PTbEBsLMHTlAF/Cdk0QrN
 A8QSLCLk3DLUi1ygHartuW/LyXDdX685b9JavRAKl7RIDkMrotx35MxvY
 7BMwIojA9DX9aT+RiOxMqi0zymqQi+SRPU3dAbPOIjAg/iY6cYkE62Izo
 96NrmV3lYeBfSWd96oAl9hcQoQ7J147Pln96vVRLydV0RgD8qGgac4avA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gu7vRQAP
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
index 44a507029946..2f780cc90883 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -546,7 +546,7 @@
 #define IGC_PTM_CTRL_START_NOW	BIT(29) /* Start PTM Now */
 #define IGC_PTM_CTRL_EN		BIT(30) /* Enable PTM */
 #define IGC_PTM_CTRL_TRIG	BIT(31) /* PTM Cycle trigger */
-#define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x2f) << 2)
+#define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
 #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
 
 #define IGC_PTM_SHORT_CYC_DEFAULT	10  /* Default Short/interrupted cycle interval */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
