Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 824D6474ED9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 01:06:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE33B81902;
	Wed, 15 Dec 2021 00:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U0guyOq9N9jE; Wed, 15 Dec 2021 00:06:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6F15818C4;
	Wed, 15 Dec 2021 00:06:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 469EB1BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EA89401F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bR4NstHElZnT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 22:43:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53BC240179
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:09 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 n15-20020a17090a394f00b001b0f6d6468eso2100147pjf.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZgtVJVvnbACKc4Enb0x5ug683st5CGBAW37lbrDODgg=;
 b=HxqmX4mTRoswZu9VjYM/t93M+y57BE//+Snlfzh41P/f943EIEdHuze7cacCYNIFme
 oO6MxIgBmQX331XvQtyqLm7KDdY/uGpOLp1/vPxORLlQk/GljxZXMnqgNdcriVKzHnrX
 zo+XUTWk7TOuCDdyUUlezIK3kkcfE0i3hJZD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZgtVJVvnbACKc4Enb0x5ug683st5CGBAW37lbrDODgg=;
 b=p0C3JuHH+bD1HoynSndmWBdKeUvsp1oiKfsD5euxny8gh6vyINZ54XsB47icJvVnVb
 HIPrRYjMzLtk4Mkz71YGrUD64xIKZgW7wB9l8l+QEtU5lAfOiH+PjEqhtkHcfXtQcagC
 NEz35uHE9ZCOSf9r4D/JbnL2nnsF8+wMyD36sV8iZA6T6bfD1TILAp2awONCI38fEsdr
 Jsa1cl//Yz3dyFG/+sDPI3ooK0okC/L7YlXlycAEUA9KY4M2uFoXSfrwPR9EAhniqftZ
 l4zdySap8BdYEUpTBUQ4CyefuaEkBpFd/uzLxAVjV/siIY85bCJvtidE467ENLskxzvy
 FQ9w==
X-Gm-Message-State: AOAM5323Gpjc6wT+tsYVrfR0yIGhmB0MRckFRjJWroEIAMaKfP1XYKcY
 Up8N1AOM5Cl9EkSvl19ZVMqtyQHXP6w0RUaNLsmB6DZdDggDarc37QrWVKCd+FzH+xKlrg0G/HN
 Cs9hnc3tvMPyQCnKvn7ZR7HGZSv1c5oN9MAkYQ09QHQ7cwwl22uN1BTlncZemw0ALmAXgMu6jNI
 FshOZzFlaM
X-Google-Smtp-Source: ABdhPJwzT9LDDMmisoISJ/SbIwH0BCsdFvcLNKsOxB7wd+tACmY4G61jy9Wdf5ysB0dIwjY46IIgug==
X-Received: by 2002:a17:902:a584:b0:143:c2e3:c4 with SMTP id
 az4-20020a170902a58400b00143c2e300c4mr8690280plb.69.1639521788141; 
 Tue, 14 Dec 2021 14:43:08 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id mg12sm3448012pjb.10.2021.12.14.14.43.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 14:43:07 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 14:42:07 -0800
Message-Id: <1639521730-57226-3-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
References: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Wed, 15 Dec 2021 00:06:03 +0000
Subject: [Intel-wired-lan] [net-queue PATCH 2/5] i40e: Aggregate and export
 RX page reuse stat.
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

rx page reuse was already being tracked by the i40e driver per RX ring.
Aggregate the counts and make them accessible via ethtool.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 5 ++++-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 7f40f87..b61f17bf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -853,6 +853,7 @@ struct i40e_vsi {
 	u64 tx_force_wb;
 	u64 rx_buf_failed;
 	u64 rx_page_failed;
+	u64 rx_page_reuse;
 
 	/* These are containers of ring pointers, allocated at run-time */
 	struct i40e_ring **rx_rings;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 513ba69..ceb0d5f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -295,6 +295,7 @@ static const struct i40e_stats i40e_gstrings_misc_stats[] = {
 	I40E_VSI_STAT("tx_busy", tx_busy),
 	I40E_VSI_STAT("rx_alloc_fail", rx_buf_failed),
 	I40E_VSI_STAT("rx_pg_alloc_fail", rx_page_failed),
+	I40E_VSI_STAT("rx_cache_reuse", rx_page_reuse),
 };
 
 /* These PF_STATs might look like duplicates of some NETDEV_STATs,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4ff1c9b..6d3b0bc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -812,7 +812,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	struct i40e_eth_stats *es;     /* device's eth stats */
 	u64 tx_restart, tx_busy;
 	struct i40e_ring *p;
-	u64 rx_page, rx_buf;
+	u64 rx_page, rx_buf, rx_reuse;
 	u64 bytes, packets;
 	unsigned int start;
 	u64 tx_linearize;
@@ -838,6 +838,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	tx_restart = tx_busy = tx_linearize = tx_force_wb = 0;
 	rx_page = 0;
 	rx_buf = 0;
+	rx_reuse = 0;
 	rcu_read_lock();
 	for (q = 0; q < vsi->num_queue_pairs; q++) {
 		/* locate Tx ring */
@@ -871,6 +872,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		rx_p += packets;
 		rx_buf += p->rx_stats.alloc_buff_failed;
 		rx_page += p->rx_stats.alloc_page_failed;
+		rx_reuse += p->rx_stats.page_reuse_count;
 
 		if (i40e_enabled_xdp_vsi(vsi)) {
 			/* locate XDP ring */
@@ -898,6 +900,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	vsi->tx_force_wb = tx_force_wb;
 	vsi->rx_page_failed = rx_page;
 	vsi->rx_buf_failed = rx_buf;
+	vsi->rx_page_reuse = rx_reuse;
 
 	ns->rx_packets = rx_p;
 	ns->rx_bytes = rx_b;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
