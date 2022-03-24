Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6CD4E6830
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 18:57:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DF036101F;
	Thu, 24 Mar 2022 17:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2mSsLxqCD7hF; Thu, 24 Mar 2022 17:57:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 265E56101E;
	Thu, 24 Mar 2022 17:57:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 386C41BF947
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 17:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3477984436
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 17:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RyufzBKFGcQ0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 17:57:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9362884435
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 17:57:32 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 mp6-20020a17090b190600b001c6841b8a52so10083881pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 10:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qJ9xK2DkM7MxAVADrqtfEFPm1RW7QFP+VD/yXTXJjps=;
 b=bJHSMIdw0mvF663Yi0yFrzYWyxzTAAHxhdlve1QQqUGP1w0YFnQS4lrAUGWG2h6lJM
 5BxMcxcdIhe6BHR7dJTl1R2cboJeBc579m1IDgoqhln4J0mkxcgPg/Ec+1IS9yUvS46u
 M7VKiFEdAKquF5XF3MI/GWGkM8Ub9UJskWjzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qJ9xK2DkM7MxAVADrqtfEFPm1RW7QFP+VD/yXTXJjps=;
 b=2o0d3BX7h087Za/ETvt4cvg4qWmyAQDuimyVGInsZZfZcZS87Tg08EytHzBpoXzVez
 lQxaOgwnYLLtmNAgDggHldrp7+AlLS0qithFgPPSe+yrUc+HU5oil/qeW5BSBsIAmuKC
 obcfK01kICDSNm5r8hK9KJAmmAzpU+cKjZddpsghjvTWAmjXDPz4cv75wKtsLlEtM/3n
 zqZO5Jou2Vm3/VZc9SXVYmcSYyEPYa7xJfNhp7SIXdiD2F8MHh68wDswb5+Dt6Txk4jI
 6bxCfduwvONe6bs2BUg6jC4XmdCKjmZBrSukCgVe4j1kEF/v5x9ZRUIt/fQeLvxLzdhp
 alDQ==
X-Gm-Message-State: AOAM532WZ9y8zIBz73W/Eji7URSZi6nq3LnG3aMLmJ95yu02N47u4SPT
 fiQsbpYH3kAGA4AWZwTO96P8UVzh8OMnpLa7Sa7ElIM3psFVKB+widXdESoWIt9O1pzYXPZKqpn
 fQSC3ciuNbHwSNg9G5ZNDG2dmqCA95qnZNdoYPn2sjJ6zup7afrkl1nviu+B4vs5KZpeA0M6oqV
 I6PpL76A==
X-Google-Smtp-Source: ABdhPJweQE11yWHfXi8ZFuxYPMZHZ5EQqpKkCiIvJz3ioHMzmB//k/na8UnT6RgaBLteOPDAhjAQ1A==
X-Received: by 2002:a17:902:bcca:b0:153:88c7:a02 with SMTP id
 o10-20020a170902bcca00b0015388c70a02mr7238919pls.112.1648144651513; 
 Thu, 24 Mar 2022 10:57:31 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 d24-20020a637358000000b003823aefde04sm3187706pgn.86.2022.03.24.10.57.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Mar 2022 10:57:30 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, kuba@kernel.org
Date: Thu, 24 Mar 2022 10:56:20 -0700
Message-Id: <1648144580-99319-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [intel-next] i40e: Add tx_stopped stat
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
Cc: Joe Damato <jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Track TX queue stop events and export the new stat with ethtool.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 4 ++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 2 ++
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 1 +
 5 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 55c6bce..18558a0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -852,6 +852,7 @@ struct i40e_vsi {
 	u64 tx_busy;
 	u64 tx_linearize;
 	u64 tx_force_wb;
+	u64 tx_stopped;
 	u64 rx_buf_failed;
 	u64 rx_page_failed;
 	u64 rx_page_reuse;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index e484996..162bae1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -293,6 +293,7 @@ static const struct i40e_stats i40e_gstrings_misc_stats[] = {
 	I40E_VSI_STAT("tx_linearize", tx_linearize),
 	I40E_VSI_STAT("tx_force_wb", tx_force_wb),
 	I40E_VSI_STAT("tx_busy", tx_busy),
+	I40E_VSI_STAT("tx_stopped", tx_stopped),
 	I40E_VSI_STAT("rx_alloc_fail", rx_buf_failed),
 	I40E_VSI_STAT("rx_pg_alloc_fail", rx_page_failed),
 	I40E_VSI_STAT("rx_cache_reuse", rx_page_reuse),
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b7f11fd..fea40ef 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -785,6 +785,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	unsigned int start;
 	u64 tx_linearize;
 	u64 tx_force_wb;
+	u64 tx_stopped;
 	u64 rx_p, rx_b;
 	u64 tx_p, tx_b;
 	u16 q;
@@ -804,6 +805,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	rx_b = rx_p = 0;
 	tx_b = tx_p = 0;
 	tx_restart = tx_busy = tx_linearize = tx_force_wb = 0;
+	tx_stopped = 0;
 	rx_page = 0;
 	rx_buf = 0;
 	rx_reuse = 0;
@@ -828,6 +830,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		tx_busy += p->tx_stats.tx_busy;
 		tx_linearize += p->tx_stats.tx_linearize;
 		tx_force_wb += p->tx_stats.tx_force_wb;
+		tx_stopped += p->tx_stats.tx_stopped;
 
 		/* locate Rx ring */
 		p = READ_ONCE(vsi->rx_rings[q]);
@@ -872,6 +875,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	vsi->tx_busy = tx_busy;
 	vsi->tx_linearize = tx_linearize;
 	vsi->tx_force_wb = tx_force_wb;
+	vsi->tx_stopped = tx_stopped;
 	vsi->rx_page_failed = rx_page;
 	vsi->rx_buf_failed = rx_buf;
 	vsi->rx_page_reuse = rx_reuse;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 8b844ad..7bc1174 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -3396,6 +3396,8 @@ int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size)
 	/* Memory barrier before checking head and tail */
 	smp_mb();
 
+	++tx_ring->tx_stats.tx_stopped;
+
 	/* Check again in a case another CPU has just made room available. */
 	if (likely(I40E_DESC_UNUSED(tx_ring) < size))
 		return -EBUSY;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index c471c2d..41f86e9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -290,6 +290,7 @@ struct i40e_tx_queue_stats {
 	u64 tx_done_old;
 	u64 tx_linearize;
 	u64 tx_force_wb;
+	u64 tx_stopped;
 	int prev_pkt_ctr;
 };
 
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
