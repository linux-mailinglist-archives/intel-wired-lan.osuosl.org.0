Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4948346EA85
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 16:03:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD19080F24;
	Thu,  9 Dec 2021 15:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEwl6JRVzrGs; Thu,  9 Dec 2021 15:03:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8679380F2B;
	Thu,  9 Dec 2021 15:03:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB66A1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 01:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4E3C60750
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 01:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wqVRkje5tPoG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 01:57:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F6EB606F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 01:57:33 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id k26so4020249pfp.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Dec 2021 17:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AdeCej3J+6uy9p/0O/dEvGWH5KApNbQSo5i9Uiow35Q=;
 b=rRmQy3ng5cHjV01lvQ0zFI2WHmaPdUv8xT2ujk7K/B8xeLgOi2z5YOAYcrkD3+81Pg
 seoPXxl8m/IJMP9avBdRBz2jRO7YFSPwBY5bhMQId2n+niZQIH8WKPBjzCAFUjHRpKif
 nwgmihNC/sPNclsb9FibDXCCuy/M54MYO7Nck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AdeCej3J+6uy9p/0O/dEvGWH5KApNbQSo5i9Uiow35Q=;
 b=OyEcaGMmACbZob1Zz2Ot6Z0Fqk9K+ZifeHHGeHAYtRKw8+Jqvow+WT3Gxv8Fgku94s
 gLRUkcfswYM1+9iSdjt//fIDkTz46KPKGXwWV3ikeQIqcRqwOtydA3H8beC7XhF2MZr5
 trGl/Lx+exrYNkD7MiC3mur3cQA1p+qNh/CyW3cL2rWfWBxG7+Q0coajORsz9Zw1dl+3
 05B7AkplFOY5qVmSpZdC12JWW7qb/s28IDOMDqMbwl+TggpfRzozzTpaCV1q3oEBZe/6
 6nCRY4TkwK8q2yGHH5UcBQNNUvhHO4+g+CjQmDZfbpPH2nGtX180mJw4v21uvu6V1/5c
 lgwQ==
X-Gm-Message-State: AOAM532uw2ldLVj6e6R1UxGtEwHCp3XqKUthppF9d+drHvC1JxW9Rhir
 zdIbkGbBUn5OFet13mbx8QT8E4pi3DPdGfO2
X-Google-Smtp-Source: ABdhPJyA4KYIwA4nPe9PN+dBnkOwJvvUgTLonQRP/RyorYqBhVvRPaSLA7+d+xHPU7Sgu8QSQyQ5Pw==
X-Received: by 2002:a63:90c8:: with SMTP id
 a191mr32776644pge.400.1639015052891; 
 Wed, 08 Dec 2021 17:57:32 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id f3sm4661739pfg.167.2021.12.08.17.57.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Dec 2021 17:57:32 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Wed,  8 Dec 2021 17:56:33 -0800
Message-Id: <1639014993-89752-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <202112090744.QwfPrzIW-lkp@intel.com>
References: <202112090744.QwfPrzIW-lkp@intel.com>
X-Mailman-Approved-At: Thu, 09 Dec 2021 15:02:58 +0000
Subject: [Intel-wired-lan] [net v2] i40e: fix unsigned stat widths
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
Cc: Joe Damato <jdamato@fastly.com>, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change i40e_update_vsi_stats and struct i40e_vsi to use u64 fields to match
the width of the stats counters in struct i40e_rx_queue_stats.

Update debugfs code to use the correct format specifier for u64.

Signed-off-by: Joe Damato <jdamato@fastly.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 v1 -> v2: make tx_restart and tx_busy also u64, and fix format specifiers in
           debugfs code

 drivers/net/ethernet/intel/i40e/i40e.h         | 8 ++++----
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 4d939af..9a4c410 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -848,12 +848,12 @@ struct i40e_vsi {
 	struct rtnl_link_stats64 net_stats_offsets;
 	struct i40e_eth_stats eth_stats;
 	struct i40e_eth_stats eth_stats_offsets;
-	u32 tx_restart;
-	u32 tx_busy;
+	u64 tx_restart;
+	u64 tx_busy;
 	u64 tx_linearize;
 	u64 tx_force_wb;
-	u32 rx_buf_failed;
-	u32 rx_page_failed;
+	u64 rx_buf_failed;
+	u64 rx_page_failed;
 
 	/* These are containers of ring pointers, allocated at run-time */
 	struct i40e_ring **rx_rings;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 291e61a..c2c09dc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -240,7 +240,7 @@ static void i40e_dbg_dump_vsi_seid(struct i40e_pf *pf, int seid)
 		 (unsigned long int)vsi->net_stats_offsets.rx_compressed,
 		 (unsigned long int)vsi->net_stats_offsets.tx_compressed);
 	dev_info(&pf->pdev->dev,
-		 "    tx_restart = %d, tx_busy = %d, rx_buf_failed = %d, rx_page_failed = %d\n",
+		 "    tx_restart = %llu, tx_busy = %llu, rx_buf_failed = %llu, rx_page_failed = %llu\n",
 		 vsi->tx_restart, vsi->tx_busy,
 		 vsi->rx_buf_failed, vsi->rx_page_failed);
 	rcu_read_lock();
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index e118cf9..3352328 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -754,9 +754,9 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	struct rtnl_link_stats64 *ns;   /* netdev stats */
 	struct i40e_eth_stats *oes;
 	struct i40e_eth_stats *es;     /* device's eth stats */
-	u32 tx_restart, tx_busy;
+	u64 tx_restart, tx_busy;
 	struct i40e_ring *p;
-	u32 rx_page, rx_buf;
+	u64 rx_page, rx_buf;
 	u64 bytes, packets;
 	unsigned int start;
 	u64 tx_linearize;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
