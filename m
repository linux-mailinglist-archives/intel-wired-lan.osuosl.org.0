Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B69434794F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 20:39:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D9C184D5F;
	Fri, 17 Dec 2021 19:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VsJvzeskSlt9; Fri, 17 Dec 2021 19:39:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C9B784D59;
	Fri, 17 Dec 2021 19:39:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF8C81BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEB3F84D30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XvfeeqmW7-X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 19:37:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 101B584D32
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:45 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id k64so3074989pfd.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dPsS9WyOYebbPNlQIS4Y4eFXSN7Kabz8jwC+KvSYu+c=;
 b=O0fQ/e9riac+s27oLoUlu4Z7AD6HzT2Jqf77Vl6tpB6Q+EJKthNyXcJuTYIDZLVVYQ
 IA+WzIPb4ecBh5v/PAh/zFXuo83hg4FiQDmMDamnmj9tNW1ar2s0eoXAqXtaGLxkAMPE
 GTitjkLejb1ITyeiKP6wSB3BtJFPl5W1IGjeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dPsS9WyOYebbPNlQIS4Y4eFXSN7Kabz8jwC+KvSYu+c=;
 b=iavhqJkUxPkdb8V6mMl6TqD5jc/aEuEj0ihW0tgZPSqdduAhCwr26D5Aw1I++AAuvA
 5EQzb6MRfMYo7x7TCngs9iRHleobNlzSOiWtQIIt/dO69xicdNIDtyB3W8k0mKZAQXCM
 ouLrj4ZnIuw+W2c/Ci4xtV45Cd9H2Bop3NYUCz08q8EBVd1S7khvo1nc9eaHI0CAMuO+
 RcsHwRVU6sS5ux4Rpon6ZumfN10Olv3e5+dbv0E1kChuMKvzSg3DU7Pqf7QzAGeYZ2sB
 gwUcKIbElSRWWZA0MHaed+mpc2micYMQN77q5d9A8qEuHmEAfBWoIW/GE4PXyLgmpVw5
 C/vA==
X-Gm-Message-State: AOAM532IqXyL+3vuNvgEfRnVbI8+Nys2AgReNSlkeot70UHYTGFUl5+W
 JC3h0LQyjMIWJD/cyJL4T8wmAiVmEsCd8nAbWsNdQpwlemGP5px0c09SAMrUz1V3hXyS5kC+423
 3lNYmPN9DbJiayA62nW9Qn9NWw7dhHikunG/MaH2o4gx7hjlaKgMhCu8cBp3rI0Eenyu1tTrpnZ
 FIrbFgelfi
X-Google-Smtp-Source: ABdhPJzFZSAdHtzcWszWyusbCXRI9L0TtrYGmSa6+pqPpbALyryvHmyPhX/WVG1mkoGwetiWFAOktg==
X-Received: by 2002:a63:780e:: with SMTP id t14mr4173947pgc.605.1639769865014; 
 Fri, 17 Dec 2021 11:37:45 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id o17sm8783294pgb.42.2021.12.17.11.37.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Dec 2021 11:37:44 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 11:35:18 -0800
Message-Id: <1639769719-81285-5-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Fri, 17 Dec 2021 19:38:44 +0000
Subject: [Intel-wired-lan] [net-queue, v2,
 4/5] i40e: Add a stat for tracking pages waived.
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
Cc: kuba@kernel.org, Joe Damato <jdamato@fastly.com>
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
index 6688598..7a25488 100644
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
 	rx_alloc = 0;
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
index 322f85b..1e2ad48 100644
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
