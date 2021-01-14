Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C762F64DC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 16:39:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A554E873E6;
	Thu, 14 Jan 2021 15:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZL6ozBZaAjKd; Thu, 14 Jan 2021 15:39:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8EC90873DA;
	Thu, 14 Jan 2021 15:39:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2EEB1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D77C486A88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gm7r6Rf0SaZ8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 14:33:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5DE5F86A72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:25 +0000 (UTC)
IronPort-SDR: gzY2NxDnBUhlsn+ztXz1sCNo8Js0a5tyqu6S/zBbTVMW34ke3TD28pEp4BzDqXraeP21GzA066
 4MQoU55UEtTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="263165437"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="263165437"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 06:33:25 -0800
IronPort-SDR: XZ9ixKMwcx//ZdclZN44goAOdYUsXXNgvPFnMNJnYhsnbZClGVKk6pQaFdlDU/VWGgFwx61c6e
 bZ4dYVjs39EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="353919548"
Received: from silpixa00400572.ir.intel.com ([10.237.213.34])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jan 2021 06:33:23 -0800
From: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 14:33:16 +0000
Message-Id: <20210114143318.2171-3-cristian.dumitrescu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 Jan 2021 15:39:23 +0000
Subject: [Intel-wired-lan] [PATCH net-next 2/4] i40e: remove unnecessary
 cleaned_count updates
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
Cc: netdev@vger.kernel.org, edwin.verplanke@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, cristian.dumitrescu@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For performance reasons, remove the redundant updates of the cleaned_count
variable, as its value can be computed based on the ring next-to-clean
variable, which is consistently udpated.

Signed-off-by: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index dc11ecd1a55c..453ef30d9498 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -300,7 +300,6 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			bi = i40e_rx_bi(rx_ring, next_to_clean);
 			xsk_buff_free(*bi);
 			*bi = NULL;
-			cleaned_count++;
 			next_to_clean = (next_to_clean + 1) & count_mask;
 			continue;
 		}
@@ -325,7 +324,6 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			total_rx_bytes += size;
 			total_rx_packets++;
 
-			cleaned_count++;
 			next_to_clean = (next_to_clean + 1) & count_mask;
 			continue;
 		}
@@ -344,7 +342,6 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			break;
 		}
 
-		cleaned_count++;
 		next_to_clean = (next_to_clean + 1) & count_mask;
 
 		if (eth_skb_pad(skb))
@@ -358,6 +355,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	}
 
 	rx_ring->next_to_clean = next_to_clean;
+	cleaned_count = (next_to_clean - rx_ring->next_to_use - 1) & count_mask;
 
 	if (cleaned_count >= I40E_RX_BUFFER_WRITE)
 		failure = !i40e_alloc_rx_buffers_zc(rx_ring, cleaned_count);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
