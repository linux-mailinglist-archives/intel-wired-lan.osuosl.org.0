Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A6236B228
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Apr 2021 13:14:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70AD482894;
	Mon, 26 Apr 2021 11:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jls4dOSQHune; Mon, 26 Apr 2021 11:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F747826EF;
	Mon, 26 Apr 2021 11:14:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 161991BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 11:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF655801CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 11:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFEDfP3ezG5x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Apr 2021 11:14:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BD21834D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 11:14:11 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id i129so2796845wma.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 04:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kdhNnKDdgoIaQXXShKVt9ASG9VusPLEivumubGkDQnE=;
 b=Kui77ir32sgq2Abir6W8MW0kVChFzbBaBBfE4OSzM9zzdoubx3HW50UGOpAp2igBhT
 wjyEJL6Q8k18drCca6DWr/sgIz9ezPs94OD+W15SJ8q+N68IRle8LqvRJ5KT+SnpA7ih
 wFBkEyp1CXy0zbYMoe9XGLmqmlcZMXZ3LkeGXsfIwH7SzY1A+L8K3RBbnq4M2HUWPXm9
 qSpKZ+UVlyIBNapVxE90gHSt++hbZKj5fmFfRDcgH1RYH7Hh7lcuCsJjRXZfwnEAuck8
 Cakqw2qsI/HXl0U1t5kAwCkmBxzzMGWmd2dwEMhigjVH3HcKpP8MCiAs0gXmywv7BX+y
 Fhnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kdhNnKDdgoIaQXXShKVt9ASG9VusPLEivumubGkDQnE=;
 b=p6q7jBebhgGfHGlyEQZt3Kf+gnYP5rezRfZk7dS+sV+X5mV8gz2tXz0BTNLkYKgM+u
 VdxbTnIfGHXOjt7IVsAmi5KgE8pgzdEDI8oH5qfSY7BFyQj/vbL2KLz3ig4qN23J+CAB
 omQ0YFZgRjy4xe+xLIGw569PwfbeU6vIJZG354yMuBkeAXcRkQ6RqZ0IOlVzDcAz7oxc
 IIZFdRvAY4BBcz/U7ezhK7acxMWt2x6JWfhyS2hLGKyxmUS5qX1YBnvScPvAtO/+80Mt
 0CGQOVmbjx+IIK/kA9lhvcuP/ZsvQTW/zdfUqz8oLkDe6JC7hc54gi+jlbYj9ncByTME
 UXbQ==
X-Gm-Message-State: AOAM532vKaUuF78lhCua6PgiTLcSmhzo2mPKgbJwTFeqaoW05fJHYKwm
 1xz/bq/+Qot2li9QhJIje94=
X-Google-Smtp-Source: ABdhPJxy0CXQ1Nd25BAJbHtaIFQ0eXR8IScaqEOODqifCTThs7SCPfP9AE7rwy2HKziSd61qMFgadg==
X-Received: by 2002:a7b:c3c6:: with SMTP id t6mr19619895wmj.42.1619435649657; 
 Mon, 26 Apr 2021 04:14:09 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id m184sm5118600wme.40.2021.04.26.04.14.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Apr 2021 04:14:09 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 26 Apr 2021 13:14:01 +0200
Message-Id: <20210426111401.28369-1-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net] i40e: fix broken XDP support
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
Cc: netdev@vger.kernel.org, Jesper Dangaard Brouer <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") broke
XDP support in the i40e driver. That commit was fixing a sparse error
in the code by introducing a new variable xdp_res instead of
overloading this into the skb pointer. The problem is that the code
later uses the skb pointer in if statements and these where not
extended to also test for the new xdp_res variable. Fix this by adding
the correct tests for xdp_res in these places.

The skb pointer was used to store the result of the XDP program by
overloading the results in the errror pointer
ERR_PTR(-result). Therefore, the allocation failure test that used to
only test for !skb now need to be extended to also consider !xdp_res.

i40e_cleanup_headers() had a check that based on the skb value being
an error pointer, i.e. a result from the XDP program != XDP_PASS, and
if so start to process a new packet immediately, instead of populating
skb fields and sending the skb to the stack. This check is not needed
anymore, since we have added an explicit test for xdp_res being set
and if so just do continue to pick the next packet from the NIC.

v1 -> v2:

* Improved commit message.

* Restored the xdp_res = 0 initialization to its original place
  outside the per-packet loop. The original reason to move it inside
  the loop was that it was only initialized inside the loop code if
  skb was not set. But as skb can only be non-null if we have packets
  consisting of multiple frames (skb is set for all frames except the
  last one in a packet) and when this is true XDP cannot be active, so
  this does not matter. xdp_res == 0 is the same as I40E_XDP_PASS
  which is the default action if XDP is not active and it is then true
  for every single packet in this case.

Fixes: 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c")
Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
Tested-by: Jesper Dangaard Brouer <brouer@redhat.com>
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 06b4271219b1..70b515049540 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1961,10 +1961,6 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
 				 union i40e_rx_desc *rx_desc)
 
 {
-	/* XDP packets use error pointer so abort at this point */
-	if (IS_ERR(skb))
-		return true;
-
 	/* ERR_MASK will only have valid bits if EOP set, and
 	 * what we are doing here is actually checking
 	 * I40E_RX_DESC_ERROR_RXE_SHIFT, since it is the zeroth bit in
@@ -2534,7 +2530,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 		}
 
 		/* exit if we failed to retrieve a buffer */
-		if (!skb) {
+		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_buff_failed++;
 			rx_buffer->pagecnt_bias++;
 			break;
@@ -2547,7 +2543,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 		if (i40e_is_non_eop(rx_ring, rx_desc))
 			continue;
 
-		if (i40e_cleanup_headers(rx_ring, skb, rx_desc)) {
+		if (xdp_res || i40e_cleanup_headers(rx_ring, skb, rx_desc)) {
 			skb = NULL;
 			continue;
 		}

base-commit: bbd6f0a948139970f4a615dff189d9a503681a39
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
