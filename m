Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 083EB756A3B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 19:25:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6143060BC5;
	Mon, 17 Jul 2023 17:25:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6143060BC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689614753;
	bh=zKY2yFsNu0FcoHtRa43rBibVPvD9vfCUr/P7HeCCePs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=K7auFHy/csujIeqT4bnurj5iWkNxhqYBXwOIYjI5TPnpr6osAUyEV4P/znthBhCZj
	 fTdt1mEmFreppd13TVUtk/ODH2sxmXC8seC9hIw8y/9xfBBxMWcS2uew5BH4W5B/um
	 LhAxEnS4oaIFyKdsaQW6SDqUS8gvw55cpFcqJHC7P8x+quLtJE9Eia7lI+oqId+bbS
	 Ik32g/L4qisU+3/xpoEYM6OwyiQm2GeCY74MGpjt2JVIeWPUZ6axvM/cOTDlBkFLp+
	 mpkpEJu4+xUsWzHCP2sghdSm+PsnP2dK7+l3AYFi8Q2+l4pKmg4TXHY32FVyOV+wzF
	 /eMXiMEL286pA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0H-Hs-1J8Kkv; Mon, 17 Jul 2023 17:25:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FDAC605AE;
	Mon, 17 Jul 2023 17:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FDAC605AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F14881BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 17:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7AB340890
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 17:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7AB340890
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnLw7wK_kLWj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 17:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C7A94088D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C7A94088D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 17:25:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="429751995"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="429751995"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 10:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="1053964747"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="1053964747"
Received: from ccdrpls178.iil.intel.com ([143.185.160.206])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jul 2023 10:25:40 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jul 2023 20:19:27 +0300
Message-Id: <20230717171927.78516-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689614743; x=1721150743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qhxeABDlLdiU/YHSPDBEl14JunV1EbgLY4i1toM7i9k=;
 b=EbyYqXOQwPJ6Dp5ouLketYpI61cc8ykUKS9KYsYFJ2wXEmeeYDCt2Ss9
 tdBb3izhsfikyoFb71ybJeqpwo70ovFGAEqLbe/6mX0TMBXxlBCSqKGrf
 hXR67kBcnHOwestViuR1akb77ET/cgdmswZaiK69tzihN9UaJZ0jb03Mc
 qHfnzBEozt8qP3oy69/7OBhg9SW98tymd7Gsthq544BfTVKOiJ4jBMKPl
 B2AdjGfmgoti7kLEJj/Y2//J+7HrR4bTxC/on1w74v3Hoq/4N4Px3Jdpr
 ZV0oyhj6AYnnqSQbRSu1j4ZSQOH6KS7GEoHRlLNz2NaVhxOYTC/sRkohv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EbyYqXOQ
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Correct the short
 interval between PTM requests.
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

With the 10us interval, we were seeing PTM transactions taking around 12us.
With the 1us interval, PTM dialogs took around 2us. Checked with the PCIe
sniffer.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 44a507029946..c3722f524ea7 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -549,7 +549,7 @@
 #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x2f) << 2)
 #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
 
-#define IGC_PTM_SHORT_CYC_DEFAULT	10  /* Default Short/interrupted cycle interval */
+#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
 #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
 #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
