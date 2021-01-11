Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAD42F1DA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jan 2021 19:12:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A6E686FBF;
	Mon, 11 Jan 2021 18:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-T7ESDkzK3R; Mon, 11 Jan 2021 18:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 484BE870DC;
	Mon, 11 Jan 2021 18:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81EAB1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 18:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F2A8227AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 18:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-ZaQmG5VKyA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jan 2021 18:11:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A7DF204DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 18:11:41 +0000 (UTC)
IronPort-SDR: rYn1tQ+Ow98bSedyRUMnE2nAj3zlCSsDPJHYsYzwSxfA2tlx8+q6EtNUpagUWCL+g+WjXTbEs/
 pY35azI1JRgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="165589399"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="165589399"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 10:11:40 -0800
IronPort-SDR: Mohv5/ZA6vCRs2JGSYialOXSsXTIr3PGlOKUqmaKg4rqZ5SKt70ZpQJ7D1TE4tp58nRx1wKf9i
 ZR5uldA1Sa1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="498653463"
Received: from silpixa00400572.ir.intel.com ([10.237.213.34])
 by orsmga004.jf.intel.com with ESMTP; 11 Jan 2021 10:11:39 -0800
From: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Jan 2021 18:11:38 +0000
Message-Id: <20210111181138.49757-1-cristian.dumitrescu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 11 Jan 2021 18:12:27 +0000
Subject: [Intel-wired-lan] [PATCH net] i40e: fix potential NULL pointer
 dereferencing
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 cristian.dumitrescu@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, the function i40e_construct_skb_zc only frees the input xdp
buffer when the output skb is successfully built. On error, the
function i40e_clean_rx_irq_zc does not commit anything for the current
packet descriptor and simply exits the packet descriptor processing
loop, with the plan to restart the processing of this descriptor on
the next invocation. Therefore, on error the ring next-to-clean
pointer should not advance, the xdp i.e. *bi buffer should not be
freed and the current buffer info should not be invalidated by setting
*bi to NULL. Therefore, the *bi should only be set to NULL when the
function i40e_construct_skb_zc is successful, otherwise a NULL *bi
will be dereferenced when the work for the current descriptor is
eventually restarted.

Fixes: 3b4f0b66c2b3 ("i40e, xsk: Migrate to new MEM_TYPE_XSK_BUFF_POOL")
Signed-off-by: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 47eb9c584a12..492ce213208d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -348,12 +348,12 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		 * SBP is *not* set in PRT_SBPVSI (default not set).
 		 */
 		skb = i40e_construct_skb_zc(rx_ring, *bi);
-		*bi = NULL;
 		if (!skb) {
 			rx_ring->rx_stats.alloc_buff_failed++;
 			break;
 		}
 
+		*bi = NULL;
 		cleaned_count++;
 		i40e_inc_ntc(rx_ring);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
