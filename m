Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C774794F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 20:39:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78A1384D62;
	Fri, 17 Dec 2021 19:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2pbDPGLN9vc; Fri, 17 Dec 2021 19:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E3DB84D6F;
	Fri, 17 Dec 2021 19:39:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23CFF1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1259C61158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rWmZdSInhAlX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 19:37:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6963160ED2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:47 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id u14so718458pfg.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MzdJr3mxq4/chwBeOQwBs4C8SvdL1I0L8qgy9q2/iRk=;
 b=IpKsjMEIsIeGhe7Fmzc0FNaWZo4wp8ixT09DVn0ddQrcM7M8mqc3/GKz9QpnR8nD8d
 TTV1RBlkux6t9KuzPry/2juLCES2XkNm91GCC4XsAYu/SvaasWb3BWjFvM4rIwNjD3uZ
 me8MQfQFX0Ict5fVBvhBlvaE6hkwrwlUmfVis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MzdJr3mxq4/chwBeOQwBs4C8SvdL1I0L8qgy9q2/iRk=;
 b=s6/reH0Jt5sJ/XHSSFinpQLQ5/kL3OHAVYmMnDwm/AjzxW2484nJjcvS0oP1g5LTo+
 YS41+/q56iY7XcWUqwBARKoQ8AoHIvcIQDZx4c1XA+Sy0VdH/FXBn66P99DK+zyF7+Hv
 /bJmyvCXzwLt6Yf7M8CEWY7O4lVFhpCfQXdaG93+H0IU6fyt5rFf03A3vBmbY6XjULuS
 ixFDTfHUy41tG85uUapdUslPfY1exVNJZeAmVkxCnmTKolZ+Zl17aQIV+G56rnXU7uh7
 Rf6pYVYYiDH4pPUCIDzmhKQfprXUHea+KUDAuNo0gtbX/8QOfoK/5jKQLPbN0mwApVfN
 6tQA==
X-Gm-Message-State: AOAM533J5hJHZcF9bFrhX2Eg35DPtiHwQf6LF+06uf8/tWEh7mwHfcto
 pNHAL9Yl+Pqw6H1L3xHTW6/mSyPFHOQrzKjvO8LwLQLDLl8vAsWDpHDVEg7HW/XHK3cU/1DNAD7
 9lY8hiy0EhKBI3k/Ua+TXsPXRVUs0WLFmj96CaH3/7jAlk255ryjEujoj+dcVToolmV+LRn68/o
 AJ3BJDS9b8
X-Google-Smtp-Source: ABdhPJz4kt2ks/6eb+SyF7HsYO7SsaBCB9Xbo9PHgHupJIs/j6whkQ+LUpbPKdOBabqF7AU+1anWeQ==
X-Received: by 2002:a63:2307:: with SMTP id j7mr4272140pgj.48.1639769866400;
 Fri, 17 Dec 2021 11:37:46 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id o17sm8783294pgb.42.2021.12.17.11.37.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Dec 2021 11:37:45 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 11:35:19 -0800
Message-Id: <1639769719-81285-6-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Fri, 17 Dec 2021 19:38:44 +0000
Subject: [Intel-wired-lan] [net-queue, v2,
 5/5] i40e: Add a stat for tracking busy rx pages.
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

In some cases, pages cannot be reused by i40e because the page is busy. Add
a counter for this event.

Busy page count is accessible via ethtool.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         |  1 +
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c    |  5 ++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 12 ++++++++----
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    |  1 +
 5 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 3774e7b..b50530e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -856,6 +856,7 @@ struct i40e_vsi {
 	u64 rx_page_reuse;
 	u64 rx_page_alloc;
 	u64 rx_page_waive;
+	u64 rx_page_busy;
 
 	/* These are containers of ring pointers, allocated at run-time */
 	struct i40e_ring **rx_rings;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 224fe6d..64fd869 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -298,6 +298,7 @@ static const struct i40e_stats i40e_gstrings_misc_stats[] = {
 	I40E_VSI_STAT("rx_cache_reuse", rx_page_reuse),
 	I40E_VSI_STAT("rx_cache_alloc", rx_page_alloc),
 	I40E_VSI_STAT("rx_cache_waive", rx_page_waive),
+	I40E_VSI_STAT("rx_cache_busy", rx_page_busy),
 };
 
 /* These PF_STATs might look like duplicates of some NETDEV_STATs,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7a25488..180650f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -812,7 +812,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	struct i40e_eth_stats *es;     /* device's eth stats */
 	u64 tx_restart, tx_busy;
 	struct i40e_ring *p;
-	u64 rx_page, rx_buf, rx_reuse, rx_alloc, rx_waive;
+	u64 rx_page, rx_buf, rx_reuse, rx_alloc, rx_waive, rx_busy;
 	u64 bytes, packets;
 	unsigned int start;
 	u64 tx_linearize;
@@ -841,6 +841,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	rx_reuse = 0;
 	rx_alloc = 0;
 	rx_waive = 0;
+	rx_busy = 0;
 	rcu_read_lock();
 	for (q = 0; q < vsi->num_queue_pairs; q++) {
 		/* locate Tx ring */
@@ -877,6 +878,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		rx_reuse += p->rx_stats.page_reuse_count;
 		rx_alloc += p->rx_stats.page_alloc_count;
 		rx_waive += p->rx_stats.page_waive_count;
+		rx_busy += p->rx_stats.page_busy_count;
 
 		if (i40e_enabled_xdp_vsi(vsi)) {
 			/* locate XDP ring */
@@ -907,6 +909,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	vsi->rx_page_reuse = rx_reuse;
 	vsi->rx_page_alloc = rx_alloc;
 	vsi->rx_page_waive = rx_waive;
+	vsi->rx_page_busy = rx_busy;
 
 	ns->rx_packets = rx_p;
 	ns->rx_bytes = rx_b;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 1e2ad48..692a727 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1990,8 +1990,8 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
  * pointing to; otherwise, the DMA mapping needs to be destroyed and
  * page freed.
  *
- * rx_stats will be updated to indicate if the page was waived because it was
- * not reusable.
+ * rx_stats will be updated to indicate whether the page was waived
+ * or busy if it could not be reused.
  */
 static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
 				   struct i40e_rx_queue_stats *rx_stats,
@@ -2008,13 +2008,17 @@ static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
 
 #if (PAGE_SIZE < 8192)
 	/* if we are only owner of page we can reuse it */
-	if (unlikely((rx_buffer_pgcnt - pagecnt_bias) > 1))
+	if (unlikely((rx_buffer_pgcnt - pagecnt_bias) > 1)) {
+		rx_stats->page_busy_count++;
 		return false;
+	}
 #else
 #define I40E_LAST_OFFSET \
 	(SKB_WITH_OVERHEAD(PAGE_SIZE) - I40E_RXBUFFER_2048)
-	if (rx_buffer->page_offset > I40E_LAST_OFFSET)
+	if (rx_buffer->page_offset > I40E_LAST_OFFSET) {
+		rx_stats->page_busy_count++;
 		return false;
+	}
 #endif
 
 	/* If we have drained the page fragment pool we need to update
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index e049cf48..fd22e2f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -301,6 +301,7 @@ struct i40e_rx_queue_stats {
 	u64 realloc_count;
 	u64 page_alloc_count;
 	u64 page_waive_count;
+	u64 page_busy_count;
 };
 
 enum i40e_ring_state_t {
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
