Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BC764B927
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 17:01:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB61E60F8B;
	Tue, 13 Dec 2022 16:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB61E60F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670947304;
	bh=P3HXAd2OEfV8OOIpGjPtSk4uZ2k4d0g/2FO4hLmjtZI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VPvrsya+dXLjroLqHWg5Lk7gxHnAkefu56NOGqfAECE3w9l+9WOm09YY0Xujh+cIc
	 PgDDSolEZL1D0k3AIOT4WY5eCIi7CzOfuXnVDzz5c0tVyBKhkxeFRCLyhGLUlmxeHi
	 EQ25m4+ln5QcadBO1qy6XhVosDgKTiVm69SGJkNiOxMCjFBm/rZ13RN6Gs9KvjAGfN
	 Zm/VhA8A34/ZyVsXjKD+u+WgGuOtUsgyFZOCUByplgO5uoPxUe2yn23ugIF2fIMQBK
	 NWMiNn5no+TZUMm2/tJ/0Epw/pctqvhWLtdy89CMQDt0WYpUNJjrk4tIpgt5Lr4Wd0
	 0UOcUVz5YBdwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVaQsm1sXIvC; Tue, 13 Dec 2022 16:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1640607C7;
	Tue, 13 Dec 2022 16:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1640607C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BD331BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76192416C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76192416C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WAHBfyy53c-D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 11:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63078416C3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63078416C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="305744393"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="305744393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679263042"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679263042"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:18 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: tirtha@gmail.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Dec 2022 16:20:21 +0530
Message-Id: <20221213105023.196409-4-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
References: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Dec 2022 16:01:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670929461; x=1702465461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qF6yS4zMzR+LCrE83ZBnpHGSSoW4ONErsaC5DvvUk3Q=;
 b=lCzLa3kpSr+Cp3FsXnrwN0tkj1MyWrrIU++wl1NUVwmZSHSq4or3DyK8
 0PnqgD+M3c6TJlAgyzJC4w4eBdlQi4w/rXFLZCPL//2OKRkIMhgo9N4IN
 1+tT7d7HILVS3SuHtzCvDPHjzUR5QTLRFM8RvsW9Du9lhg7jHEvGH689C
 D0bVUxprZZl9xOG/QO09xMRGTxwjAt/49+5wWoELiiDbIcAW5q2sZfL4r
 0yefGa2PPv9ca+ki8DmTzg5i7Cu0n7CwGQONV/kf7NkcdNXIjOIdix/FL
 7751JG4XEtzD6c6iknT+84IxPGxxOjtpD/a7aiY67ryg6X1rmUUmvKb18
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lCzLa3kp
Subject: [Intel-wired-lan] [PATCH intel-next 3/5] i40e: introduce
 next_to_process to i40e_ring
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a new field called next_to_process in the i40e_ring that is
advanced for every buffer and change the semantics of next_to_clean to
point to the first buffer of a packet. Driver will use next_to_process
in the same way next_to_clean was used previously.

For the non multi-buffer case, next_to_process and next_to_clean will
always be the same since each packet consists of a single buffer.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 15 ++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |  4 ++++
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index c6296cf08294..e01bcc91a196 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -13,6 +13,7 @@
 
 #define I40E_TXD_CMD (I40E_TX_DESC_CMD_EOP | I40E_TX_DESC_CMD_RS)
 #define I40E_IDX_NEXT(n, max) { if (++(n) > (max)) n = 0; }
+#define I40E_INC_NEXT(p, c, max) do { I40E_IDX_NEXT(p, max); c = p; } while (0)
 /**
  * i40e_fdir - Generate a Flow Director descriptor based on fdata
  * @tx_ring: Tx ring to send buffer on
@@ -1526,6 +1527,7 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
+	rx_ring->next_to_process = 0;
 }
 
 /**
@@ -1576,6 +1578,7 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
 	}
 
 	rx_ring->next_to_alloc = 0;
+	rx_ring->next_to_process = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 
@@ -2425,6 +2428,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
 	unsigned int offset = rx_ring->rx_offset;
 	struct sk_buff *skb = rx_ring->skb;
+	u16 ntp = rx_ring->next_to_process;
 	u16 ntc = rx_ring->next_to_clean;
 	u16 rmax = rx_ring->count - 1;
 	unsigned int xdp_xmit = 0;
@@ -2453,7 +2457,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			cleaned_count = 0;
 		}
 
-		rx_desc = I40E_RX_DESC(rx_ring, ntc);
+		rx_desc = I40E_RX_DESC(rx_ring, ntp);
 
 		/* status_error_len will always be zero for unused descriptors
 		 * because it's cleared in cleanup, and overlaps with hdr_addr
@@ -2472,8 +2476,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			i40e_clean_programming_status(rx_ring,
 						      rx_desc->raw.qword[0],
 						      qword);
-			rx_buffer = i40e_rx_bi(rx_ring, ntc);
-			I40E_IDX_NEXT(ntc, rmax);
+			rx_buffer = i40e_rx_bi(rx_ring, ntp);
+			I40E_INC_NEXT(ntp, ntc, rmax);
 			i40e_reuse_rx_page(rx_ring, rx_buffer);
 			cleaned_count++;
 			continue;
@@ -2485,7 +2489,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			break;
 
 		i40e_trace(clean_rx_irq, rx_ring, rx_desc, skb);
-		rx_buffer = i40e_get_rx_buffer(rx_ring, size, ntc);
+		rx_buffer = i40e_get_rx_buffer(rx_ring, size, ntp);
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
@@ -2529,7 +2533,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		i40e_put_rx_buffer(rx_ring, rx_buffer);
 		cleaned_count++;
 
-		I40E_IDX_NEXT(ntc, rmax);
+		I40E_INC_NEXT(ntp, ntc, rmax);
 		if (i40e_is_non_eop(rx_ring, rx_desc))
 			continue;
 
@@ -2551,6 +2555,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		/* update budget accounting */
 		total_rx_packets++;
 	}
+	rx_ring->next_to_process = ntp;
 	rx_ring->next_to_clean = ntc;
 
 	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index eec4a4a99b9c..c1b5013f5c9c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -337,6 +337,10 @@ struct i40e_ring {
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 __iomem *tail;
 
+	u16 next_to_process;		/* Next descriptor to be processed; for MB packet
+					 * next_to_clean will be updated only after all
+					 * buffers have been processed.
+					 */
 	/* high bit set means dynamic, use accessor routines to read/write.
 	 * hardware only supports 2us resolution for the ITR registers.
 	 * these values always store the USER setting, and must be converted
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
