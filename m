Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E7C3369C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D16B6606B8;
	Thu, 11 Mar 2021 01:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PcyKXdTHmNr5; Thu, 11 Mar 2021 01:36:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CBE860671;
	Thu, 11 Mar 2021 01:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C03EF1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC1BE6067C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EPtejX-EI3Xp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:36:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C172960666
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:12 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id ha17so1885611pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=DJltLUYcs98/kijveBfZyUaWDIHwVhRt97pqpufw9i0=;
 b=scU65pB6xFpMzm1+8nIhbovGBVQq1DtmdBjSrEWTrUXE9VHbZuS3Lp1yFfeNpGFfxd
 Cg192aYX3oZnj0Vjf/xDZXhzxbnPGFY6nzOYMcZgXEafssYgqgiQTUElhKKRk1RSIt3w
 j6uwqDsJhAIHRrxiUgh8lfrcN5TpkjTx9T0VqizaOYxrtVhx/IlOCru4UmCjbY5kWqbK
 hsxwpPM5A2aN1K8dtdZ340qIcfmC9lMWZZV5vG9vB1Aap5phcHGC0vAoAxGZNO4njQf+
 pgr1Yh/62kmsT8+WMW12lAtChaLX09Czqn5I8v7f7yqp65WdgUmwpIhEmMacY/3e2efZ
 DjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=DJltLUYcs98/kijveBfZyUaWDIHwVhRt97pqpufw9i0=;
 b=J5NYOWuXMCr7ibHGT+HFECxSbLQADXjN8diYKxFkdDTsLaX43V6kFK3Ma/TmpF5Lk+
 YY+jZ8Zl8rwAgbahLNJOq9C18SEwNjqiuX9cpBCq1yGAXa407xqb59+ODoimb0Q3QEC/
 guXfyJJYATGNc0AcUF192REJxfAbLmDtV3nxu1BzuS6q6q6ep/Vi9nzvpaTUGr/47CB1
 rgCuVG1a7GZtYWv5ECyONPHMUwSv7I6CDXVMxEISNUTnWIPL+TwRcrngukKqt6vjWCtf
 ZBR3nAH6mQ5EUs5eWq6NCZx4H8p7E3qIexRMTaMJjdFyBH9yTGKtL+8YL69KD0XyJVsu
 yW+Q==
X-Gm-Message-State: AOAM531QBeeKUeba5eIeY3g0XqLMHqYAhkzZRW9O1im+BSY9BC+5GfOb
 So7+35Iru/kzAR0Lt+SGWHA=
X-Google-Smtp-Source: ABdhPJzYqOo5VXwSONbDqpY26hTZ33JQIrILn89H5MFVviNNdeqdtDsgwtLdyDkytIH8dBO1ybn1gQ==
X-Received: by 2002:a17:90a:5302:: with SMTP id
 x2mr6557715pjh.232.1615426572198; 
 Wed, 10 Mar 2021 17:36:12 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id e1sm518190pjm.12.2021.03.10.17.36.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:36:11 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:36:10 -0800
Message-ID: <161542657091.13546.17503493571307422104.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 09/10] bna: Update driver to use
 ethtool_gsprintf
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
 intel-wired-lan@lists.osuosl.org, yisen.zhuang@huawei.com, gtzalik@amazon.com,
 simon.horman@netronome.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

Update the bnad_get_strings to make use of ethtool_gsprintf and avoid
unnecessary line wrapping. To do this we invert the logic for the string
set test and instead exit immediately if we are not working with the stats
strings. In addition the function is broken up into subfunctions for each
area so that we can simply call ethtool_gsprintf once for each string in a
given subsection.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/brocade/bna/bnad_ethtool.c |  266 +++++++++--------------
 1 file changed, 105 insertions(+), 161 deletions(-)

diff --git a/drivers/net/ethernet/brocade/bna/bnad_ethtool.c b/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
index 588c4804d10a..9d72f896880d 100644
--- a/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
+++ b/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
@@ -524,6 +524,68 @@ bnad_set_pauseparam(struct net_device *netdev,
 	return 0;
 }
 
+static void bnad_get_txf_strings(u8 **string, int f_num)
+{
+	ethtool_gsprintf(string, "txf%d_ucast_octets", f_num);
+	ethtool_gsprintf(string, "txf%d_ucast", f_num);
+	ethtool_gsprintf(string, "txf%d_ucast_vlan", f_num);
+	ethtool_gsprintf(string, "txf%d_mcast_octets", f_num);
+	ethtool_gsprintf(string, "txf%d_mcast", f_num);
+	ethtool_gsprintf(string, "txf%d_mcast_vlan", f_num);
+	ethtool_gsprintf(string, "txf%d_bcast_octets", f_num);
+	ethtool_gsprintf(string, "txf%d_bcast", f_num);
+	ethtool_gsprintf(string, "txf%d_bcast_vlan", f_num);
+	ethtool_gsprintf(string, "txf%d_errors", f_num);
+	ethtool_gsprintf(string, "txf%d_filter_vlan", f_num);
+	ethtool_gsprintf(string, "txf%d_filter_mac_sa", f_num);
+}
+
+static void bnad_get_rxf_strings(u8 **string, int f_num)
+{
+	ethtool_gsprintf(string, "rxf%d_ucast_octets", f_num);
+	ethtool_gsprintf(string, "rxf%d_ucast", f_num);
+	ethtool_gsprintf(string, "rxf%d_ucast_vlan", f_num);
+	ethtool_gsprintf(string, "rxf%d_mcast_octets", f_num);
+	ethtool_gsprintf(string, "rxf%d_mcast", f_num);
+	ethtool_gsprintf(string, "rxf%d_mcast_vlan", f_num);
+	ethtool_gsprintf(string, "rxf%d_bcast_octets", f_num);
+	ethtool_gsprintf(string, "rxf%d_bcast", f_num);
+	ethtool_gsprintf(string, "rxf%d_bcast_vlan", f_num);
+	ethtool_gsprintf(string, "rxf%d_frame_drops", f_num);
+}
+
+static void bnad_get_cq_strings(u8 **string, int q_num)
+{
+	ethtool_gsprintf(string, "cq%d_producer_index", q_num);
+	ethtool_gsprintf(string, "cq%d_consumer_index", q_num);
+	ethtool_gsprintf(string, "cq%d_hw_producer_index", q_num);
+	ethtool_gsprintf(string, "cq%d_intr", q_num);
+	ethtool_gsprintf(string, "cq%d_poll", q_num);
+	ethtool_gsprintf(string, "cq%d_schedule", q_num);
+	ethtool_gsprintf(string, "cq%d_keep_poll", q_num);
+	ethtool_gsprintf(string, "cq%d_complete", q_num);
+}
+
+static void bnad_get_rxq_strings(u8 **string, int q_num)
+{
+	ethtool_gsprintf(string, "rxq%d_packets", q_num);
+	ethtool_gsprintf(string, "rxq%d_bytes", q_num);
+	ethtool_gsprintf(string, "rxq%d_packets_with_error", q_num);
+	ethtool_gsprintf(string, "rxq%d_allocbuf_failed", q_num);
+	ethtool_gsprintf(string, "rxq%d_mapbuf_failed", q_num);
+	ethtool_gsprintf(string, "rxq%d_producer_index", q_num);
+	ethtool_gsprintf(string, "rxq%d_consumer_index", q_num);
+}
+
+static void bnad_get_txq_strings(u8 **string, int q_num)
+{
+	ethtool_gsprintf(string, "txq%d_packets", q_num);
+	ethtool_gsprintf(string, "txq%d_bytes", q_num);
+	ethtool_gsprintf(string, "txq%d_producer_index", q_num);
+	ethtool_gsprintf(string, "txq%d_consumer_index", q_num);
+	ethtool_gsprintf(string, "txq%d_hw_consumer_index", q_num);
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
+		ethtool_gsprintf(&string, bnad_net_stats_strings[i]);
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
