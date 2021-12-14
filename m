Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F52474EDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 01:06:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9E29818DC;
	Wed, 15 Dec 2021 00:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 13aWK_wK73Iu; Wed, 15 Dec 2021 00:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0E30818CA;
	Wed, 15 Dec 2021 00:06:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DAC91BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7456440179
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HR4PxZPZgZf5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 22:43:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A3E5401F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:10 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 f18-20020a17090aa79200b001ad9cb23022so17345255pjq.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cXLbOOaKhjGO3E8gN2CpwZMKvhA9B+iiFAqoEOQ+Usg=;
 b=Gb8fEwmpJD1S0gkVEZWABOIHoLGna9SzvqYAHT/p2SzMnGDoGs2aByWAGEV5vDJggK
 tVOAYDMs8FnbLbZZnUn1MEbOPxnO+Y+k3TOSqLv9AmO7xdRlC2AFO/UZdIXQTrfJs9/e
 r28ZOWRwFggMeqjoFTw2EfaBTbosZdKFmmDWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cXLbOOaKhjGO3E8gN2CpwZMKvhA9B+iiFAqoEOQ+Usg=;
 b=nHrEt1qBa6MKF/B4fiaKSiZ6QBV8C3VbYvBkwOMrwBzxXivgp+5RT7dcMZpXH/cbvT
 8Pda4yvvdOIX3MYbyFVxuNsO/Sc5UYOl1m84xDZrR3KeIpvpjzcezMD0v5kay1Kbb7yF
 o8geBVwKkxP8FC4hKW4nK6bLoe4UFOdUPPLO1lIH1EN0SAkg/vLXzZ3d1mEw2GviS1rC
 2HbDbblR2SddrB/tpq5sCqZ0M3xeJP5s2cZwnLrGA0Wxh/wXo4Q/zWa4cIgjSpjXwaS7
 kzrdMlsd6rYqXh/gpUwzLSHPDRVHzhbGPLGRVQ04QJEP24wvTrogjw8GHDHuPCJJitBW
 jeuQ==
X-Gm-Message-State: AOAM531UiRRXKkKN8RehCfOBdpw3dYt6+Sl/9P10C7Sjv9XeoELad6Yn
 /vgjxivhFsyFwUnB9pvutp5QGI73dImXceFHVCkNTbAbjarnOyJJoWKzvtCaDPmTA8OGnAH6b0Y
 /nwyx5uvnmdlzyqiAGo4IizrtQqZu5hG5+saL+Vt57uWrXoNZLGjwSZyIUu4GJvI67K/tV0DTnC
 77Kl5jNlPu
X-Google-Smtp-Source: ABdhPJyfMY/ECw/n2chQbxc0QyP1z+G2CwtY+nsTeYdfcT0+LziUyi/WqC+sIsImE5+Md6OcrTrpSg==
X-Received: by 2002:a17:90b:1812:: with SMTP id
 lw18mr8428148pjb.96.1639521789600; 
 Tue, 14 Dec 2021 14:43:09 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id mg12sm3448012pjb.10.2021.12.14.14.43.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 14:43:09 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 14:42:08 -0800
Message-Id: <1639521730-57226-4-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
References: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Wed, 15 Dec 2021 00:06:03 +0000
Subject: [Intel-wired-lan] [net-queue PATCH 3/5] i40e: Add a stat tracking
 new RX page allocations.
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
index 6d3b0bc..33c3f04 100644
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
+	rx_reuse = 0;
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
index 8b3ffb7..1450efd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1671,6 +1671,8 @@ static bool i40e_alloc_mapped_page(struct i40e_ring *rx_ring,
 	if (unlikely(!page)) {
 		rx_ring->rx_stats.alloc_page_failed++;
 		return false;
+	} else {
+		rx_ring->rx_stats.page_alloc_count++;
 	}
 
 	/* map page for use */
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
