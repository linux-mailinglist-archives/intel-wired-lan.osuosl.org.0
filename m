Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D654217AF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Oct 2021 21:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E37BF83B45;
	Mon,  4 Oct 2021 19:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WIe1Dhmr9fV5; Mon,  4 Oct 2021 19:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF0CE83B3C;
	Mon,  4 Oct 2021 19:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF3F11BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 19:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB6A0405E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 19:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_JDWucvxL_2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Oct 2021 19:35:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD9D1405E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 19:35:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="225471111"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="225471111"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 12:35:18 -0700
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="477323623"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 12:35:18 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Oct 2021 05:15:25 -0700
Message-Id: <20211004121525.6384-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net] ice: Avoid crash from unnecessary
 IDA free
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

In the remove path, there is an attempt to free the aux_idx IDA whether
it was allocated or not.  This can potentially cause a crash when
unloading the driver on systems that do not initialize support for RDMA.
But, this free cannot be gated by the status bit for RDMA, since it is
allocated if the driver detects support for RDMA at probe time, but the
driver can enter into a state where RDMA is not supported after the IDA
has been allocated at probe time and this would lead to a memory leak.

Initialize aux_idx to an invalid value and check for a valid value when
unloading to determine if an IDA free is necessary.

Fixes: d25a0fc41c1f9 ("ice: Initialize RDMA support")
Reported-by: Jun Miao <jun.miao@windriver.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0d6c143f6653..94037881bfd8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4224,6 +4224,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	if (!pf)
 		return -ENOMEM;
 
+	/* initialize Auxiliary index to invalid value */
+	pf->aux_idx = -1;
+
 	/* set up for high or low DMA */
 	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
 	if (err)
@@ -4615,7 +4618,8 @@ static void ice_remove(struct pci_dev *pdev)
 
 	ice_aq_cancel_waiting_tasks(pf);
 	ice_unplug_aux_dev(pf);
-	ida_free(&ice_aux_ida, pf->aux_idx);
+	if (pf->aux_idx >= 0)
+		ida_free(&ice_aux_ida, pf->aux_idx);
 	set_bit(ICE_DOWN, pf->state);
 
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
