Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DB931730B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 23:15:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44F3F86B70;
	Wed, 10 Feb 2021 22:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AxZB9jfYu1c5; Wed, 10 Feb 2021 22:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D585686C93;
	Wed, 10 Feb 2021 22:15:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 731361BF3D7
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C34E8751D
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8DUbQ6uOMA4O for <intel-wired-lan@osuosl.org>;
 Wed, 10 Feb 2021 22:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C9AE87528
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:15:02 +0000 (UTC)
IronPort-SDR: P/S9d2hLgAKmYm3kTdg0B1eg4Lpeu/+EdVpZ/vyNE1cqXHU8C+NuuHAlOlmu2MFzIM+HVxKF7Z
 iZm6/D8LTHkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169835592"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169835592"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 14:15:01 -0800
IronPort-SDR: nnmA69WRZ5kayitH8znuWjwgf5/XHgt/f27UZvlzr81t7L6slzBvcU8gJmVHWsYopSpmnzjcj4
 ywUOEYFfRoWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="588110699"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by fmsmga005.fm.intel.com with ESMTP; 10 Feb 2021 14:15:01 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 10 Feb 2021 13:58:45 -0800
Message-Id: <20210210215848.24514-7-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210210215848.24514-1-vedang.patel@intel.com>
References: <20210210215848.24514-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 6/9] igc: Add set/clear large
 buffer helpers
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
Cc: jithu.joseph@intel.com, Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

While commit 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
introduced code to handle larger packet buffers, it missed the
set/clear helpers which enable/disable that feature. Introduce
the missing helpers which will be use in the next patch.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 72544b5e747e..bf2ebec2504a 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -504,6 +504,10 @@ enum igc_ring_flags_t {
 
 #define ring_uses_large_buffer(ring) \
 	test_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
+#define set_ring_uses_large_buffer(ring) \
+	set_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
+#define clear_ring_uses_large_buffer(ring) \
+	clear_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
 
 #define ring_uses_build_skb(ring) \
 	test_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
