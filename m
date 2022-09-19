Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 234365BD3EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Sep 2022 19:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF69A607B0;
	Mon, 19 Sep 2022 17:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF69A607B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663609173;
	bh=KLuTBDwLtNUakpZ+x4bA2YT3Qq8YqSOsXoeg9DCD8EQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=K4LuIYZETfBFU9Yw7BUZvtpLKeMpYyFCKwbq66sIG7q0/KCqgk0/q+E373KVmkAyO
	 O2GSzHtFQXcUC/KVSAubD7JDck3D6lGTlBpChEJVQbPWnQNmD0nvGmDBV2gEDGkYX6
	 tc0xjIMnoxxHLbnNLDnqsaCIcL/QDSboobniZOuo8w0NlBop23CU4wd1WjhMZEUq+e
	 EkpHaMaQsHG6neT5dM+oGoiGRdnzVMu+ZKVbogKn81JhCSqjq69KoKiUChwCuumcQt
	 eIRWPGhxx78TKzwVIiJrd155BFR4NVwwWuXIHw6OhkLus19UpMDO0bSdAphUkp09EE
	 F7uHHQpvvI84w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJEmaCJDpPIl; Mon, 19 Sep 2022 17:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 996E560774;
	Mon, 19 Sep 2022 17:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 996E560774
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 383171BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 17:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12CC2400CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 17:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12CC2400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGfnBOvZtZ6j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 17:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CE26400AB
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CE26400AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 17:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="299459515"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="299459515"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 10:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="947319205"
Received: from avenkata-desk0.sc.intel.com ([172.25.112.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Sep 2022 10:39:26 -0700
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Sep 2022 10:40:10 -0700
Message-Id: <20220919174011.387975-1-anirudh.venkataramanan@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663609167; x=1695145167;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TayIh3Ph0hqpuehp6tb+IFqixiBBngfuSOlCzDfQzBk=;
 b=PITayLGUVUah0TCbvY+1UckWMN7ioZvbP5e8Gh9KrgOhoLXr0B5DA5R7
 pOccfOVxQS/BeG0aPJOLngF55vCQE1vAquWkla2RyNbUtHB2nwuCkKJmo
 2hkLIQ3PmyTs9q2NYsCjRHXTm252RcrLjj06JNdizpubf6zm6pWZmo6ps
 XVAXCeabZlCKFB+An/t39/aIXeTmxKrQf6/6hbz1rE7w276BfjsLwqQ9Y
 mSb0EJgs/tO/gW9Rw97/AdNXC6UeYUcjy4Ik/kkv6RCekkWy6fVPuGxUc
 PW/kLmq5qQ94v0Ldcb6jBmpXK1cDsjf+MbsTRzCTaWizwBseViC2+NASo
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PITayLGU
Subject: [Intel-wired-lan] [PATCH net-next 1/2] e1000: Remove unnecessary
 use of kmap_atomic()
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
