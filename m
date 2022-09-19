Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F705BD486
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Sep 2022 20:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9ABA3400EC;
	Mon, 19 Sep 2022 18:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9ABA3400EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663610955;
	bh=JVIWep77r4iBBHhEHKJlVBkCttfiliz3XvgppGA6x8k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vTzgNQBXnlrtT8K2Eqt6T5z+tWSGlgdbGuBtyDPOvpXrw/2OjShxpJ6K6ZEwGUTQJ
	 orbUBiK5g5rKo4ZaxkWxjXu2iEVbcQxwvuqjoZoqcLGWo2ueOC3uPmGqWS8cSmutzs
	 N5J3zPEAOvEEHmJB05Gz5ca7I1uNMqSYuoGq0Ej2ucQwoZwGavdTTCzL5rC/GdpThi
	 Gs5LF14svYAlt1Bg0NNSDeOFGL7xbJU/k4UK32H1BnFNEveSHkZTp68jW77fkbNmdv
	 z1+b/DzZ2wMQYxblsMm9JzKpLOQde7i8NFxb28HSFiFHHqNgEslmKfSNGUojaITigC
	 CBBGKdWParfig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VeSZ4jsxQ6pJ; Mon, 19 Sep 2022 18:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CFA7400C8;
	Mon, 19 Sep 2022 18:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CFA7400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF051BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 18:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAB05817D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 18:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAB05817D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eKnc2DtM_I-6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 18:09:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BECB4817A8
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BECB4817A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 18:09:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286522598"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="286522598"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 11:09:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="569750806"
Received: from avenkata-desk0.sc.intel.com ([172.25.112.42])
 by orsmga003.jf.intel.com with ESMTP; 19 Sep 2022 11:09:04 -0700
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Sep 2022 11:09:48 -0700
Message-Id: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663610945; x=1695146945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JxNk4b08YANfDrhSKuHWd3HwdfM9UAqDTfPhTfQi6d8=;
 b=YVuieY5WCxoEOzPjMDM9sCa4NcA5yayxw9RQWbdPJY7xjJ5ykL/DQpfd
 P9+mHc5W1pwjFH5GdTqP8RfRg64C8J0d39jAOmEWO1+TNJgY97VzwwGGe
 379mIyvy4lsb8EyPhb89jsNLsq/VsApMi0S1iT3dkMvhKlYaUfp49gZdM
 staaDOzomL5qh1vFsalDjxO42QC8G3OHsXlvK5TZBJQ+adjyTeFlGi8Ir
 o54AyLqpyFaywFJTzyAgAuY4oog4mWgnm+lbbyA0nXPVicMnDQDibjvGg
 gbDXrsic6nZYcdV7u2UBTJzPh4MgYVEzxtBIM2QPbBJ46niCUVuqO3umN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YVuieY5W
Subject: [Intel-wired-lan] [RESEND PATCH net-next 1/2] e1000: Remove
 unnecessary use of kmap_atomic()
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
Cc: "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

buffer_info->rxbuf.page accessed in e1000_clean_jumbo_rx_irq() is
allocated using GFP_ATOMIC. Pages allocated with GFP_ATOMIC can't come from
highmem and so there's no need to kmap() them. Just use page_address().

I don't have access to a 32-bit system so did some limited testing on
qemu (qemu-system-i386 -m 4096 -smp 4 -device e1000e) with a 32-bit
Debian 11.04 image.

Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Suggested-by: Ira Weiny <ira.weiny@intel.com>
Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 23299fc..93e57b1 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -4229,8 +4229,6 @@ static bool e1000_clean_jumbo_rx_irq(struct e1000_adapter *adapter,
 				 */
 				p = buffer_info->rxbuf.page;
 				if (length <= copybreak) {
-					u8 *vaddr;
-
 					if (likely(!(netdev->features & NETIF_F_RXFCS)))
 						length -= 4;
 					skb = e1000_alloc_rx_skb(adapter,
@@ -4238,10 +4236,9 @@ static bool e1000_clean_jumbo_rx_irq(struct e1000_adapter *adapter,
 					if (!skb)
 						break;
 
-					vaddr = kmap_atomic(p);
-					memcpy(skb_tail_pointer(skb), vaddr,
-					       length);
-					kunmap_atomic(vaddr);
+					memcpy(skb_tail_pointer(skb),
+					       page_address(p), length);
+
 					/* re-use the page, so don't erase
 					 * buffer_info->rxbuf.page
 					 */
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
