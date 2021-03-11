Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C723369B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 375E742FFB;
	Thu, 11 Mar 2021 01:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6CjARGYyMtpq; Thu, 11 Mar 2021 01:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD0A94300C;
	Thu, 11 Mar 2021 01:35:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68BC41BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5754F60649
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0bDsvy5gxIQv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:35:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87151600C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:34 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id j6so9419526plx.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=m0otFb6AnbGVYV3zd44lNY0Yw52LsGJQVA35MU39ENQ=;
 b=oCWmMkJsohBdbkUZC13x+MCZXzTqrLkYxBmmsvDUDSDQGyKbx7wOL1HDxjO7bV1oRc
 1W2ex2sKISR0ZH0wMLEQyMa7pUMIPBrHdjbcCfHXDhjyBr7yM3DbISSdwEhNgBGLxyPt
 oespJ0WVHUM1jrCIVlOhdwPSTzfFy1Q6hiwLLC7yie0fq/XbwVTxhygY0/+PHcZtCf1u
 Aw+ZhoUuwjZ2dZw+cVPRJrmmoFTc9HFTvZOpNfzKiblXKiG2/jUHHJWQdaP7VQFBY9yX
 FmQcCT3yof+Zf8PI7KdJhPXZjWgSW8qvFQ8moNm24SrqwWAuyWGGyukvsfUBnJituFG5
 woUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=m0otFb6AnbGVYV3zd44lNY0Yw52LsGJQVA35MU39ENQ=;
 b=svdGFXXlVFYziXCy8mtTA6HMBB5fs3gKXhHOALCx5Wwe0av0M2ruG8wWyht09oSXeY
 m6ax3Mcnf1++oxEmjE84GRbvh9wH4qD8YkDOZjrtfsJmoGWY0S+ig2Bl8fE7L+96/hwL
 VZWnIPOBpVImocw5OZxh20qtyc85ZSMD5N7wN3Oz3tq18RzilmQv+MSkvkGLXjPaFF5l
 DNFkEBpGp4BovH48a9XNcE5lskVak9BC7N5DTDVAqChZdpO3uH5jcOoJypwIyypO6TQK
 CAmfAlb4gY6I8SyNs5x8xDeb+tH0OmjK63Vh3Jj6Hn5VIEk8/4c+F3VpZqZy+Dn3PFgG
 kxfg==
X-Gm-Message-State: AOAM533n5gbZL9NAcDQ1gxClGohMrdvkxh+etQRMVaxH0fihZmPQ7HwG
 Wn3hSOI83N3Uleut3K/tYQ0=
X-Google-Smtp-Source: ABdhPJwpZiATauy1Mu+EyfJ1ZAR7zYSpBFBLue2naiFUkl0t0kpxN3GpttbJXJpe6ntHh01Wnvp5dA==
X-Received: by 2002:a17:90a:17c3:: with SMTP id
 q61mr6183465pja.58.1615426533904; 
 Wed, 10 Mar 2021 17:35:33 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id z22sm651021pfa.41.2021.03.10.17.35.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:35:33 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:35:32 -0800
Message-ID: <161542653266.13546.11914667071718045956.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 03/10] nfp: Replace nfp_pr_et with
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

The nfp_pr_et function is nearly identical to ethtool_gsprintf except for
the fact that it passes the pointer by value and as a return whereas
ethtool_gsprintf passes it as a pointer.

Since they are so close just update nfp to make use of ethtool_gsprintf

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/netronome/nfp/abm/main.c      |    4 +
 .../net/ethernet/netronome/nfp/nfp_net_ethtool.c   |   79 +++++++++-----------
 drivers/net/ethernet/netronome/nfp/nfp_port.h      |    2 -
 3 files changed, 36 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/netronome/nfp/abm/main.c b/drivers/net/ethernet/netronome/nfp/abm/main.c
index bdbf0726145e..3e8a9a7d7327 100644
--- a/drivers/net/ethernet/netronome/nfp/abm/main.c
+++ b/drivers/net/ethernet/netronome/nfp/abm/main.c
@@ -419,8 +419,8 @@ nfp_abm_port_get_stats_strings(struct nfp_app *app, struct nfp_port *port,
 		return data;
 	alink = repr->app_priv;
 	for (i = 0; i < alink->vnic->dp.num_r_vecs; i++) {
-		data = nfp_pr_et(data, "q%u_no_wait", i);
-		data = nfp_pr_et(data, "q%u_delayed", i);
+		ethtool_gsprintf(&data, "q%u_no_wait", i);
+		ethtool_gsprintf(&data, "q%u_delayed", i);
 	}
 	return data;
 }
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
index 9c9ae33d84ce..33097c411d7d 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
@@ -429,17 +429,6 @@ static int nfp_net_set_ringparam(struct net_device *netdev,
 	return nfp_net_set_ring_size(nn, rxd_cnt, txd_cnt);
 }
 
-__printf(2, 3) u8 *nfp_pr_et(u8 *data, const char *fmt, ...)
-{
-	va_list args;
-
-	va_start(args, fmt);
-	vsnprintf(data, ETH_GSTRING_LEN, fmt, args);
-	va_end(args);
-
-	return data + ETH_GSTRING_LEN;
-}
-
 static unsigned int nfp_vnic_get_sw_stats_count(struct net_device *netdev)
 {
 	struct nfp_net *nn = netdev_priv(netdev);
@@ -454,29 +443,29 @@ static u8 *nfp_vnic_get_sw_stats_strings(struct net_device *netdev, u8 *data)
 	int i;
 
 	for (i = 0; i < nn->max_r_vecs; i++) {
-		data = nfp_pr_et(data, "rvec_%u_rx_pkts", i);
-		data = nfp_pr_et(data, "rvec_%u_tx_pkts", i);
-		data = nfp_pr_et(data, "rvec_%u_tx_busy", i);
+		ethtool_gsprintf(&data, "rvec_%u_rx_pkts", i);
+		ethtool_gsprintf(&data, "rvec_%u_tx_pkts", i);
+		ethtool_gsprintf(&data, "rvec_%u_tx_busy", i);
 	}
 
-	data = nfp_pr_et(data, "hw_rx_csum_ok");
-	data = nfp_pr_et(data, "hw_rx_csum_inner_ok");
-	data = nfp_pr_et(data, "hw_rx_csum_complete");
-	data = nfp_pr_et(data, "hw_rx_csum_err");
-	data = nfp_pr_et(data, "rx_replace_buf_alloc_fail");
-	data = nfp_pr_et(data, "rx_tls_decrypted_packets");
-	data = nfp_pr_et(data, "hw_tx_csum");
-	data = nfp_pr_et(data, "hw_tx_inner_csum");
-	data = nfp_pr_et(data, "tx_gather");
-	data = nfp_pr_et(data, "tx_lso");
-	data = nfp_pr_et(data, "tx_tls_encrypted_packets");
-	data = nfp_pr_et(data, "tx_tls_ooo");
-	data = nfp_pr_et(data, "tx_tls_drop_no_sync_data");
-
-	data = nfp_pr_et(data, "hw_tls_no_space");
-	data = nfp_pr_et(data, "rx_tls_resync_req_ok");
-	data = nfp_pr_et(data, "rx_tls_resync_req_ign");
-	data = nfp_pr_et(data, "rx_tls_resync_sent");
+	ethtool_gsprintf(&data, "hw_rx_csum_ok");
+	ethtool_gsprintf(&data, "hw_rx_csum_inner_ok");
+	ethtool_gsprintf(&data, "hw_rx_csum_complete");
+	ethtool_gsprintf(&data, "hw_rx_csum_err");
+	ethtool_gsprintf(&data, "rx_replace_buf_alloc_fail");
+	ethtool_gsprintf(&data, "rx_tls_decrypted_packets");
+	ethtool_gsprintf(&data, "hw_tx_csum");
+	ethtool_gsprintf(&data, "hw_tx_inner_csum");
+	ethtool_gsprintf(&data, "tx_gather");
+	ethtool_gsprintf(&data, "tx_lso");
+	ethtool_gsprintf(&data, "tx_tls_encrypted_packets");
+	ethtool_gsprintf(&data, "tx_tls_ooo");
+	ethtool_gsprintf(&data, "tx_tls_drop_no_sync_data");
+
+	ethtool_gsprintf(&data, "hw_tls_no_space");
+	ethtool_gsprintf(&data, "rx_tls_resync_req_ok");
+	ethtool_gsprintf(&data, "rx_tls_resync_req_ign");
+	ethtool_gsprintf(&data, "rx_tls_resync_sent");
 
 	return data;
 }
@@ -550,19 +539,19 @@ nfp_vnic_get_hw_stats_strings(u8 *data, unsigned int num_vecs, bool repr)
 	swap_off = repr * NN_ET_SWITCH_STATS_LEN;
 
 	for (i = 0; i < NN_ET_SWITCH_STATS_LEN; i++)
-		data = nfp_pr_et(data, nfp_net_et_stats[i + swap_off].name);
+		ethtool_gsprintf(&data, nfp_net_et_stats[i + swap_off].name);
 
 	for (i = NN_ET_SWITCH_STATS_LEN; i < NN_ET_SWITCH_STATS_LEN * 2; i++)
-		data = nfp_pr_et(data, nfp_net_et_stats[i - swap_off].name);
+		ethtool_gsprintf(&data, nfp_net_et_stats[i - swap_off].name);
 
 	for (i = NN_ET_SWITCH_STATS_LEN * 2; i < NN_ET_GLOBAL_STATS_LEN; i++)
-		data = nfp_pr_et(data, nfp_net_et_stats[i].name);
+		ethtool_gsprintf(&data, nfp_net_et_stats[i].name);
 
 	for (i = 0; i < num_vecs; i++) {
-		data = nfp_pr_et(data, "rxq_%u_pkts", i);
-		data = nfp_pr_et(data, "rxq_%u_bytes", i);
-		data = nfp_pr_et(data, "txq_%u_pkts", i);
-		data = nfp_pr_et(data, "txq_%u_bytes", i);
+		ethtool_gsprintf(&data, "rxq_%u_pkts", i);
+		ethtool_gsprintf(&data, "rxq_%u_bytes", i);
+		ethtool_gsprintf(&data, "txq_%u_pkts", i);
+		ethtool_gsprintf(&data, "txq_%u_bytes", i);
 	}
 
 	return data;
@@ -610,15 +599,15 @@ static u8 *nfp_vnic_get_tlv_stats_strings(struct nfp_net *nn, u8 *data)
 			memcpy(data, nfp_tlv_stat_names[id], ETH_GSTRING_LEN);
 			data += ETH_GSTRING_LEN;
 		} else {
-			data = nfp_pr_et(data, "dev_unknown_stat%u", id);
+			ethtool_gsprintf(&data, "dev_unknown_stat%u", id);
 		}
 	}
 
 	for (i = 0; i < nn->max_r_vecs; i++) {
-		data = nfp_pr_et(data, "rxq_%u_pkts", i);
-		data = nfp_pr_et(data, "rxq_%u_bytes", i);
-		data = nfp_pr_et(data, "txq_%u_pkts", i);
-		data = nfp_pr_et(data, "txq_%u_bytes", i);
+		ethtool_gsprintf(&data, "rxq_%u_pkts", i);
+		ethtool_gsprintf(&data, "rxq_%u_bytes", i);
+		ethtool_gsprintf(&data, "txq_%u_pkts", i);
+		ethtool_gsprintf(&data, "txq_%u_bytes", i);
 	}
 
 	return data;
@@ -666,7 +655,7 @@ static u8 *nfp_mac_get_stats_strings(struct net_device *netdev, u8 *data)
 		return data;
 
 	for (i = 0; i < ARRAY_SIZE(nfp_mac_et_stats); i++)
-		data = nfp_pr_et(data, "mac.%s", nfp_mac_et_stats[i].name);
+		ethtool_gsprintf(&data, "mac.%s", nfp_mac_et_stats[i].name);
 
 	return data;
 }
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_port.h b/drivers/net/ethernet/netronome/nfp/nfp_port.h
index d7fd203bb180..ae4da189d955 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_port.h
+++ b/drivers/net/ethernet/netronome/nfp/nfp_port.h
@@ -92,8 +92,6 @@ struct nfp_port {
 
 extern const struct ethtool_ops nfp_port_ethtool_ops;
 
-__printf(2, 3) u8 *nfp_pr_et(u8 *data, const char *fmt, ...);
-
 int nfp_port_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 		      void *type_data);
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
