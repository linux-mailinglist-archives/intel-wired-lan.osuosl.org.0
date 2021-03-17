Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FD133E2A7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:31:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D559838DB;
	Wed, 17 Mar 2021 00:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0Nup5z179C6; Wed, 17 Mar 2021 00:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5386834C7;
	Wed, 17 Mar 2021 00:31:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E48D1BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A9DA6F48C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RPL4nwVmFHhu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:31:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com
 [IPv6:2607:f8b0:4864:20::f34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DAF2E605E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:07 +0000 (UTC)
Received: by mail-qv1-xf34.google.com with SMTP id g8so632582qvx.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=W9YkJURP1KJzklV3BOmkYPqUqXy2ETjWa4ItDVzA20M=;
 b=i2QrjQuX/NfP/AE+m+jAskWVRx9CCeErYvvgdwDVM6Bi798CGnzE9j2fTb+UAWSnYE
 QqXuYwRqXDNPWyiIuiMpjXVfh/v2QCQIAWqlohuDtk7SNvObyPJzp61M0wU+cJe7wzt1
 JZu02JrZpjMfOleC6tFoB+YKo36qgF4fue7Om0w2nc5XPGy+3J1ZvEe+SNnatqeQ9jZG
 6IfHZrAEzYsPNildPMe0fGQ/lZiWqqj7VoYxOaqGqtW0PnYOkNwYIlT8nJwS5hTgZvCm
 WojcwfNtclGEZix7mbfxf6CNYGm82J7xEF4G1ACFKiHyIdPLqq9UKlcZBHPqq/zrvzh9
 eT0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=W9YkJURP1KJzklV3BOmkYPqUqXy2ETjWa4ItDVzA20M=;
 b=YM0vHnyyiPhmoS0QvRiMi0hBkBUrOzC0zADCTApgu1DuP0T3+i7Q94KrwXTNWxNcH9
 HFku6HLvDww4QMsVxKqQtAcLFBggH5Ym1ep2nCy0pGFqYJldLQeq4nkw2JFc3uY/eFgZ
 ZSaT+WOQ6AeLjxhPIcEMS2UcwbOOW6jI10s9u7wPU2pnOuZOK69PJS7eXMHpi36E5mDl
 7N775DLScvDwUpu1hiPVJADDh1C1BVAKOQq+GyovpKx/+EbuaW5TvH6f3NjrZ5d79W2z
 5NF4WMr/n7GaEQqls6fzBN0HtiBSoE5PRpi8Cslbx7QqrYxovcIEHGo8u9v8r4tiZCRD
 0AVw==
X-Gm-Message-State: AOAM532ZMvIQjYgSYrRg1i/XZ9cyO5Ev5tmIhZ64ADvhwSXdV5KsGJmf
 cMirOShtQbCkFQ6NDpZSOl8=
X-Google-Smtp-Source: ABdhPJzVrjExFVsKQunFSXBl3n0FJHKAp04J9aGezFclrtyD3YLQmAG/Ui4CDRh7lz5Zw6w5zRJsDw==
X-Received: by 2002:a05:6214:262a:: with SMTP id
 gv10mr2765606qvb.50.1615941066667; 
 Tue, 16 Mar 2021 17:31:06 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id x22sm12258509qts.41.2021.03.16.17.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:31:06 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:31:03 -0700
Message-ID: <161594106308.5644.18113740421677345254.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 04/10] hisilicon: Update
 drivers to use ethtool_sprintf
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

Update the hisilicon drivers to make use of ethtool_sprintf. The general
idea is to reduce code size and overhead by replacing the repeated pattern
of string printf statements and ETH_STRING_LEN counter increments.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c |    9 +-
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c  |   41 +++-----
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c  |   91 ++++++------------
 .../net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c    |    8 +-
 drivers/net/ethernet/hisilicon/hns/hns_ethtool.c   |  103 +++++++-------------
 5 files changed, 90 insertions(+), 162 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
index 7fb7a419607d..04878b145626 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
@@ -687,17 +687,14 @@ static void hns_gmac_get_stats(void *mac_drv, u64 *data)
 
 static void hns_gmac_get_strings(u32 stringset, u8 *data)
 {
-	char *buff = (char *)data;
+	u8 *buff = data;
 	u32 i;
 
 	if (stringset != ETH_SS_STATS)
 		return;
 
-	for (i = 0; i < ARRAY_SIZE(g_gmac_stats_string); i++) {
-		snprintf(buff, ETH_GSTRING_LEN, "%s",
-			 g_gmac_stats_string[i].desc);
-		buff = buff + ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < ARRAY_SIZE(g_gmac_stats_string); i++)
+		ethtool_sprintf(&buff, g_gmac_stats_string[i].desc);
 }
 
 static int hns_gmac_get_sset_count(int stringset)
diff --git a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c
index d0f8b1fff333..ff03cafccb66 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c
@@ -462,33 +462,22 @@ int hns_ppe_get_regs_count(void)
  */
 void hns_ppe_get_strings(struct hns_ppe_cb *ppe_cb, int stringset, u8 *data)
 {
-	char *buff = (char *)data;
 	int index = ppe_cb->index;
-
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_rx_sw_pkt", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_rx_pkt_ok", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_rx_drop_pkt_no_bd", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_rx_alloc_buf_fail", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_rx_alloc_buf_wait", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_rx_pkt_drop_no_buf", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_rx_pkt_err_fifo_full", index);
-	buff = buff + ETH_GSTRING_LEN;
-
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_tx_bd", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_tx_pkt", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_tx_pkt_ok", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_tx_pkt_err_fifo_empty", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "ppe%d_tx_pkt_err_csum_fail", index);
+	u8 *buff = data;
+
+	ethtool_sprintf(&buff, "ppe%d_rx_sw_pkt", index);
+	ethtool_sprintf(&buff, "ppe%d_rx_pkt_ok", index);
+	ethtool_sprintf(&buff, "ppe%d_rx_drop_pkt_no_bd", index);
+	ethtool_sprintf(&buff, "ppe%d_rx_alloc_buf_fail", index);
+	ethtool_sprintf(&buff, "ppe%d_rx_alloc_buf_wait", index);
+	ethtool_sprintf(&buff, "ppe%d_rx_pkt_drop_no_buf", index);
+	ethtool_sprintf(&buff, "ppe%d_rx_pkt_err_fifo_full", index);
+
+	ethtool_sprintf(&buff, "ppe%d_tx_bd", index);
+	ethtool_sprintf(&buff, "ppe%d_tx_pkt", index);
+	ethtool_sprintf(&buff, "ppe%d_tx_pkt_ok", index);
+	ethtool_sprintf(&buff, "ppe%d_tx_pkt_err_fifo_empty", index);
+	ethtool_sprintf(&buff, "ppe%d_tx_pkt_err_csum_fail", index);
 }
 
 void hns_ppe_get_stats(struct hns_ppe_cb *ppe_cb, u64 *data)
diff --git a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c
index b6c8910cf7ba..37c8effa421c 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c
@@ -929,69 +929,42 @@ int hns_rcb_get_ring_regs_count(void)
  */
 void hns_rcb_get_strings(int stringset, u8 *data, int index)
 {
-	char *buff = (char *)data;
+	u8 *buff = data;
 
 	if (stringset != ETH_SS_STATS)
 		return;
 
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_rcb_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_ppe_tx_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_ppe_drop_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_fbd_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_bytes", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_err_cnt", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_io_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_sw_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_seg_pkt", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_restart_queue", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "tx_ring%d_tx_busy", index);
-	buff = buff + ETH_GSTRING_LEN;
-
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_rcb_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_ppe_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_ppe_drop_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_fbd_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_pkt_num", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_bytes", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_err_cnt", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_io_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_sw_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_seg_pkt", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_reuse_pg", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_len_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_non_vld_desc_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_bd_num_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_l2_err", index);
-	buff = buff + ETH_GSTRING_LEN;
-	snprintf(buff, ETH_GSTRING_LEN, "rx_ring%d_l3l4csum_err", index);
+	ethtool_sprintf(&buff, "tx_ring%d_rcb_pkt_num", index);
+	ethtool_sprintf(&buff, "tx_ring%d_ppe_tx_pkt_num", index);
+	ethtool_sprintf(&buff, "tx_ring%d_ppe_drop_pkt_num", index);
+	ethtool_sprintf(&buff, "tx_ring%d_fbd_num", index);
+
+	ethtool_sprintf(&buff, "tx_ring%d_pkt_num", index);
+	ethtool_sprintf(&buff, "tx_ring%d_bytes", index);
+	ethtool_sprintf(&buff, "tx_ring%d_err_cnt", index);
+	ethtool_sprintf(&buff, "tx_ring%d_io_err", index);
+	ethtool_sprintf(&buff, "tx_ring%d_sw_err", index);
+	ethtool_sprintf(&buff, "tx_ring%d_seg_pkt", index);
+	ethtool_sprintf(&buff, "tx_ring%d_restart_queue", index);
+	ethtool_sprintf(&buff, "tx_ring%d_tx_busy", index);
+
+	ethtool_sprintf(&buff, "rx_ring%d_rcb_pkt_num", index);
+	ethtool_sprintf(&buff, "rx_ring%d_ppe_pkt_num", index);
+	ethtool_sprintf(&buff, "rx_ring%d_ppe_drop_pkt_num", index);
+	ethtool_sprintf(&buff, "rx_ring%d_fbd_num", index);
+
+	ethtool_sprintf(&buff, "rx_ring%d_pkt_num", index);
+	ethtool_sprintf(&buff, "rx_ring%d_bytes", index);
+	ethtool_sprintf(&buff, "rx_ring%d_err_cnt", index);
+	ethtool_sprintf(&buff, "rx_ring%d_io_err", index);
+	ethtool_sprintf(&buff, "rx_ring%d_sw_err", index);
+	ethtool_sprintf(&buff, "rx_ring%d_seg_pkt", index);
+	ethtool_sprintf(&buff, "rx_ring%d_reuse_pg", index);
+	ethtool_sprintf(&buff, "rx_ring%d_len_err", index);
+	ethtool_sprintf(&buff, "rx_ring%d_non_vld_desc_err", index);
+	ethtool_sprintf(&buff, "rx_ring%d_bd_num_err", index);
+	ethtool_sprintf(&buff, "rx_ring%d_l2_err", index);
+	ethtool_sprintf(&buff, "rx_ring%d_l3l4csum_err", index);
 }
 
 void hns_rcb_get_common_regs(struct rcb_common_cb *rcb_com, void *data)
diff --git a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
index 7e3609ce112a..f5145451ba6f 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
@@ -758,16 +758,14 @@ static void hns_xgmac_get_stats(void *mac_drv, u64 *data)
  */
 static void hns_xgmac_get_strings(u32 stringset, u8 *data)
 {
-	char *buff = (char *)data;
+	u8 *buff = data;
 	u32 i;
 
 	if (stringset != ETH_SS_STATS)
 		return;
 
-	for (i = 0; i < ARRAY_SIZE(g_xgmac_stats_string); i++) {
-		snprintf(buff, ETH_GSTRING_LEN, g_xgmac_stats_string[i].desc);
-		buff = buff + ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < ARRAY_SIZE(g_xgmac_stats_string); i++)
+		ethtool_sprintf(&buff, g_xgmac_stats_string[i].desc);
 }
 
 /**
diff --git a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
index a6e3f07caf99..1af664779d33 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
@@ -895,7 +895,7 @@ static void hns_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 {
 	struct hns_nic_priv *priv = netdev_priv(netdev);
 	struct hnae_handle *h = priv->ae_handle;
-	char *buff = (char *)data;
+	u8 *buff = data;
 
 	if (!h->dev->ops->get_strings) {
 		netdev_err(netdev, "h->dev->ops->get_strings is null!\n");
@@ -903,74 +903,45 @@ static void hns_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 	}
 
 	if (stringset == ETH_SS_TEST) {
-		if (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII) {
-			memcpy(buff, hns_nic_test_strs[MAC_INTERNALLOOP_MAC],
-			       ETH_GSTRING_LEN);
-			buff += ETH_GSTRING_LEN;
-		}
-		memcpy(buff, hns_nic_test_strs[MAC_INTERNALLOOP_SERDES],
-		       ETH_GSTRING_LEN);
-		buff += ETH_GSTRING_LEN;
+		if (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII)
+			ethtool_sprintf(&buff,
+					hns_nic_test_strs[MAC_INTERNALLOOP_MAC]);
+		ethtool_sprintf(&buff,
+				hns_nic_test_strs[MAC_INTERNALLOOP_SERDES]);
 		if ((netdev->phydev) && (!netdev->phydev->is_c45))
-			memcpy(buff, hns_nic_test_strs[MAC_INTERNALLOOP_PHY],
-			       ETH_GSTRING_LEN);
+			ethtool_sprintf(&buff,
+					hns_nic_test_strs[MAC_INTERNALLOOP_PHY]);
 
 	} else {
-		snprintf(buff, ETH_GSTRING_LEN, "rx_packets");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_packets");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_bytes");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_bytes");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_dropped");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_dropped");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "multicast");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "collisions");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_over_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_crc_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_frame_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_fifo_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_missed_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_aborted_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_carrier_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_fifo_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_heartbeat_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_length_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_window_errors");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "rx_compressed");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "tx_compressed");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "netdev_rx_dropped");
-		buff = buff + ETH_GSTRING_LEN;
-		snprintf(buff, ETH_GSTRING_LEN, "netdev_tx_dropped");
-		buff = buff + ETH_GSTRING_LEN;
-
-		snprintf(buff, ETH_GSTRING_LEN, "netdev_tx_timeout");
-		buff = buff + ETH_GSTRING_LEN;
-
-		h->dev->ops->get_strings(h, stringset, (u8 *)buff);
+		ethtool_sprintf(&buff, "rx_packets");
+		ethtool_sprintf(&buff, "tx_packets");
+		ethtool_sprintf(&buff, "rx_bytes");
+		ethtool_sprintf(&buff, "tx_bytes");
+		ethtool_sprintf(&buff, "rx_errors");
+		ethtool_sprintf(&buff, "tx_errors");
+		ethtool_sprintf(&buff, "rx_dropped");
+		ethtool_sprintf(&buff, "tx_dropped");
+		ethtool_sprintf(&buff, "multicast");
+		ethtool_sprintf(&buff, "collisions");
+		ethtool_sprintf(&buff, "rx_over_errors");
+		ethtool_sprintf(&buff, "rx_crc_errors");
+		ethtool_sprintf(&buff, "rx_frame_errors");
+		ethtool_sprintf(&buff, "rx_fifo_errors");
+		ethtool_sprintf(&buff, "rx_missed_errors");
+		ethtool_sprintf(&buff, "tx_aborted_errors");
+		ethtool_sprintf(&buff, "tx_carrier_errors");
+		ethtool_sprintf(&buff, "tx_fifo_errors");
+		ethtool_sprintf(&buff, "tx_heartbeat_errors");
+		ethtool_sprintf(&buff, "rx_length_errors");
+		ethtool_sprintf(&buff, "tx_window_errors");
+		ethtool_sprintf(&buff, "rx_compressed");
+		ethtool_sprintf(&buff, "tx_compressed");
+		ethtool_sprintf(&buff, "netdev_rx_dropped");
+		ethtool_sprintf(&buff, "netdev_tx_dropped");
+
+		ethtool_sprintf(&buff, "netdev_tx_timeout");
+
+		h->dev->ops->get_strings(h, stringset, buff);
 	}
 }
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
