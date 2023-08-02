Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EDA76C535
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 08:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 044494012F;
	Wed,  2 Aug 2023 06:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 044494012F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690957233;
	bh=4nepMvXP/TrvKmcA2WBN/Fry8mMCb86r0BNewFDC2WQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WOnFxKFob5eD3F9pMoYLgcEwqFgIV5GXA185v/BpGq/AsGkXXVisv+YuOrtP+iTat
	 BFzzDFGS24EoIipbpBRILGyUD09tM+EM6I/bVyOsAgkXvoA/2PMhvdshTrvFcENzXn
	 PFlBJ21trbFCVNcdDMlh2kcYz4p7OW4yleB53Xke0bvLdr8VpA2F3RZ0C1Z/CK6Yh+
	 43hreFFD4bfZuF0V7f+hThBXBqVVLSyrmetsWCoSfvmiDKFweyfRuOZGXfUfFA152m
	 cO1WU1cOCiRJ7uGo5zgZq91oOxTQ2hDNqsSAIzLB0Sx7nbYw6YXkz4tQUaROQDrAkb
	 pSIu1i1caUBAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12bKhdV9B79r; Wed,  2 Aug 2023 06:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEEE7404D8;
	Wed,  2 Aug 2023 06:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEEE7404D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43CE91BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 214188148B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 214188148B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSwzGT3MAaTS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 06:19:56 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5727D80C1E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:19:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5727D80C1E
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="372224090"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="372224090"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 23:19:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="975561391"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="975561391"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by fmsmga006.fm.intel.com with ESMTP; 01 Aug 2023 23:19:49 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Aug 2023 09:19:46 +0300
Message-Id: <20230802061946.3489037-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690957196; x=1722493196;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FB6NpIzBUtCQHCs2O0qVlAeqY1x6x6y8dp1S8CVdTbk=;
 b=Aq0JZUu1wRnl4XaL7tlbnPfowJVV03ka3VVHvfltUbeziUGih8a93NT4
 33uoJUq9J9gCRQVylQvgN7qVtoxi2dD9Bay/yvQu2JV0DZBTkUpyvVgEF
 IV/WaI07Jy4SVU5Fwc/qgJ6heQM3RK9134wdEdOL3n8mYIEfqfYrt+wjl
 nMZ9nG/OJXON+5XgfoZB2NDP4pxk4BvX107024IzA4hA5un7J3Jyti9yr
 WJs8pGEZy46UaPglz4LRcmBPNwiAarHJicJp23FR09PH5ggK1eZ/dOkn9
 Eham6KMLC/U0FmKuPW8NxWxnfLjXZO/dMieT7LzGb0JobAEvPibUJQG+g
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Aq0JZUu1
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix the typo in the
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

The IGC_PTM_CTRL_SHRT_CYC defined the time between two consecutive PTM
requests. The bit resolution of this field is six bits. This patch comes
to correct the typo in the IGC_PTM_CTRL_SHRT_CYC macro.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
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
