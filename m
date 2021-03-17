Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3039533E2A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D21C8431C7;
	Wed, 17 Mar 2021 00:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M3BUzGRypXkB; Wed, 17 Mar 2021 00:31:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DE134304B;
	Wed, 17 Mar 2021 00:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5731BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DCCE838DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M0LvgDkaq4-B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:30:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F01782F8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:30:59 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id a9so37220874qkn.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=llWoi5Oz4cqtzO38dPbZfnNzhy8uG4ghtKaDmv3GSRM=;
 b=XrCNRpN21i/k9icbjdt3zIUyPBzlYc8IdYY6Id81DH5JvlTfBCj/NuOXN6EAfgb0GF
 c3zNOwr9jvqskuAJHlmpp4m6BYHNescM8SLmGWAymGyExBLqe1zMtJ83tcy6pUfFt3Up
 V/oO5/cxp2PFmEoEXYBBglsOV1AXFn58BxAdjwq/Whi2nJ6grwFedfVFXJcSYm40VLR/
 Rw81EGmcOPQr0aUfPyi0g+R/N5PZw/I6UqjrFdnQwfmAqIi4zJOI+M+Mp0ozBC1Hk+1J
 EMjqjpA/1eiSjxIklQ0QITriKL3L4639FAJGPbvxfZOMMgXGK+4jA5J60p7oJ/HhVDmy
 8lcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=llWoi5Oz4cqtzO38dPbZfnNzhy8uG4ghtKaDmv3GSRM=;
 b=P96D9eGOrybthqGuEfWWpR5VOh32glShr6uIg1k7W/LNWsW4aoxIqlgCMWQOIj1L8b
 BYi140f70GwGZm1sz7MymaKzFldB+lsmL57lwwB3AkL7FwXy81KKmyAzxHZXs8lJOXDh
 er4KRl0ARSYSyt22x11MH7fxFaijTLZKoNig3grz+CmyzR8C2NXLBnji2wpRKeE1K7wz
 +YHT5mLZcyZ+fq92gE74QnNnH1HEAvwSj2X7PakElwQIbau6NoHSyZ1E476oG4nOzx9W
 +1IurHGTXLjoZdz12FZOMEmjV2Fd/eNXUge7jpfT3zNHsUBcxZakLNc1iqGdA7D3zick
 8cCA==
X-Gm-Message-State: AOAM5332T8J1Qlo9K6BmxUY2JIvcoUPt6PYxvoUejnTn70ch989+RWXF
 2YNYAWqwfqjbHMAs7XqXMlY=
X-Google-Smtp-Source: ABdhPJwEkVMNyU/8hDrCGgFr4Yp6mdJACl0PXrbxV//ec1YeX8u9AV6kG+WZoiZJiX5UnAklas3Hrg==
X-Received: by 2002:a05:620a:126d:: with SMTP id
 b13mr1970963qkl.122.1615941057903; 
 Tue, 16 Mar 2021 17:30:57 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id z89sm14539192qtd.5.2021.03.16.17.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:30:57 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:30:53 -0700
Message-ID: <161594105382.5644.13954561846222024517.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 03/10] nfp: Replace nfp_pr_et
 with ethtool_sprintf
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

The nfp_pr_et function is nearly identical to ethtool_sprintf except for
the fact that it passes the pointer by value and as a return whereas
ethtool_sprintf passes it as a pointer.

Since they are so close just update nfp to make use of ethtool_sprintf

Reviewed-by: Simon Horman <simon.horman@netronome.com>
Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/netronome/nfp/abm/main.c      |    4 +
 .../net/ethernet/netronome/nfp/nfp_net_ethtool.c   |   79 +++++++++-----------
 drivers/net/ethernet/netronome/nfp/nfp_port.h      |    2 -
 3 files changed, 36 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/netronome/nfp/abm/main.c b/drivers/net/ethernet/netronome/nfp/abm/main.c
index bdbf0726145e..605a1617b195 100644
--- a/drivers/net/ethernet/netronome/nfp/abm/main.c
+++ b/drivers/net/ethernet/netronome/nfp/abm/main.c
@@ -419,8 +419,8 @@ nfp_abm_port_get_stats_strings(struct nfp_app *app, struct nfp_port *port,
 		return data;
 	alink = repr->app_priv;
 	for (i = 0; i < alink->vnic->dp.num_r_vecs; i++) {
-		data = nfp_pr_et(data, "q%u_no_wait", i);
-		data = nfp_pr_et(data, "q%u_delayed", i);
+		ethtool_sprintf(&data, "q%u_no_wait", i);
+		ethtool_sprintf(&data, "q%u_delayed", i);
 	}
 	return data;
 }
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
index 9c9ae33d84ce..1b482446536d 100644
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
+		ethtool_sprintf(&data, "rvec_%u_rx_pkts", i);
+		ethtool_sprintf(&data, "rvec_%u_tx_pkts", i);
+		ethtool_sprintf(&data, "rvec_%u_tx_busy", i);
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
+	ethtool_sprintf(&data, "hw_rx_csum_ok");
+	ethtool_sprintf(&data, "hw_rx_csum_inner_ok");
+	ethtool_sprintf(&data, "hw_rx_csum_complete");
+	ethtool_sprintf(&data, "hw_rx_csum_err");
+	ethtool_sprintf(&data, "rx_replace_buf_alloc_fail");
+	ethtool_sprintf(&data, "rx_tls_decrypted_packets");
+	ethtool_sprintf(&data, "hw_tx_csum");
+	ethtool_sprintf(&data, "hw_tx_inner_csum");
+	ethtool_sprintf(&data, "tx_gather");
+	ethtool_sprintf(&data, "tx_lso");
+	ethtool_sprintf(&data, "tx_tls_encrypted_packets");
+	ethtool_sprintf(&data, "tx_tls_ooo");
+	ethtool_sprintf(&data, "tx_tls_drop_no_sync_data");
+
+	ethtool_sprintf(&data, "hw_tls_no_space");
+	ethtool_sprintf(&data, "rx_tls_resync_req_ok");
+	ethtool_sprintf(&data, "rx_tls_resync_req_ign");
+	ethtool_sprintf(&data, "rx_tls_resync_sent");
 
 	return data;
 }
@@ -550,19 +539,19 @@ nfp_vnic_get_hw_stats_strings(u8 *data, unsigned int num_vecs, bool repr)
 	swap_off = repr * NN_ET_SWITCH_STATS_LEN;
 
 	for (i = 0; i < NN_ET_SWITCH_STATS_LEN; i++)
-		data = nfp_pr_et(data, nfp_net_et_stats[i + swap_off].name);
+		ethtool_sprintf(&data, nfp_net_et_stats[i + swap_off].name);
 
 	for (i = NN_ET_SWITCH_STATS_LEN; i < NN_ET_SWITCH_STATS_LEN * 2; i++)
-		data = nfp_pr_et(data, nfp_net_et_stats[i - swap_off].name);
+		ethtool_sprintf(&data, nfp_net_et_stats[i - swap_off].name);
 
 	for (i = NN_ET_SWITCH_STATS_LEN * 2; i < NN_ET_GLOBAL_STATS_LEN; i++)
-		data = nfp_pr_et(data, nfp_net_et_stats[i].name);
+		ethtool_sprintf(&data, nfp_net_et_stats[i].name);
 
 	for (i = 0; i < num_vecs; i++) {
-		data = nfp_pr_et(data, "rxq_%u_pkts", i);
-		data = nfp_pr_et(data, "rxq_%u_bytes", i);
-		data = nfp_pr_et(data, "txq_%u_pkts", i);
-		data = nfp_pr_et(data, "txq_%u_bytes", i);
+		ethtool_sprintf(&data, "rxq_%u_pkts", i);
+		ethtool_sprintf(&data, "rxq_%u_bytes", i);
+		ethtool_sprintf(&data, "txq_%u_pkts", i);
+		ethtool_sprintf(&data, "txq_%u_bytes", i);
 	}
 
 	return data;
@@ -610,15 +599,15 @@ static u8 *nfp_vnic_get_tlv_stats_strings(struct nfp_net *nn, u8 *data)
 			memcpy(data, nfp_tlv_stat_names[id], ETH_GSTRING_LEN);
 			data += ETH_GSTRING_LEN;
 		} else {
-			data = nfp_pr_et(data, "dev_unknown_stat%u", id);
+			ethtool_sprintf(&data, "dev_unknown_stat%u", id);
 		}
 	}
 
 	for (i = 0; i < nn->max_r_vecs; i++) {
-		data = nfp_pr_et(data, "rxq_%u_pkts", i);
-		data = nfp_pr_et(data, "rxq_%u_bytes", i);
-		data = nfp_pr_et(data, "txq_%u_pkts", i);
-		data = nfp_pr_et(data, "txq_%u_bytes", i);
+		ethtool_sprintf(&data, "rxq_%u_pkts", i);
+		ethtool_sprintf(&data, "rxq_%u_bytes", i);
+		ethtool_sprintf(&data, "txq_%u_pkts", i);
+		ethtool_sprintf(&data, "txq_%u_bytes", i);
 	}
 
 	return data;
@@ -666,7 +655,7 @@ static u8 *nfp_mac_get_stats_strings(struct net_device *netdev, u8 *data)
 		return data;
 
 	for (i = 0; i < ARRAY_SIZE(nfp_mac_et_stats); i++)
-		data = nfp_pr_et(data, "mac.%s", nfp_mac_et_stats[i].name);
+		ethtool_sprintf(&data, "mac.%s", nfp_mac_et_stats[i].name);
 
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
