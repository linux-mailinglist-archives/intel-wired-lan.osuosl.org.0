Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D10F2A5D00
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 04:12:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 124C1203FC;
	Wed,  4 Nov 2020 03:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pP6zgyaWpLqw; Wed,  4 Nov 2020 03:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B75D3214FD;
	Wed,  4 Nov 2020 03:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B5381BF990
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 085B08619E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0wsaTlE4LfD3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8F48286207
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
IronPort-SDR: 50CxJXSan1Pg1kDoFWYK4+QiGoNRnp6UORgTY6LZLgueEU/ABaZyo55xQKjI+xR7S9Tryt2ntp
 lBsTUGxoU3Rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="187017150"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="187017150"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
IronPort-SDR: cfW/4Kr24+q3jeUCicJrBge0Ikt5FNehz4CY/ENRKBa131h1eb+sBUTvwzZQBDRBnJAp9yFrVQ
 o88e+pz4cY/A==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="471042951"
Received: from abkumar-dell.amr.corp.intel.com ([10.212.180.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Nov 2020 19:12:07 -0800
Message-Id: <20201104031210.27772-7-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104031210.27772-1-andre.guedes@intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 6/9] igc: Add set/clear large buffer
 helpers
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

While commit 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
introduced code to handle larger packet buffers, it missed the
set/clear helpers which enable/disable that feature. This patch
introduces the missing helpers which will be use in the next
patch.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index ae91d51073ca..e72f1fc772aa 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -509,6 +509,10 @@ enum igc_ring_flags_t {
 
 #define ring_uses_large_buffer(ring) \
 	test_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
+#define set_ring_uses_large_buffer(ring) \
+	set_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
+#define clear_ring_uses_large_buffer(ring) \
+	clear_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
 
 #define ring_uses_build_skb(ring) \
 	test_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
