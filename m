Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8194E8915
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Mar 2022 19:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9701860C33;
	Sun, 27 Mar 2022 17:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id arX19rLPVrMa; Sun, 27 Mar 2022 17:14:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D85060B03;
	Sun, 27 Mar 2022 17:14:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3277B1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 17:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C77981A47
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 17:14:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ir72WGmx2ivw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Mar 2022 17:14:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BC10819B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 17:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648401253; x=1679937253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9wmCtV9mT3u7S0cd+Al+pICQaK2GcG/+LozsVv21yK0=;
 b=NLHJyvUUOC0NEjqgTv9stMmueg8nKS/9z386rIqoL7DV7G/LusvJujML
 OI99zWE0dQr0f8KGiZRuFcq5+N+3V6qsllW5i6tvZwS0rdhkX7AXuhwRq
 Xf77HdsgkQx2GACbPeTWi5mZRHlxLPngNadtVoZeAaiOzULsrdZ/qw6aY
 seciwK5dpZCjuT0dwmm9Q4yC6IU90+fpr/jmxTiplnYkdPvgG53LYFj2g
 mc8w+L36HhIgb3yVxToJrDLqiDTNpna+N5xhpWR5wGj7dRZzjq4FrT+GW
 vaxAMTrjIWQX7HMpyj6AxNfH4fNYNZf2a+1WDXSRmHolD03MozwRuQLF+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="322053852"
X-IronPort-AV: E=Sophos;i="5.90,215,1643702400"; d="scan'208";a="322053852"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2022 10:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,215,1643702400"; d="scan'208";a="502274279"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga003.jf.intel.com with ESMTP; 27 Mar 2022 10:14:11 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 27 Mar 2022 20:14:07 +0300
Message-Id: <20220327171407.3657540-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Fix possible overflow in
 LTR decoding
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
Cc: James Hutchinson <jahutchinson99@googlemail.com>,
 Thorsten Leemhuis <regressions@leemhuis.info>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When we decode the latency and the max_latency u16 value does not fill
the required size and could lead to the wrong LTR representation.
Replace the u16 type with the u32 type and allow corrected LTR
representation.

Fixes: 44a13a5d99c7 ("e1000e: Fix the max snoop/no-snoop latency for 10M")
Reported-by: James Hutchinson <jahutchinson99@googlemail.com>
Reported-by: Thorsten Leemhuis <regressions@leemhuis.info>
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index d60e2016d03c..e6c8e6d5234f 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1009,8 +1009,8 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
 {
 	u32 reg = link << (E1000_LTRV_REQ_SHIFT + E1000_LTRV_NOSNOOP_SHIFT) |
 	    link << E1000_LTRV_REQ_SHIFT | E1000_LTRV_SEND;
-	u16 max_ltr_enc_d = 0;	/* maximum LTR decoded by platform */
-	u16 lat_enc_d = 0;	/* latency decoded */
+	u32 max_ltr_enc_d = 0;	/* maximum LTR decoded by platform */
+	u32 lat_enc_d = 0;	/* latency decoded */
 	u16 lat_enc = 0;	/* latency encoded */
 
 	if (link) {
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
