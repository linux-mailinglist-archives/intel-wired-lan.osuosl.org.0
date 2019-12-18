Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 429531258AC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2019 01:40:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E18C986DE7;
	Thu, 19 Dec 2019 00:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LYm5usKPz5pz; Thu, 19 Dec 2019 00:40:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6138C86B90;
	Thu, 19 Dec 2019 00:40:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5A881BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2CF0884C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fip8r2FLiqku for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 18:38:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1EC0883AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:55 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id u10so1085209qvi.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 10:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=m3KJbj/2ipgtN2cLNIjJ62WUMegElStcycrQCWUakW4=;
 b=MSod8UrmGdVJcpGg5iDEGZEtucemBJMcZxQmQYHXEpGTzHGcU2uAmJ23swilPdBgKA
 +fQOyPNtm2TiqHF+nx+b44JXeIbxxgj6RJ1iClk6Ms1xWT/sfZ15KotqZaIe0rNU7ZJj
 LNZNLuCZFH2LRkVnNPiYyMljy50xh7TIYIpVrJm9dRi+f+eevOF+SnrausJSM7WHHxMP
 FC0NckbJHpEhLKYBthPX4C6NWog8fMbqYlsVFGTra/n5KuECW3apBwB3ZoNqHbpbQQLj
 4eeSQmSUpOOfLoo160Ld0ZbqjEG6mtBHciR9aE3RMI5bbPXOmv6axh1GzLsBxR54Ylxk
 H+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=m3KJbj/2ipgtN2cLNIjJ62WUMegElStcycrQCWUakW4=;
 b=Pmhuui8bqn4DUIghIAs2NqgkivRvIlrJ4m6H9TJFlReSyXc6R/2HfPiLiTKaIluIEO
 VI5wnQTAG7Mdg3OSyIfZQ3To7IJL/eVamFehghCPKgKo5r+BOgdGqTixoQrepXr3qV0W
 QaE31fkZk8Z1yHI2f7Q3kdZPQV1DP8VbbAbGmHO43GK8PvfNkA82vwN+sbh63/ve9yQH
 C4AHkPAieq+g7d88Zj5Ojd2KGkpeGGsSkK6h3jZzzegcPJOtdhc0Fy8CPQP/mjAHxa5p
 cQoC4CSactWqVk5s1EW4sBHJ7OMpb1SBPXcld3HdrneRtiP6t8grDsGOrzvmnna1gzXv
 118g==
X-Gm-Message-State: APjAAAUSswmvJhbqEtaeqKidYRm/AOen8CjGCPaccRMRvsEHcC2exxKY
 Exc7hcXFJ4g5zU8VZsi2jMM=
X-Google-Smtp-Source: APXvYqyZCbO5O2rsw8OAW3WcqAf9alCRDuH3LbXiMGAi+iRjJ0DPd94k6pVWzpzcTnZOMphkvFTv8g==
X-Received: by 2002:a0c:8d0a:: with SMTP id r10mr3586051qvb.7.1576694334723;
 Wed, 18 Dec 2019 10:38:54 -0800 (PST)
Received: from ubuntu.default (201-42-108-210.dsl.telesp.net.br.
 [201.42.108.210])
 by smtp.gmail.com with ESMTPSA id s11sm890049qkg.99.2019.12.18.10.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 10:38:54 -0800 (PST)
From: Julio Faracco <jcfaracco@gmail.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Dec 2019 15:38:45 -0300
Message-Id: <20191218183845.20038-3-jcfaracco@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218183845.20038-1-jcfaracco@gmail.com>
References: <20191218183845.20038-1-jcfaracco@gmail.com>
X-Mailman-Approved-At: Thu, 19 Dec 2019 00:40:00 +0000
Subject: [Intel-wired-lan] [PATCH net-next 2/2] drivers: net: ice: Removing
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
some cleanups into Intel ice driver to remove a redundant loop to find
stopped queue.

Signed-off-by: Julio Faracco <jcfaracco@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 41 ++++++-----------------
 1 file changed, 11 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4d5220c9c721..2d7ecdc157be 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5066,36 +5066,17 @@ static void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 	struct ice_ring *tx_ring = NULL;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
-	int hung_queue = -1;
 	u32 i;
 
 	pf->tx_timeout_count++;
 
-	/* find the stopped queue the same way dev_watchdog() does */
-	for (i = 0; i < netdev->num_tx_queues; i++) {
-		unsigned long trans_start;
-		struct netdev_queue *q;
-
-		q = netdev_get_tx_queue(netdev, i);
-		trans_start = q->trans_start;
-		if (netif_xmit_stopped(q) &&
-		    time_after(jiffies,
-			       trans_start + netdev->watchdog_timeo)) {
-			hung_queue = i;
-			break;
-		}
-	}
-
-	if (i == netdev->num_tx_queues)
-		netdev_info(netdev, "tx_timeout: no netdev hung queue found\n");
-	else
-		/* now that we have an index, find the tx_ring struct */
-		for (i = 0; i < vsi->num_txq; i++)
-			if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc)
-				if (hung_queue == vsi->tx_rings[i]->q_index) {
-					tx_ring = vsi->tx_rings[i];
-					break;
-				}
+	/* now that we have an index, find the tx_ring struct */
+	for (i = 0; i < vsi->num_txq; i++)
+		if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc)
+			if (txqueue == vsi->tx_rings[i]->q_index) {
+				tx_ring = vsi->tx_rings[i];
+				break;
+			}
 
 	/* Reset recovery level if enough time has elapsed after last timeout.
 	 * Also ensure no new reset action happens before next timeout period.
@@ -5110,19 +5091,19 @@ static void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 		struct ice_hw *hw = &pf->hw;
 		u32 head, val = 0;
 
-		head = (rd32(hw, QTX_COMM_HEAD(vsi->txq_map[hung_queue])) &
+		head = (rd32(hw, QTX_COMM_HEAD(vsi->txq_map[txqueue])) &
 			QTX_COMM_HEAD_HEAD_M) >> QTX_COMM_HEAD_HEAD_S;
 		/* Read interrupt register */
 		val = rd32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));
 
 		netdev_info(netdev, "tx_timeout: VSI_num: %d, Q %d, NTC: 0x%x, HW_HEAD: 0x%x, NTU: 0x%x, INT: 0x%x\n",
-			    vsi->vsi_num, hung_queue, tx_ring->next_to_clean,
+			    vsi->vsi_num, txqueue, tx_ring->next_to_clean,
 			    head, tx_ring->next_to_use, val);
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
