Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F681258AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2019 01:40:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B8A4885DE;
	Thu, 19 Dec 2019 00:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E8nl7Ql98iQv; Thu, 19 Dec 2019 00:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DBBE3885DC;
	Thu, 19 Dec 2019 00:40:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B02371BF397
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ACE8C86BB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7ZaV4ZFO7xm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 18:38:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D65886B8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:53 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id 21so2439323qky.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 10:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b0ybn8DuKtuB1EcL3f+qtWsIuALB19x61Jlk3bJVMfI=;
 b=ADTZFaSZJGOJUWHzgN/Cy370WYK5eyFQpHbiYqCqvc3FxECvME40KHKMiV+iqqcEDE
 MswTEXHwX9xQIJsspYmDlMMWhhLgqjQFo0i7Bssfpfg9suFdaMBZzQfeTgvZFjwrzXLa
 FT6a0grylHn64/b9DtahjlH4D4V2WwGBvt+fAFW5SwytWG2WaVqb4GFflsgXIJOJ9D61
 3FfP4/tzlcdXO8eOdFLQAfI7BG9o7rLxgfEMqC/coNzoUPFTvBubOsOVr3Z5WoAo5UI3
 Khd71eUTrAhO0pfMfg5lSr51pJgV8LLVzyNfSPpsfh4DUkmz8TF1H0zm6jJbGQgOASQm
 dXkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b0ybn8DuKtuB1EcL3f+qtWsIuALB19x61Jlk3bJVMfI=;
 b=tH0Q68geKv3CGpO2wLBwfQJMcnm7UXfXywaaNT13z68gnghT2Ku8cleMvz01kNe/aS
 uTIXqOzk0PARPjLzZEQfxY9S06rYMsNJnH2XdeZW3pkqw+s1+/bDp39EkYG/o86mkKbp
 sPb5o8QaVcU14vPDWM49l1O0Z81qxjhtDgCXw5MHBRdq6UzS/I0DWbkEu5pg+PK6B/pe
 a2tBLaGs5trCZuiEMvQSA2zVDOzn1eyznou2svgYVzK89kk0YFNRmyH170NgOeWsvlr0
 qh4ZIqIfNO3j1q13R9cH6ssxpDdBs4GNODKKlQFghJqT8Fkb3NV1ziqXUvydCMolxT5z
 6i7g==
X-Gm-Message-State: APjAAAWgTUsVocVdoaFVulvObBPeU3dB6HdlBfgabCzI4O38PW9KHJhj
 /kSrp7i39lju/Ai2Hy4aAus=
X-Google-Smtp-Source: APXvYqwFxlMn2WZQ8whnAGXKDowPFy4vMN6IV3I72cyVS5ppiu/ab5cHjfYERpD6WgLViQ8yUBqIjQ==
X-Received: by 2002:a37:a70b:: with SMTP id q11mr4027437qke.393.1576694332281; 
 Wed, 18 Dec 2019 10:38:52 -0800 (PST)
Received: from ubuntu.default (201-42-108-210.dsl.telesp.net.br.
 [201.42.108.210])
 by smtp.gmail.com with ESMTPSA id s11sm890049qkg.99.2019.12.18.10.38.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 10:38:51 -0800 (PST)
From: Julio Faracco <jcfaracco@gmail.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Dec 2019 15:38:44 -0300
Message-Id: <20191218183845.20038-2-jcfaracco@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218183845.20038-1-jcfaracco@gmail.com>
References: <20191218183845.20038-1-jcfaracco@gmail.com>
X-Mailman-Approved-At: Thu, 19 Dec 2019 00:40:00 +0000
Subject: [Intel-wired-lan] [PATCH net-next 1/2] drivers: net: i40e: Removing
 hung_queue variable to use txqueue function parameter
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
Cc: intel-wired-lan@lists.osuosl.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The scope of function .ndo_tx_timeout was changed to include the hang
queue when a TX timeout event occurs. See commit 0290bd291cc0
("netdev: pass the stuck queue to the timeout handler") for more
details. Now, drivers don't need to identify which queue is stopped.
Drivers can simply use the queue index provided bt dev_watchdog and
execute all actions needed to restore network traffic. This commit do
some cleanups into Intel i40e driver to remove a redundant loop to find
stopped queue.

Signed-off-by: Julio Faracco <jcfaracco@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 41 ++++++---------------
 1 file changed, 11 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4c9ac6c80eb8..71fedee21488 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -307,37 +307,18 @@ static void i40e_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_ring *tx_ring = NULL;
-	unsigned int i, hung_queue = 0;
+	unsigned int i;
 	u32 head, val;
 
 	pf->tx_timeout_count++;
 
-	/* find the stopped queue the same way the stack does */
-	for (i = 0; i < netdev->num_tx_queues; i++) {
-		struct netdev_queue *q;
-		unsigned long trans_start;
-
-		q = netdev_get_tx_queue(netdev, i);
-		trans_start = q->trans_start;
-		if (netif_xmit_stopped(q) &&
-		    time_after(jiffies,
-			       (trans_start + netdev->watchdog_timeo))) {
-			hung_queue = i;
-			break;
-		}
-	}
-
-	if (i == netdev->num_tx_queues) {
-		netdev_info(netdev, "tx_timeout: no netdev hung queue found\n");
-	} else {
-		/* now that we have an index, find the tx_ring struct */
-		for (i = 0; i < vsi->num_queue_pairs; i++) {
-			if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc) {
-				if (hung_queue ==
-				    vsi->tx_rings[i]->queue_index) {
-					tx_ring = vsi->tx_rings[i];
-					break;
-				}
+	/* with txqueue index, find the tx_ring struct */
+	for (i = 0; i < vsi->num_queue_pairs; i++) {
+		if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc) {
+			if (txqueue ==
+			    vsi->tx_rings[i]->queue_index) {
+				tx_ring = vsi->tx_rings[i];
+				break;
 			}
 		}
 	}
@@ -363,14 +344,14 @@ static void i40e_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 			val = rd32(&pf->hw, I40E_PFINT_DYN_CTL0);
 
 		netdev_info(netdev, "tx_timeout: VSI_seid: %d, Q %d, NTC: 0x%x, HWB: 0x%x, NTU: 0x%x, TAIL: 0x%x, INT: 0x%x\n",
-			    vsi->seid, hung_queue, tx_ring->next_to_clean,
+			    vsi->seid, txqueue, tx_ring->next_to_clean,
 			    head, tx_ring->next_to_use,
 			    readl(tx_ring->tail), val);
 	}
 
 	pf->tx_timeout_last_recovery = jiffies;
-	netdev_info(netdev, "tx_timeout recovery level %d, hung_queue %d\n",
-		    pf->tx_timeout_recovery_level, hung_queue);
+	netdev_info(netdev, "tx_timeout recovery level %d, txqueue %d\n",
+		    pf->tx_timeout_recovery_level, txqueue);
 
 	switch (pf->tx_timeout_recovery_level) {
 	case 1:
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
