Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8838B474EDB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 01:06:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3683860D60;
	Wed, 15 Dec 2021 00:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1fMIBSxqdHJk; Wed, 15 Dec 2021 00:06:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73CFF60C14;
	Wed, 15 Dec 2021 00:06:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1351BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5672740179
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F1dXpFdWIsuT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 22:43:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52E8D401DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:12 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 nh10-20020a17090b364a00b001a69adad5ebso17367908pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cO5mUymTgAgFJWnKGqoJQUmz67qzdX6pyvAot2iSw1I=;
 b=EhM1rtoDK4P8frf69NguthySI2duHxlT78rGCyVW2af6rlXn7pt8yfok/PPNTS0Kpd
 7Al2deNdYeMTq5bsXIMbMsOUm9gq8xGyC/GpPa2/tj4xWg2mcDL2dhWo3h4PQRO/0Avz
 KWE7yO/y4T5QXA2Q3xZeEMnVNXoI5aiGshWgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cO5mUymTgAgFJWnKGqoJQUmz67qzdX6pyvAot2iSw1I=;
 b=k8g3LiTgkaHvrkTCwW5jqlMbRSe62rYvMQtyrtBgo4QBMpn4rdJNid137W0Gq8g3a7
 SLpgZb0X/W4urAQVd2/RWRD9OSBcfYc8ZetsHU0fAU+HUMZej8emcg/KoGvjXgjkGxLv
 IOd6cB0eKnvJHiDXWOnhuFTX3EUHAvISlUXzOo5rll2g3FI30cA9jssspcQyLAeP3rkG
 ZD4iqg231N8XjjgAi35TAlAOgY6enJKxHmSbN/rSiDM+ngBgOrMfcHjU9JvvDl6U9toC
 12oZBPScrw0mhHt1nFFw4BCIny7uIgI0CQhQV844k6K8O3br7wEqc/Nqb1HmWemMw7da
 9C7A==
X-Gm-Message-State: AOAM532GRdTn9zQn1PkMXlkaSFT794TMJagmK7uud1LchA+q2Pe1VQnu
 yYbhzmnjyzuVvW1WvvDaezXeeQX25B5M7JhYKTI6kCm9y1dmxgV+MZm2r/5K+b5qe+zfjN6FFl/
 OpW+3/0wE56JQJbQqidX/HYpcR6NZJ8PBE/Jy9GGJkVY04p3TrvGLRDOcUjH5gxq5Po8gmFm1Nf
 4mK4s4g1fV
X-Google-Smtp-Source: ABdhPJwON7W5NUdjfKqny/gy085ggSbv1jnp0KwjsOmVcKUbFLUwoENij9TDxpAVPpcLX8UBbaRAgw==
X-Received: by 2002:a17:90b:1c86:: with SMTP id
 oo6mr8511896pjb.165.1639521791161; 
 Tue, 14 Dec 2021 14:43:11 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id mg12sm3448012pjb.10.2021.12.14.14.43.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 14:43:10 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 14:42:09 -0800
Message-Id: <1639521730-57226-5-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
References: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Wed, 15 Dec 2021 00:06:03 +0000
Subject: [Intel-wired-lan] [net-queue PATCH 4/5] i40e: Add a stat for
 tracking pages waived.
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In some cases, pages can not be reused because they are not associated with
the correct NUMA zone. Knowing how often pages are waived helps users to
understand the interaction between the driver's memory usage and their
system.

Pass rx_stats through to i40e_can_reuse_rx_page to allow tracking when
pages are waived.

The page waive count is accessible via ethtool.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         |  1 +
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c    |  5 ++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 13 ++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    |  1 +
 5 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index ab73de2..3774e7b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -855,6 +855,7 @@ struct i40e_vsi {
 	u64 rx_page_failed;
 	u64 rx_page_reuse;
 	u64 rx_page_alloc;
+	u64 rx_page_waive;
 
 	/* These are containers of ring pointers, allocated at run-time */
 	struct i40e_ring **rx_rings;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 22f746b..224fe6d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -297,6 +297,7 @@ static const struct i40e_stats i40e_gstrings_misc_stats[] = {
 	I40E_VSI_STAT("rx_pg_alloc_fail", rx_page_failed),
 	I40E_VSI_STAT("rx_cache_reuse", rx_page_reuse),
 	I40E_VSI_STAT("rx_cache_alloc", rx_page_alloc),
+	I40E_VSI_STAT("rx_cache_waive", rx_page_waive),
 };
 
 /* These PF_STATs might look like duplicates of some NETDEV_STATs,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 33c3f04..ded7aa9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -812,7 +812,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	struct i40e_eth_stats *es;     /* device's eth stats */
 	u64 tx_restart, tx_busy;
 	struct i40e_ring *p;
-	u64 rx_page, rx_buf, rx_reuse, rx_alloc;
+	u64 rx_page, rx_buf, rx_reuse, rx_alloc, rx_waive;
 	u64 bytes, packets;
 	unsigned int start;
 	u64 tx_linearize;
@@ -840,6 +840,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	rx_buf = 0;
 	rx_reuse = 0;
 	rx_reuse = 0;
+	rx_waive = 0;
 	rcu_read_lock();
 	for (q = 0; q < vsi->num_queue_pairs; q++) {
 		/* locate Tx ring */
@@ -875,6 +876,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		rx_page += p->rx_stats.alloc_page_failed;
 		rx_reuse += p->rx_stats.page_reuse_count;
 		rx_alloc += p->rx_stats.page_alloc_count;
+		rx_waive += p->rx_stats.page_waive_count;
 
 		if (i40e_enabled_xdp_vsi(vsi)) {
 			/* locate XDP ring */
@@ -904,6 +906,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	vsi->rx_buf_failed = rx_buf;
 	vsi->rx_page_reuse = rx_reuse;
 	vsi->rx_page_alloc = rx_alloc;
+	vsi->rx_page_waive = rx_waive;
 
 	ns->rx_packets = rx_p;
 	ns->rx_bytes = rx_b;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 1450efd..c7ad983 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1982,22 +1982,29 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
 /**
  * i40e_can_reuse_rx_page - Determine if page can be reused for another Rx
  * @rx_buffer: buffer containing the page
+ * @rx_stats: rx stats structure for the rx ring
  * @rx_buffer_pgcnt: buffer page refcount pre xdp_do_redirect() call
  *
  * If page is reusable, we have a green light for calling i40e_reuse_rx_page,
  * which will assign the current buffer to the buffer that next_to_alloc is
  * pointing to; otherwise, the DMA mapping needs to be destroyed and
- * page freed
+ * page freed.
+ *
+ * rx_stats will be updated to indicate if the page was waived because it was
+ * not reusable.
  */
 static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
+				   struct i40e_rx_queue_stats *rx_stats,
 				   int rx_buffer_pgcnt)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
 	/* Is any reuse possible? */
-	if (!dev_page_is_reusable(page))
+	if (!dev_page_is_reusable(page)) {
+		rx_stats->page_waive_count++;
 		return false;
+	}
 
 #if (PAGE_SIZE < 8192)
 	/* if we are only owner of page we can reuse it */
@@ -2237,7 +2244,7 @@ static void i40e_put_rx_buffer(struct i40e_ring *rx_ring,
 			       struct i40e_rx_buffer *rx_buffer,
 			       int rx_buffer_pgcnt)
 {
-	if (i40e_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
+	if (i40e_can_reuse_rx_page(rx_buffer, &rx_ring->rx_stats, rx_buffer_pgcnt)) {
 		/* hand second half of page back to the ring */
 		i40e_reuse_rx_page(rx_ring, rx_buffer);
 	} else {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 7041e81..e049cf48 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -300,6 +300,7 @@ struct i40e_rx_queue_stats {
 	u64 page_reuse_count;
 	u64 realloc_count;
 	u64 page_alloc_count;
+	u64 page_waive_count;
 };
 
 enum i40e_ring_state_t {
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
