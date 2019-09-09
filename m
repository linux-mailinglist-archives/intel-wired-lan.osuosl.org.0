Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D03B8ADD99
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Sep 2019 18:55:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2798085886;
	Mon,  9 Sep 2019 16:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNQro-UvPngQ; Mon,  9 Sep 2019 16:55:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4D83858B3;
	Mon,  9 Sep 2019 16:55:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B72751BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 16:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF3D285886
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 16:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZhQU8Cjka5m for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2019 16:55:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 314B885876
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 16:55:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="178406141"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga008.jf.intel.com with ESMTP; 09 Sep 2019 09:55:39 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Sep 2019 09:55:38 -0700
Message-Id: <20190909165538.8125-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] i40e: fix potential RX buffer
 starvation for AF_XDP
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
Cc: Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

When the RX rings are created they are also populated with buffers
so that packets can be received. Usually these are kernel buffers,
but for AF_XDP in zero-copy mode, these are user-space buffers and
in this case the application might not have sent down any buffers
to the driver at this point. And if no buffers are allocated at ring
creation time, no packets can be received and no interrupts will be
generated so the NAPI poll function that allocates buffers to the
rings will never get executed.

To rectify this, we kick the NAPI context of any queue with an
attached AF_XDP zero-copy socket in two places in the code. Once
after an XDP program has loaded and once after the umem is registered.
This take care of both cases: XDP program gets loaded first then AF_XDP
socket is created, and the reverse, AF_XDP socket is created first,
then XDP program is loaded.

Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 0373bc6c7e61..feb5bd54d840 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -157,6 +157,11 @@ static int i40e_xsk_umem_disable(struct i40e_vsi *vsi, u16 qid)
 		err = i40e_queue_pair_enable(vsi, qid);
 		if (err)
 			return err;
+
+		/* Kick start the NAPI context so that receiving will start */
+		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
+		if (err)
+			return err;
 	}
 
 	return 0;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
