Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D671474EDC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 01:06:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3829A40948;
	Wed, 15 Dec 2021 00:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qn_j2j8zWvr9; Wed, 15 Dec 2021 00:06:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 314A740205;
	Wed, 15 Dec 2021 00:06:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E45EC1BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC282401F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6WnFlue-7Ynv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 22:43:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD20E40179
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:13 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id np3so15625173pjb.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9N389LoTGE6mkt5oIUV8Cfwv96Xp7JiTrhAZSKUqRm8=;
 b=cML2mpwqvMNN/LTebykUwE2fMZaeIvgC07oc10BPfDvg5nrr3JaWt/wN8DiF4JezUg
 BZg6J38YgSojWHCycSirp7dPxJBAF0wMS0HVKR5guq1G061AUEQdFzqwQehh5DPY+LwX
 tia7GwRmwhCsGvlVSJc5T2Pfs/ZmCSPOHi2DE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9N389LoTGE6mkt5oIUV8Cfwv96Xp7JiTrhAZSKUqRm8=;
 b=5uVGQjb4au/SjxAXf2A5nK1bOsg5CDN57Gz+Vecx4o49QshC7xg7wx2xBbnWxE5Dkt
 BwnC8irWF0jWyZP+pUpJ5LrmYKFRhNI536hhciYQZZuugQ94PCzR/9uSsnEdr1O7UEP2
 PXlh2gkcOCwcfO6FM164XDDGye0QQfJDEuPvdxyywPosYai8Lvy4uCI4DSjfrYsHhnfE
 rzAqNHZvPj3B3r+OTkNCYa7/tD9Eotr6Wz4RhuymL+mq+elHYhU5kO1irPSA+DMmPYRX
 CpFRr6SFs0bi/ILlL6jHKW4kmbjL9PH5KvhdwhwwrGiGu5sf+uxSKgHzq55ZsCdMZNL3
 VW1w==
X-Gm-Message-State: AOAM530PDK74umJQm/XaEYUsHohzftV2uxQOg/eFK+OkBC3FcnKJX/y6
 9UAY2+9s7lE9DpN1EG7Antv2NP/n//NifqjikrwaRMjTVJavbqrSVt9n060PRPwsz9rD6fPDwZA
 Mm4sOAqzvZRJCrGxGZPlmmIcfeA7DrE5JEWcjF+xrXd8OT4Wgis15Z4OsilLF8DexmS7olsGU0z
 hhSxaQbTgM
X-Google-Smtp-Source: ABdhPJwu8VvQfDP4t4kH5s1EridEC1TGMkQI5RwoCYPjm8LiNZj2QNJLNnq6k8u2Ywe5rhG3FS+d5g==
X-Received: by 2002:a17:902:8645:b0:142:8c0d:3f4a with SMTP id
 y5-20020a170902864500b001428c0d3f4amr8075863plt.3.1639521792792; 
 Tue, 14 Dec 2021 14:43:12 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id mg12sm3448012pjb.10.2021.12.14.14.43.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 14:43:12 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 14:42:10 -0800
Message-Id: <1639521730-57226-6-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
References: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Wed, 15 Dec 2021 00:06:03 +0000
Subject: [Intel-wired-lan] [net-queue PATCH 5/5] i40e: Add a stat for
 tracking busy rx pages.
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
index ded7aa9..1d9032c 100644
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
 	rx_reuse = 0;
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
index c7ad983..271697b 100644
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
