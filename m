Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 317AA339568
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 18:48:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B35616FAFA;
	Fri, 12 Mar 2021 17:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxqZ9sEGbU0l; Fri, 12 Mar 2021 17:48:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4185D60661;
	Fri, 12 Mar 2021 17:48:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1ACE1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDC8A42FD7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVKEg_uB_45M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 17:48:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FE1442FD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:29 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id a8so5750529plp.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=3AHErhEHGN938tIzQruxid7y1CsGWelYDXd4QUDtm4g=;
 b=EWndKXAfNQ3ulOCiXNcp8uZ7EVChMMDTPLsNuCJYunNkErZjaEvO9X8FyJ0pn5X/VP
 +ISeUWxSfNGmJ5uOvXMTfi47+PKGCu78Wr6pjby/1vPPejESDlZA4hiC3PBVfK3zI4Vc
 wIkdUJkkNrCTh1/53C9hxaQFQSbVZpz5xb2n3vVbixb9i7Qp3NO8T49GyNas0TMLXS1V
 VVljr+esnguBuBC5Z46BxLYAWF1ZuN8B4AcYOVd79Bum68AtgWSHkA4M4xR58BsUABs1
 ak7TpCNYl7Cd87O/S3gWxD0evsogeoh18o5NfV+I6GLW6ExQ1ews3wS+Sf1yyLee6ZTR
 Qk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=3AHErhEHGN938tIzQruxid7y1CsGWelYDXd4QUDtm4g=;
 b=Z+7TPSMZCd5Q2GYclS3hkJreUxVlQ5nInibjs3XreXUfu7eh/IWOrloTfVOen60+lo
 miHBkW0bqm5AujsvCpbKw3i3xQsq0nuPdj4BoGBRjQgVGPNG1qxMADHpd7Y22iroSInE
 bylo79sXpnuLt6P0Q/wbmdD8kqeJpFdvVjTTLP7HWNuaCUqA54x9SE9tI/Vgt4wAok7J
 OOOf3pugrF2d3gk8pmM3NJ9zffeq28NGfvRxv2FSvSzl0dcE0OouU+sQrT1Hobdg6BCM
 DpQSMonHAeISVtPWFsO5TJOjBW4Mc98jcSn2fl0B6DaBWRHeeeYQwEFajEXGlotgpcke
 vIMg==
X-Gm-Message-State: AOAM533asx5rjDwYlcj6TRXrG6bRhVUPhH51n8ew11bChB04RUFoFohB
 asYKa6ic9Zio3RI6+82E/P8=
X-Google-Smtp-Source: ABdhPJzZcCepy+mQTHtU5zRYzc1sZ7rsmQyBKJUh5/alsPH/3YiX8YuCxFn5RnhmxflhMAKbez6Nyw==
X-Received: by 2002:a17:902:7881:b029:e6:2bc6:b74 with SMTP id
 q1-20020a1709027881b02900e62bc60b74mr180906pll.13.1615571308486; 
 Fri, 12 Mar 2021 09:48:28 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id q205sm6469834pfc.126.2021.03.12.09.48.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 09:48:28 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Mar 2021 09:48:27 -0800
Message-ID: <161557130706.10304.2066531484179147837.stgit@localhost.localdomain>
In-Reply-To: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 04/10] hisilicon: Update drivers
 to use ethtool_sprintf
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
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c |    7 -
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c  |   37 +++-----
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c  |   89 ++++++------------
 .../net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c    |    6 -
 drivers/net/ethernet/hisilicon/hns/hns_ethtool.c   |   97 +++++++-------------
 5 files changed, 82 insertions(+), 154 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
index 7fb7a419607d..91b64db91e51 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
@@ -693,11 +693,8 @@ static void hns_gmac_get_strings(u32 stringset, u8 *data)
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
index d0f8b1fff333..f331621fcc41 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c
@@ -465,30 +465,19 @@ void hns_ppe_get_strings(struct hns_ppe_cb *ppe_cb, int stringset, u8 *data)
 	char *buff = (char *)data;
 	int index = ppe_cb->index;
 
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
index b6c8910cf7ba..f9f0736a2c63 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c
@@ -934,64 +934,37 @@ void hns_rcb_get_strings(int stringset, u8 *data, int index)
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
index 7e3609ce112a..ecba680e2573 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
@@ -764,10 +764,8 @@ static void hns_xgmac_get_strings(u32 stringset, u8 *data)
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
index a6e3f07caf99..2f04247b0fe0 100644
--- a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
@@ -903,72 +903,43 @@ static void hns_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
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
 
 		h->dev->ops->get_strings(h, stringset, (u8 *)buff);
 	}


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
