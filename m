Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8D6442830
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 08:20:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8019440278;
	Tue,  2 Nov 2021 07:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5aTG07OaUZyX; Tue,  2 Nov 2021 07:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D8EC401F6;
	Tue,  2 Nov 2021 07:20:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA3141BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 07:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A478D401F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 07:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nj6o2X9mMT7v for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 07:20:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E294B400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 07:20:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211253106"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="211253106"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 00:20:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="638100786"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.56])
 by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2021 00:20:10 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Nov 2021 09:20:06 +0200
Message-Id: <20211102072006.2757474-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix typo in i225 LTR functions
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The LTR maximum value was incorrectly written using the scale from
the LTR minimum value. This would cause incorrect values to be sent,
in cases where the initial calculation lead to different min/max scales.

Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_i225.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index b2ef9fde97b3..b6807e16eea9 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -636,7 +636,7 @@ s32 igc_set_ltr_i225(struct igc_hw *hw, bool link)
 		ltrv = rd32(IGC_LTRMAXV);
 		if (ltr_max != (ltrv & IGC_LTRMAXV_LTRV_MASK)) {
 			ltrv = IGC_LTRMAXV_LSNP_REQ | ltr_max |
-			       (scale_min << IGC_LTRMAXV_SCALE_SHIFT);
+			       (scale_max << IGC_LTRMAXV_SCALE_SHIFT);
 			wr32(IGC_LTRMAXV, ltrv);
 		}
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
