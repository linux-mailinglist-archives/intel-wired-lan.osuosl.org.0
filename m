Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C04964794EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 20:39:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A7F3421CC;
	Fri, 17 Dec 2021 19:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ItU3aaJe8oF; Fri, 17 Dec 2021 19:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6816542143;
	Fri, 17 Dec 2021 19:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5C4E1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2D8F40579
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIL8qrV9b4jH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 19:37:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F829404A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:44 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id y7so2760285plp.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=70zoL/rw5reUH+wDepP5mNKGm1jSYyuL1cKzbKE0mRE=;
 b=ilmibtt+4pzAmZcM5Ofg2NpsHq1ebndpJg3FBSAjZPrM0NnQIGCfdW8hWezTYoa6Xc
 z5SDaaYtFUb7xHP6uUySmcyfU0jnca33WC1y/Zqb1+rMirQbIbeM5Alyx0ZNzC++2SwH
 0Xa9us/hpT3gjNe/3G6jfeuezySTnPph0O5VM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=70zoL/rw5reUH+wDepP5mNKGm1jSYyuL1cKzbKE0mRE=;
 b=Eh9sjbyD/6k2+JFTH+DdngFtw/4a6wduE45Ruht0oavj/MB64TpAMACwp1hcjde3Av
 pYaNHtmI9w3zBOY6b5rkLld3luITUYq4JBDEZ7Rgwy+0NnSv4ougUAZx/5h3oGv1t1ap
 OB3LWosMaLbzcxFCS6lZs3IWf7Q6r8H0BPm5fhRVzedpf7s5j6cuBOzMrFpH8uDHLw/T
 UjxmM7zTZo+w+bLrEAQ058WOR+VUI6WxB2eoRz7RBtvP87UEnnD5cOf4U6BvMr/4MNag
 3os6vaH/rMTBXV1OL34eAS8qaiiHwCJ88IicHfdD6H8FHh5FjWD/WJzX/zvVwFVSJHS3
 ki4Q==
X-Gm-Message-State: AOAM533h5X6ipm0J2rCm6qoLCkjNDl7Xbh8qzjbK2C3PW3Bf6uMpJv7u
 GMvhiI7hlaS0ljcF6Ehj80OrzZxaJ0BboZS+hNrYyzv6KikKevFIX8MTrj8ViBz36BnO8B7gpZQ
 pMP/TSRfgo2frm71x1Yi7K2kt41gWgngyGWDbIRsrp9W/soBFb1TUi9ZEy4DSCgRw5F1Z9ICDic
 oRs+uGYR5W
X-Google-Smtp-Source: ABdhPJzAStTZa6VbWpB+diwfqBLkPIL0pWtxWGh18HCBGcrB+aW6I/Sh/9xBJ1414HwnVqSSNcR4qQ==
X-Received: by 2002:a17:902:b718:b0:143:72b7:409e with SMTP id
 d24-20020a170902b71800b0014372b7409emr4673991pls.28.1639769863577; 
 Fri, 17 Dec 2021 11:37:43 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id o17sm8783294pgb.42.2021.12.17.11.37.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Dec 2021 11:37:43 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 11:35:17 -0800
Message-Id: <1639769719-81285-4-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Fri, 17 Dec 2021 19:38:44 +0000
Subject: [Intel-wired-lan] [net-queue, v2,
 3/5] i40e: Add a stat tracking new RX page allocations.
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

Add a counter for new page allocations in the i40e RX path. This stat is
accessible with ethtool.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 5 ++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 2 ++
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 1 +
 5 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index b61f17bf..ab73de2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -854,6 +854,7 @@ struct i40e_vsi {
 	u64 rx_buf_failed;
 	u64 rx_page_failed;
 	u64 rx_page_reuse;
+	u64 rx_page_alloc;
 
 	/* These are containers of ring pointers, allocated at run-time */
 	struct i40e_ring **rx_rings;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index ceb0d5f..22f746b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -296,6 +296,7 @@ static const struct i40e_stats i40e_gstrings_misc_stats[] = {
 	I40E_VSI_STAT("rx_alloc_fail", rx_buf_failed),
 	I40E_VSI_STAT("rx_pg_alloc_fail", rx_page_failed),
 	I40E_VSI_STAT("rx_cache_reuse", rx_page_reuse),
+	I40E_VSI_STAT("rx_cache_alloc", rx_page_alloc),
 };
 
 /* These PF_STATs might look like duplicates of some NETDEV_STATs,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6d3b0bc..6688598 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -812,7 +812,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	struct i40e_eth_stats *es;     /* device's eth stats */
 	u64 tx_restart, tx_busy;
 	struct i40e_ring *p;
-	u64 rx_page, rx_buf, rx_reuse;
+	u64 rx_page, rx_buf, rx_reuse, rx_alloc;
 	u64 bytes, packets;
 	unsigned int start;
 	u64 tx_linearize;
@@ -839,6 +839,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	rx_page = 0;
 	rx_buf = 0;
 	rx_reuse = 0;
+	rx_alloc = 0;
 	rcu_read_lock();
 	for (q = 0; q < vsi->num_queue_pairs; q++) {
 		/* locate Tx ring */
@@ -873,6 +874,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		rx_buf += p->rx_stats.alloc_buff_failed;
 		rx_page += p->rx_stats.alloc_page_failed;
 		rx_reuse += p->rx_stats.page_reuse_count;
+		rx_alloc += p->rx_stats.page_alloc_count;
 
 		if (i40e_enabled_xdp_vsi(vsi)) {
 			/* locate XDP ring */
@@ -901,6 +903,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	vsi->rx_page_failed = rx_page;
 	vsi->rx_buf_failed = rx_buf;
 	vsi->rx_page_reuse = rx_reuse;
+	vsi->rx_page_alloc = rx_alloc;
 
 	ns->rx_packets = rx_p;
 	ns->rx_bytes = rx_b;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 8b3ffb7..322f85b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1673,6 +1673,8 @@ static bool i40e_alloc_mapped_page(struct i40e_ring *rx_ring,
 		return false;
 	}
 
+	rx_ring->rx_stats.page_alloc_count++;
+
 	/* map page for use */
 	dma = dma_map_page_attrs(rx_ring->dev, page, 0,
 				 i40e_rx_pg_size(rx_ring),
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index bfc2845..7041e81 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -299,6 +299,7 @@ struct i40e_rx_queue_stats {
 	u64 alloc_buff_failed;
 	u64 page_reuse_count;
 	u64 realloc_count;
+	u64 page_alloc_count;
 };
 
 enum i40e_ring_state_t {
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
