Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2C8339571
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 18:49:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 870DB84028;
	Fri, 12 Mar 2021 17:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GSawmPyex5vP; Fri, 12 Mar 2021 17:49:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0233080FF2;
	Fri, 12 Mar 2021 17:49:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E36411BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D251D42FD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E07umAEcETjt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 17:49:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2020C4303F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:49:00 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id t85so2332791pfc.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=klo9NI7Al0mSrlW2JABC/O/Er3IRIlz3LP3Zlwggg/0=;
 b=BAck4EOzqSK163BbD/ptqFmYXdEyuZFG+Pnm65lbVgStNkJpLHMafkiEhDpHqzGC50
 ao7IHN9JyqDxwEAYqi9FDpEageQwA6eIu46MYPJYPqzlsdbUh0FQJZ414KdRMznNzLzk
 SQ9rMxDfY/9aCoxGz9fBcsEqTx3Q6NiU9xIw/CBp3qjMrUO1DN+n8VPP3vnE1p+x7e1z
 4NrCZHtr2IywhrS4tRi/UfO8KK3qkKLMMJTAf1BuOa6Gvpo16uDztDFmfCrKmbiVCIlL
 1E+DhcIpSiUQ6McxQ4ietYk/B9oem7xUJ+7kwmzmgVfnrq7pMfS5v8gTkdW5ZZtKr1dk
 9HnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=klo9NI7Al0mSrlW2JABC/O/Er3IRIlz3LP3Zlwggg/0=;
 b=Ce7MTySF2MjiNWGMZGDis8Dv5WRIZx9TmQakgnUra1I9PZX0IKB+bcYA5s2ZXvCV2u
 T56W1Pyp2D5b+5bJxgEJTyDFvHgul8anugP01nw2M5YVIrAtLLZFCm7jcEwz85935MLq
 hStZszcP/bMthHCb8R1D1Ik4r0mjqYxPucGLJgX5UTWrMgBxXrBjq+mi4RtSf+OZ7z4P
 zw+M3vpFQylTMn3yvzxBWmvCDsMj3O69IImBS8d3aWP8AnFtrE+0tfMnt+AqDD+pHD8e
 K+dHjPk7SQRsK9p3Rshfs/cMyJz/stJOxEN8uIByvZchQpHUBy9uIKIzpQ8LQaHs5p39
 D2SQ==
X-Gm-Message-State: AOAM532gWOGteochFIrtvU+Bo3L7KoGZ9Ff9W47KCMDA9j2CXed1Q04z
 0AVUpzn2zvogg5UbFQnKcq4=
X-Google-Smtp-Source: ABdhPJxR3RHGIKgq+HHbXcePEAX7WhGDLoCsmLZDQe8hJtbdAcQlaQVcEGFDbDPSRcV72SrdVhxXvA==
X-Received: by 2002:a63:515a:: with SMTP id r26mr13133697pgl.257.1615571340430; 
 Fri, 12 Mar 2021 09:49:00 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id r2sm5856455pgv.50.2021.03.12.09.48.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 09:49:00 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Mar 2021 09:48:59 -0800
Message-ID: <161557133920.10304.11424303461123255285.stgit@localhost.localdomain>
In-Reply-To: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 09/10] bna: Update driver to use
 ethtool_sprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, Kernel-team@fb.com, yisen.zhuang@huawei.com,
 gtzalik@amazon.com, simon.horman@netronome.com, haiyangz@microsoft.com,
 drivers@pensando.io, salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 rmody@marvell.com, netdev@vger.kernel.org, netanel@amazon.com,
 saeedb@amazon.com, snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

Update the bnad_get_strings to make use of ethtool_sprintf and avoid
unnecessary line wrapping. To do this we invert the logic for the string
set test and instead exit immediately if we are not working with the stats
strings. In addition the function is broken up into subfunctions for each
area so that we can simply call ethtool_sprintf once for each string in a
given subsection.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/brocade/bna/bnad_ethtool.c |  266 +++++++++--------------
 1 file changed, 105 insertions(+), 161 deletions(-)

diff --git a/drivers/net/ethernet/brocade/bna/bnad_ethtool.c b/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
index 588c4804d10a..265c2fa6bbe0 100644
--- a/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
+++ b/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
@@ -524,6 +524,68 @@ bnad_set_pauseparam(struct net_device *netdev,
 	return 0;
 }
 
+static void bnad_get_txf_strings(u8 **string, int f_num)
+{
+	ethtool_sprintf(string, "txf%d_ucast_octets", f_num);
+	ethtool_sprintf(string, "txf%d_ucast", f_num);
+	ethtool_sprintf(string, "txf%d_ucast_vlan", f_num);
+	ethtool_sprintf(string, "txf%d_mcast_octets", f_num);
+	ethtool_sprintf(string, "txf%d_mcast", f_num);
+	ethtool_sprintf(string, "txf%d_mcast_vlan", f_num);
+	ethtool_sprintf(string, "txf%d_bcast_octets", f_num);
+	ethtool_sprintf(string, "txf%d_bcast", f_num);
+	ethtool_sprintf(string, "txf%d_bcast_vlan", f_num);
+	ethtool_sprintf(string, "txf%d_errors", f_num);
+	ethtool_sprintf(string, "txf%d_filter_vlan", f_num);
+	ethtool_sprintf(string, "txf%d_filter_mac_sa", f_num);
+}
+
+static void bnad_get_rxf_strings(u8 **string, int f_num)
+{
+	ethtool_sprintf(string, "rxf%d_ucast_octets", f_num);
+	ethtool_sprintf(string, "rxf%d_ucast", f_num);
+	ethtool_sprintf(string, "rxf%d_ucast_vlan", f_num);
+	ethtool_sprintf(string, "rxf%d_mcast_octets", f_num);
+	ethtool_sprintf(string, "rxf%d_mcast", f_num);
+	ethtool_sprintf(string, "rxf%d_mcast_vlan", f_num);
+	ethtool_sprintf(string, "rxf%d_bcast_octets", f_num);
+	ethtool_sprintf(string, "rxf%d_bcast", f_num);
+	ethtool_sprintf(string, "rxf%d_bcast_vlan", f_num);
+	ethtool_sprintf(string, "rxf%d_frame_drops", f_num);
+}
+
+static void bnad_get_cq_strings(u8 **string, int q_num)
+{
+	ethtool_sprintf(string, "cq%d_producer_index", q_num);
+	ethtool_sprintf(string, "cq%d_consumer_index", q_num);
+	ethtool_sprintf(string, "cq%d_hw_producer_index", q_num);
+	ethtool_sprintf(string, "cq%d_intr", q_num);
+	ethtool_sprintf(string, "cq%d_poll", q_num);
+	ethtool_sprintf(string, "cq%d_schedule", q_num);
+	ethtool_sprintf(string, "cq%d_keep_poll", q_num);
+	ethtool_sprintf(string, "cq%d_complete", q_num);
+}
+
+static void bnad_get_rxq_strings(u8 **string, int q_num)
+{
+	ethtool_sprintf(string, "rxq%d_packets", q_num);
+	ethtool_sprintf(string, "rxq%d_bytes", q_num);
+	ethtool_sprintf(string, "rxq%d_packets_with_error", q_num);
+	ethtool_sprintf(string, "rxq%d_allocbuf_failed", q_num);
+	ethtool_sprintf(string, "rxq%d_mapbuf_failed", q_num);
+	ethtool_sprintf(string, "rxq%d_producer_index", q_num);
+	ethtool_sprintf(string, "rxq%d_consumer_index", q_num);
+}
+
+static void bnad_get_txq_strings(u8 **string, int q_num)
+{
+	ethtool_sprintf(string, "txq%d_packets", q_num);
+	ethtool_sprintf(string, "txq%d_bytes", q_num);
+	ethtool_sprintf(string, "txq%d_producer_index", q_num);
+	ethtool_sprintf(string, "txq%d_consumer_index", q_num);
+	ethtool_sprintf(string, "txq%d_hw_consumer_index", q_num);
+}
+
 static void
 bnad_get_strings(struct net_device *netdev, u32 stringset, u8 *string)
 {
@@ -531,175 +593,57 @@ bnad_get_strings(struct net_device *netdev, u32 stringset, u8 *string)
 	int i, j, q_num;
 	u32 bmap;
 
+	if (stringset != ETH_SS_STATS)
+		return;
+
 	mutex_lock(&bnad->conf_mutex);
 
-	switch (stringset) {
-	case ETH_SS_STATS:
-		for (i = 0; i < BNAD_ETHTOOL_STATS_NUM; i++) {
-			BUG_ON(!(strlen(bnad_net_stats_strings[i]) <
-				   ETH_GSTRING_LEN));
-			strncpy(string, bnad_net_stats_strings[i],
-				ETH_GSTRING_LEN);
-			string += ETH_GSTRING_LEN;
-		}
-		bmap = bna_tx_rid_mask(&bnad->bna);
-		for (i = 0; bmap; i++) {
-			if (bmap & 1) {
-				sprintf(string, "txf%d_ucast_octets", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_ucast", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_ucast_vlan", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_mcast_octets", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_mcast", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_mcast_vlan", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_bcast_octets", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_bcast", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_bcast_vlan", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_errors", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_filter_vlan", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txf%d_filter_mac_sa", i);
-				string += ETH_GSTRING_LEN;
-			}
-			bmap >>= 1;
-		}
+	for (i = 0; i < BNAD_ETHTOOL_STATS_NUM; i++) {
+		BUG_ON(!(strlen(bnad_net_stats_strings[i]) < ETH_GSTRING_LEN));
+		ethtool_sprintf(&string, bnad_net_stats_strings[i]);
+	}
 
-		bmap = bna_rx_rid_mask(&bnad->bna);
-		for (i = 0; bmap; i++) {
-			if (bmap & 1) {
-				sprintf(string, "rxf%d_ucast_octets", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_ucast", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_ucast_vlan", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_mcast_octets", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_mcast", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_mcast_vlan", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_bcast_octets", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_bcast", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_bcast_vlan", i);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxf%d_frame_drops", i);
-				string += ETH_GSTRING_LEN;
-			}
-			bmap >>= 1;
-		}
+	bmap = bna_tx_rid_mask(&bnad->bna);
+	for (i = 0; bmap; i++) {
+		if (bmap & 1)
+			bnad_get_txf_strings(&string, i);
+		bmap >>= 1;
+	}
 
-		q_num = 0;
-		for (i = 0; i < bnad->num_rx; i++) {
-			if (!bnad->rx_info[i].rx)
-				continue;
-			for (j = 0; j < bnad->num_rxp_per_rx; j++) {
-				sprintf(string, "cq%d_producer_index", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "cq%d_consumer_index", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "cq%d_hw_producer_index",
-					q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "cq%d_intr", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "cq%d_poll", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "cq%d_schedule", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "cq%d_keep_poll", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "cq%d_complete", q_num);
-				string += ETH_GSTRING_LEN;
-				q_num++;
-			}
-		}
+	bmap = bna_rx_rid_mask(&bnad->bna);
+	for (i = 0; bmap; i++, bmap >>= 1) {
+		if (bmap & 1)
+			bnad_get_rxf_strings(&string, i);
+		bmap >>= 1;
+	}
 
-		q_num = 0;
-		for (i = 0; i < bnad->num_rx; i++) {
-			if (!bnad->rx_info[i].rx)
-				continue;
-			for (j = 0; j < bnad->num_rxp_per_rx; j++) {
-				sprintf(string, "rxq%d_packets", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxq%d_bytes", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxq%d_packets_with_error",
-								q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxq%d_allocbuf_failed", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxq%d_mapbuf_failed", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxq%d_producer_index", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "rxq%d_consumer_index", q_num);
-				string += ETH_GSTRING_LEN;
-				q_num++;
-				if (bnad->rx_info[i].rx_ctrl[j].ccb &&
-					bnad->rx_info[i].rx_ctrl[j].ccb->
-					rcb[1] &&
-					bnad->rx_info[i].rx_ctrl[j].ccb->
-					rcb[1]->rxq) {
-					sprintf(string, "rxq%d_packets", q_num);
-					string += ETH_GSTRING_LEN;
-					sprintf(string, "rxq%d_bytes", q_num);
-					string += ETH_GSTRING_LEN;
-					sprintf(string,
-					"rxq%d_packets_with_error", q_num);
-					string += ETH_GSTRING_LEN;
-					sprintf(string, "rxq%d_allocbuf_failed",
-								q_num);
-					string += ETH_GSTRING_LEN;
-					sprintf(string, "rxq%d_mapbuf_failed",
-						q_num);
-					string += ETH_GSTRING_LEN;
-					sprintf(string, "rxq%d_producer_index",
-								q_num);
-					string += ETH_GSTRING_LEN;
-					sprintf(string, "rxq%d_consumer_index",
-								q_num);
-					string += ETH_GSTRING_LEN;
-					q_num++;
-				}
-			}
-		}
+	q_num = 0;
+	for (i = 0; i < bnad->num_rx; i++) {
+		if (!bnad->rx_info[i].rx)
+			continue;
+		for (j = 0; j < bnad->num_rxp_per_rx; j++)
+			bnad_get_cq_strings(&string, q_num++);
+	}
 
-		q_num = 0;
-		for (i = 0; i < bnad->num_tx; i++) {
-			if (!bnad->tx_info[i].tx)
-				continue;
-			for (j = 0; j < bnad->num_txq_per_tx; j++) {
-				sprintf(string, "txq%d_packets", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txq%d_bytes", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txq%d_producer_index", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txq%d_consumer_index", q_num);
-				string += ETH_GSTRING_LEN;
-				sprintf(string, "txq%d_hw_consumer_index",
-									q_num);
-				string += ETH_GSTRING_LEN;
-				q_num++;
-			}
+	q_num = 0;
+	for (i = 0; i < bnad->num_rx; i++) {
+		if (!bnad->rx_info[i].rx)
+			continue;
+		for (j = 0; j < bnad->num_rxp_per_rx; j++) {
+			bnad_get_rxq_strings(&string, q_num++);
+			if (bnad->rx_info[i].rx_ctrl[j].ccb &&
+			    bnad->rx_info[i].rx_ctrl[j].ccb->rcb[1] &&
+			    bnad->rx_info[i].rx_ctrl[j].ccb->rcb[1]->rxq)
+				bnad_get_rxq_strings(&string, q_num++);
 		}
+	}
 
-		break;
-
-	default:
-		break;
+	q_num = 0;
+	for (i = 0; i < bnad->num_tx; i++) {
+		if (!bnad->tx_info[i].tx)
+			continue;
+		for (j = 0; j < bnad->num_txq_per_tx; j++)
+			bnad_get_txq_strings(&string, q_num++);
 	}
 
 	mutex_unlock(&bnad->conf_mutex);


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
