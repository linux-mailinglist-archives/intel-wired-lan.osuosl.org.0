Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1106C4794EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 20:38:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2F69421D4;
	Fri, 17 Dec 2021 19:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id INwmyH0wY2f2; Fri, 17 Dec 2021 19:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFDE641FEF;
	Fri, 17 Dec 2021 19:38:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A4F91BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 240BC40579
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id two_tgG252PQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 19:37:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B3D7404A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:43 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id mj19so3154532pjb.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZgtVJVvnbACKc4Enb0x5ug683st5CGBAW37lbrDODgg=;
 b=V3xfBsqI1or3ZNQF/VUEQptSRn7k2NGNuVYrkTJXWNsFnxIXyI+eTnfEY9oP8uRjtF
 ZlgXjV5Ss2yNAi9IaGEP6sxc52IbOshmR48uvYAzaYe8ArY4cN6EIn0HT/vvenBz4RyY
 ZSQSxKTDUrQPrOVzKSGQTezQCZDKQQ/qk2RxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZgtVJVvnbACKc4Enb0x5ug683st5CGBAW37lbrDODgg=;
 b=l1Fwk3WGLvUQ4duFffafFwTzFnNwqG6HzkHQyWIfbq6YiyTN4RwV0meXSdiNDxxnxs
 VTK3Bcv/K54IZ5xnGtp4aa0i0IwNCyYi0r+4FE9jhzfLnFfHVK4/EhyCjVsZBz+Wopmm
 JGv27RbYMktkKWGCVMVh+ivUBl89u5IoiR0cw3q7WEapFE3FI5cg87KBTUth/WKe/1+T
 lNW2rihRSL5eNjNose/E5yqJdiPlzPcSDgq4m0Qb8G57wXYUkk+Q2Pum4cQFYipEJSav
 qgYLT9AcYOXzcwirT0C6t8okCrR6hrXbWtuOqJQ1mosZ58wnnVxKhhCniSKPIks/zyMg
 ftCg==
X-Gm-Message-State: AOAM531q2tZGe6pIZjcyItllbO4q/pwwJs/sueJCEuuc+4uAthSv9Ko+
 1vLTVFAm2ykWLy+dY7L6G6djlrj8dcymHRtLs320KH95s7WOMVFybvRHg3HzLqfynqRo/CwyQxZ
 lUwZQ0ohFCRzQI4UaRs1AeHm1QFD1YQnIqCag6H1xW6Bc0amLEVZzTEYSVkkVQ4Pwp++jl3NeZs
 jRqzDhMi2i
X-Google-Smtp-Source: ABdhPJxP9fkfy2DXNwlZ6Sbw9S1xEd6veGpbZbhPxIZn4qaSiaNiIojIQhNqozT7z0dgrw4Q56+WXA==
X-Received: by 2002:a17:90a:fa88:: with SMTP id
 cu8mr3435776pjb.143.1639769862226; 
 Fri, 17 Dec 2021 11:37:42 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id o17sm8783294pgb.42.2021.12.17.11.37.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Dec 2021 11:37:41 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 11:35:16 -0800
Message-Id: <1639769719-81285-3-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Fri, 17 Dec 2021 19:38:44 +0000
Subject: [Intel-wired-lan] [net-queue, v2,
 2/5] i40e: Aggregate and export RX page reuse stat.
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
