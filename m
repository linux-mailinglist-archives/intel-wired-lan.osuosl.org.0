Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E525C203086
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 09:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 914B186AE9;
	Mon, 22 Jun 2020 07:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMlQHu5MvNTm; Mon, 22 Jun 2020 07:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D084786A90;
	Mon, 22 Jun 2020 07:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CCCF1BF314
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 07:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 696C587F94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 07:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FEujGSwvkG6h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 07:20:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 286F187E76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 07:20:35 +0000 (UTC)
IronPort-SDR: iHvbMRCHOvBgdRxHBgLVTzd2ovZBlFVY5TT+JGtYqIE1BoLr0FsfiR8U0k8ao0TCqykVT7C7CD
 sOYVu3L6/2wg==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="132113689"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="132113689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 00:20:34 -0700
IronPort-SDR: 81k/YUqa1CAbI2qWBtD+TccM+u5KAR+regZhb8l4E7WTQy37ZoJl0cHbMtHrjWFI0KjxerAPM6
 Z7WcdTbn3A0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="262891270"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jun 2020 00:20:31 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jun 2020 10:20:30 +0300
Message-Id: <20200622072030.31239-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 2/2] igc: Add Receive Descriptor
 Minimum Threshould Count
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This register counts the number of events where the number of
descriptors in one of the Rx queues was lower than the threshold
defined for this queue.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 2d9ca3e1bdde..3a618e69514e 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -308,6 +308,7 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_TLPIC);
 	rd32(IGC_RLPIC);
 	rd32(IGC_HGPTC);
+	rd32(IGC_RXDMTC);
 	rd32(IGC_HGORCL);
 	rd32(IGC_HGORCH);
 	rd32(IGC_HGOTCL);
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
