Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1E729D20F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 21:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7BE4854C2;
	Wed, 28 Oct 2020 20:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvDeArx-eidB; Wed, 28 Oct 2020 20:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BEAD854DB;
	Wed, 28 Oct 2020 20:20:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A45E1BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 46F7720797
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5+0dz0vd4Pu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 8947A203BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
IronPort-SDR: pluVctZRPk24+COj8xdrBprG0udbh43TNUHq1JHMVlj+j7Z26Nho3iF6v7V9i+SsDfillvPyy8
 q4gb5v7mlYfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="147614192"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="147614192"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:55 -0700
IronPort-SDR: zMf354C+eAfycwwGkm+RvIsHNZ64kNHWi7G1HhOOItK3P1KmTzodcyFHQo+7LIbooN4Jh7ppLM
 gmZRnFT4AQtQ==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536374753"
Received: from zcolon-mobl.amr.corp.intel.com ([10.209.108.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:55 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Oct 2020 13:19:39 -0700
Message-Id: <20201028201943.93147-7-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028201943.93147-1-andre.guedes@intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 06/10] igc: Add set/clear large buffer
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
