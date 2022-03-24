Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E354E697C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 20:48:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3408404AB;
	Thu, 24 Mar 2022 19:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWtj3G9290SP; Thu, 24 Mar 2022 19:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AAF140165;
	Thu, 24 Mar 2022 19:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50A161BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 19:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 392A840165
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 19:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYLWyATfqbvv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 19:48:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C8424011A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 19:48:10 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id c23so5893850plo.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 12:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ti6FuyXdB5f21VSgjbQ6PjL8j8SJszkGvsRlu/0XjrE=;
 b=yFRcvvmt+wM6wQRlw4lK7VzdgwWMvfr6h/2CleYhDQUFcj+UtwjSxK4VFV1BkEtzAu
 ckaxCsmlzP9XHDM3GNAHmBikedtbk1MjZB74cTQi51D66ST5nC53tddV9CQQr7MkMUnj
 480JnUioJLNd91CZvE0iGbCApHmc+oRf6onak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ti6FuyXdB5f21VSgjbQ6PjL8j8SJszkGvsRlu/0XjrE=;
 b=4RbcPDfQkg/mNAukSbeg+Idn07t5xNRuKZz29rJi51b3MTpq4JZb3PVZ3YZVfL2E0a
 u/QR7WgWKAxI4FUFyq1+zGu0bHz33j5mvhYSqV5irFvJI8BzNt1CcSp9zjO3SAcAI1fE
 PyGmSvwat/6qMelT5VL1XcEDy2cI9WWqQ7xTYUsXAH3QQ3rprvrIEaXkeYDsQxl+iHqm
 IEf6eS6sbkgGCdW64LrMIsEqMDupUygDNfntFC8KNsnieO5Pq+XKNdN04ougbYHzdgwb
 plhD9E6bnlQmGhyZ/tN7DmiAcSOAOFT8Vn12QNdLJ7LGbaJANqozydDt8J10ewrDN13o
 z76w==
X-Gm-Message-State: AOAM532wcJxZdj8h5hZ2RWFDcP3w2K5ODMuutCKFuChOVFRhR+1R7UO9
 7qi0L0jUXviAa+xr5g1bpGvwamKzA9eamXCGPGz7cmygSmCb09tLGEpjzdy8T34EWqAa8SAMN0B
 pdUDxIYxZPNavnjeaKTQWMGMHOWvgSFG9ZXH+dmqgsYiaWLKq/PSqJdy9pX42pu2YSnEdoA4OKq
 24VOjKVA==
X-Google-Smtp-Source: ABdhPJxeNuiHBnEgDcsLG5PQju1KLHAaumGMDPmQuJXS7hWfmuRKgtnr/zV1hpBY/n8Ze6xpmrFIEw==
X-Received: by 2002:a17:90b:4b0e:b0:1c6:f499:1cc9 with SMTP id
 lx14-20020a17090b4b0e00b001c6f4991cc9mr20267646pjb.133.1648151289347; 
 Thu, 24 Mar 2022 12:48:09 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 b1-20020a17090aa58100b001bcb7bad374sm10187305pjq.17.2022.03.24.12.48.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Mar 2022 12:48:08 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, kuba@kernel.org
Date: Thu, 24 Mar 2022 12:46:58 -0700
Message-Id: <1648151218-113215-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [intel-next v2] i40e: Add tx_stopped stat
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

v2:
  - also export tx_stopped via debugfs

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 5 +++--
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 4 ++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 2 ++
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 1 +
 6 files changed, 12 insertions(+), 2 deletions(-)

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
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index be7c6f3..c9dcd6d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -309,10 +309,11 @@ static void i40e_dbg_dump_vsi_seid(struct i40e_pf *pf, int seid)
 			 tx_ring->stats.bytes,
 			 tx_ring->tx_stats.restart_queue);
 		dev_info(&pf->pdev->dev,
-			 "    tx_rings[%i]: tx_stats: tx_busy = %lld, tx_done_old = %lld\n",
+			 "    tx_rings[%i]: tx_stats: tx_busy = %lld, tx_done_old = %lld, tx_stopped = %lld\n",
 			 i,
 			 tx_ring->tx_stats.tx_busy,
-			 tx_ring->tx_stats.tx_done_old);
+			 tx_ring->tx_stats.tx_done_old,
+			 tx_ring->tx_stats.tx_stopped);
 		dev_info(&pf->pdev->dev,
 			 "    tx_rings[%i]: size = %i\n",
 			 i, tx_ring->size);
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
