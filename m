Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF473BF00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2019 23:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B9E1F2045E;
	Mon, 10 Jun 2019 21:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KA+K5mhiFgEd; Mon, 10 Jun 2019 21:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1367520484;
	Mon, 10 Jun 2019 21:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBD6F1BF57C
 for <intel-wired-lan@osuosl.org>; Mon, 10 Jun 2019 21:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B58FC86793
 for <intel-wired-lan@osuosl.org>; Mon, 10 Jun 2019 21:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z7EBm0cn+CNE for <intel-wired-lan@osuosl.org>;
 Mon, 10 Jun 2019 21:57:47 +0000 (UTC)
X-Greylist: delayed 00:20:37 by SQLgrey-1.7.6
Received: from mail-ot1-f73.google.com (mail-ot1-f73.google.com
 [209.85.210.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B1BB86576
 for <intel-wired-lan@osuosl.org>; Mon, 10 Jun 2019 21:57:47 +0000 (UTC)
Received: by mail-ot1-f73.google.com with SMTP id h12so5460837otn.18
 for <intel-wired-lan@osuosl.org>; Mon, 10 Jun 2019 14:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=kiYuefH1qbNEMBmcxuoH52kO/h83hLfKEn3/GLwyIuI=;
 b=YVZgVA6RB1R8D0sH4yu2cKnWBxKEN6wtHQVCSeg+qCHejGLGjaNl+HlHznOiV4iauD
 6zpo+xId9KCOmLcWIzbIB0MvJj7dtofKBcZicnhFCr58zg9s7f/TWQ5Bj9i3vzp+gGKF
 WrdOjP5qHB1aYJtawUUsIJdysSLCyiXKqiM+Fd89wAXSg4jfQaaEPNveR2ckSPLcGdDH
 PZw67AmouKw4C8LBLimUP7q17S75WOFwl19mtk5E7/RVHRCi38Cj+tdDpAKZarSugrJy
 Wi+ORuMrmv4PxenECR3m/VuIC/vkNPNKD05XImp4nKy6wPdNiuD1OiqSmTD03eeDpMz2
 w3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=kiYuefH1qbNEMBmcxuoH52kO/h83hLfKEn3/GLwyIuI=;
 b=Hx9mgAGlpR3IbYB1+ueM4Uoq+qOgZGAHMaHHoUZzt7F7BK7gogy3xmKWSBWGEIajJC
 C+PnvsSIZySHXucAFQIZbAj6ORWDP8Cpc5F5GKc9BSRovbvXW2WkmKJaJwJOgNd8VNLK
 dlAuYVctHRJrGZTxpFlj1HpLdHQaeOaUq0LzSVAdUhe2r3jtTe/hm0DVLusoPXqZO0Fg
 snSG4vi4mETEiyoE33Sbla2HEno6bQSPiLrs2RBVIpMxT0rquFrMf/sHGN+H/cPg6jun
 PA3ybpFczp91Tf9O/TjmEQJxiGsj0Ci5yuWlhvZROu4rdganac+Zl3dxR5EMlCTY+2GF
 fA+g==
X-Gm-Message-State: APjAAAUkd5RLB5BUeAho1MAAY+lF2rDSpBZCCyyBU90rrk2PGilUF8Uc
 bctDmgDLsURpC38GmR71EuBLUQ7d/c4wReHX
X-Google-Smtp-Source: APXvYqy6u8CYeLGvpBZimyp7uR78v7NoGs/h0blYwybQNp9XRXQ6RPrKYSD6Wyt7Q9Hjps7B1WOdSHQ5f8EPhGUx
X-Received: by 2002:a63:480a:: with SMTP id v10mr14263680pga.60.1560202219620; 
 Mon, 10 Jun 2019 14:30:19 -0700 (PDT)
Date: Mon, 10 Jun 2019 14:27:50 -0700
Message-Id: <20190610212750.173711-1-venkateshs@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
From: Venkatesh Srinivas <venkateshs@google.com>
To: jeffrey.t.kirsher@intel.com
Subject: [Intel-wired-lan] [PATCH] e1000: Use dma_wmb() instead of wmb()
 before doorbell writes
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
Cc: intel-wired-lan@osuosl.org, vsrinivas@ops101.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1000 writes to doorbells to post transmit descriptors and fill the
receive ring. After writing descriptors to memory but before
writing to doorbells, use dma_wmb() rather than wmb(). wmb() is more
heavyweight than necessary for a device to see descriptor writes.

On x86, this avoids SFENCEs before doorbell writes in both the
tx and rx paths. On ARM, this converts DSB ST -> DMB OSHST.

Tested: 82576EB / x86; QEMU (qemu emulates an 8257x)

Signed-off-by: Venkatesh Srinivas <venkateshs@google.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 551de8c2fef2..f703fa58458e 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3019,7 +3019,7 @@ static void e1000_tx_queue(struct e1000_adapter *adapter,
 	 * applicable for weak-ordered memory model archs,
 	 * such as IA-64).
 	 */
-	wmb();
+	dma_wmb();
 
 	tx_ring->next_to_use = i;
 }
@@ -4540,7 +4540,7 @@ e1000_alloc_jumbo_rx_buffers(struct e1000_adapter *adapter,
 		 * applicable for weak-ordered memory model archs,
 		 * such as IA-64).
 		 */
-		wmb();
+		dma_wmb();
 		writel(i, adapter->hw.hw_addr + rx_ring->rdt);
 	}
 }
@@ -4655,7 +4655,7 @@ static void e1000_alloc_rx_buffers(struct e1000_adapter *adapter,
 		 * applicable for weak-ordered memory model archs,
 		 * such as IA-64).
 		 */
-		wmb();
+		dma_wmb();
 		writel(i, hw->hw_addr + rx_ring->rdt);
 	}
 }
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
