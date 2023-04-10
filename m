Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E666DC3B0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Apr 2023 08:52:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CF7A4161B;
	Mon, 10 Apr 2023 06:52:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CF7A4161B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681109565;
	bh=V1bn5XG4UVrF+8ki8KNttXSyvXiOBdbwaY42DXiCRRY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PKSLZPikU348/JUv9kNCVRY1TF+4381Iy3grSvNm5s92aTaOrTlA2k/CiNhllv1/m
	 jrUFFyCB66c4Dt3MA0OuIpbc00ecLcWsc6vdSEeAdNUUOFDxiYfu9YvQ0Av8TM2gQq
	 LFRhA4Tofyzdpe3tUjw7syqZpPHeqqqIB+wm4kenZ07y0XAz+hr3+MdfS5zT8peapQ
	 gcDDLXoFLLh33IC+A+yOkg87fC57N4TGZlVztqHEIj5hC+4jEFXyyBfj0AzUzjr5Tu
	 o27n0qrQSUbTg4Ymm3TAhdUzChVCa0H91CgqQwL+t2RxqaWzq4W5DxnpB+ce6IZTxF
	 0/uxrru0PSquQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9FkqmglBIdGE; Mon, 10 Apr 2023 06:52:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0685C415BF;
	Mon, 10 Apr 2023 06:52:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0685C415BF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D7351C352D
 for <intel-wired-lan@osuosl.org>; Mon, 10 Apr 2023 06:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D86B04161B
 for <intel-wired-lan@osuosl.org>; Mon, 10 Apr 2023 06:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D86B04161B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Va_zxSzu_S-Z for <intel-wired-lan@osuosl.org>;
 Mon, 10 Apr 2023 06:52:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93F614160B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93F614160B
 for <intel-wired-lan@osuosl.org>; Mon, 10 Apr 2023 06:52:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="406127672"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="406127672"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2023 23:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="934262290"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="934262290"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga006.fm.intel.com with ESMTP; 09 Apr 2023 23:52:34 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 10 Apr 2023 14:51:40 +0800
Message-Id: <20230410065140.20824-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681109557; x=1712645557;
 h=from:to:cc:subject:date:message-id;
 bh=CKgQH6zgZpnH/u3W/Cu5lMgjsIdq0TyDwcOJ6ARS7cE=;
 b=aMlOCkHYqi9LjsvVdTaTn/mzs/bsd1XAs5Rxz59I05IdiXKTWFijMB9F
 OZte7idQmEcmqb88gFF1ks+q9/lU/LNZ/fdL/N7y8iXZKILvAKRlNoixR
 Csyeko1dqJfFDXjlYdVgsmRKtPnG/gRHHpEp0Z+jph3WzfXt25k/mSqPk
 I5DJ167OkwC5I9LgAVte3u/uSlSs3p0byzXZJE/Z4b4gRMHLJz0Wu2G8I
 jrFxWUgce3DaQhHtW6u/RjISy5PdV9RDLxnds5n0qPGXuASJEFiuSCUpS
 ftW/oC7Dx/IwQW6P8b4jgyNSCy82+KSz1RJ6prjI2gymyO3pDq6uF6FpN
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aMlOCkHY
Subject: [Intel-wired-lan] [PATCH] igc: Clean the TX buffer and TX
 descriptor ring
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
Cc: anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There could be a race condition during link down where interrupt
being generated and igc_clean_tx_irq() been called to perform the
TX completion. Properly clear the TX buffer and TX descriptor ring
to avoid those case.

Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba49728be919a..839f2c1a6f429 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -254,6 +254,13 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 	/* reset BQL for queue */
 	netdev_tx_reset_queue(txring_txq(tx_ring));
 
+	/* Zero out the buffer ring */
+	memset(tx_ring->tx_buffer_info, 0,
+	       sizeof(*tx_ring->tx_buffer_info) * tx_ring->count);
+
+	/* Zero out the descriptor ring */
+	memset(tx_ring->desc, 0, tx_ring->size);
+
 	/* reset next_to_use and next_to_clean */
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
