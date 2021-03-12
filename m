Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3F6339569
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 18:48:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 769566FA35;
	Fri, 12 Mar 2021 17:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tM91__Zt6k-D; Fri, 12 Mar 2021 17:48:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 740666FAF5;
	Fri, 12 Mar 2021 17:48:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D961F1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D473A4ED2B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XMHIWUH4_aDO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 17:48:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 875654ED1C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:35 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id y13so2376960pfr.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=/fmQByPw8bQivbovRXAWRMKHXhCMytDK4lqB3q/bdmo=;
 b=doGB/4Pq9olMn5+PSqzBsBNpir0m4//YIyQZMLzAJyr5fZQD38kzJ5zr7xg1yMdW8I
 CJ3M/12T8OFVr1JB/iagyZrIpG8aJtm+NgxdncHKoEQLRRAt+rGmFiy0ZYT2W8Ufspu3
 WviEVoObgiMKlZxk4hCntNzNg05NvPvz3j0nFi2M9zqy4HJ1uXAAGmhhytfMamT/qG3I
 l1IZphpfcoC5REaVfLjVPJZ8mSLhP/DneAIeTxYV5quivHO3gvJy5wq1BW4yCIFduLIO
 9jMZraT8n4KI0vi+eukF3GnjLkzQBkQ8FiYRCNvWXBMxqI+ffIn4qYhRxYI3CzmDpYB7
 bfCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=/fmQByPw8bQivbovRXAWRMKHXhCMytDK4lqB3q/bdmo=;
 b=gcDZMob1yWcwut37S1ljcAUneXfrc7Pn8TGpm7n5xIFQM0vkBQ8kbM+ZexluSZm4JC
 ythGJvGa3959hZ2VBDLM8likIlw/G2/YQqRPUaEfThNBsa7ZyN9kLZmIwgifB/8/+e3G
 Kp9YfJUX4xx/oY7hYmLaVO+GJ2yqmwHa5hkC6XfL/nUTPshow8OqL5U8DCt1mhU2zyV2
 cXDOccuwoaqMg6HFHsKe/qA0y4CzulD3kH4NMzx2iKIzbl1tn4YjcLOVAH74uyTZD4gv
 NOrmWWxdLipo7a6PJpgGkFHnoGUExG8Aw/Yw7OgZDDR2wblOeIfOL3zgd+9V8IorvjcG
 pM2Q==
X-Gm-Message-State: AOAM5313AdWU0/ZE+MHmEhzolgc7n/nuojWxSs3QTprXGDMAwi/3nrCy
 gWaI3m26vTck6MELN5rxtDU=
X-Google-Smtp-Source: ABdhPJzwCDLntiM5dSt1+MTZChYcpHx2hjhmdHzHuIgYCZ5X80nvDeDB0sd3JmYJDfPTR6ROAP4UUA==
X-Received: by 2002:a63:5a0c:: with SMTP id o12mr12664925pgb.76.1615571314900; 
 Fri, 12 Mar 2021 09:48:34 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id h14sm2822675pjc.37.2021.03.12.09.48.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 09:48:34 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Mar 2021 09:48:33 -0800
Message-ID: <161557131360.10304.1549281998235246752.stgit@localhost.localdomain>
In-Reply-To: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 05/10] ena: Update driver to use
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

Replace instances of snprintf or memcpy with a pointer update with
ethtool_sprintf.

Acked-by: Arthur Kiyanovski <akiyano@amazon.com>
Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/amazon/ena/ena_ethtool.c |   25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_ethtool.c b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
index d6cc7aa612b7..2fe7ccee55b2 100644
--- a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
+++ b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
@@ -251,10 +251,10 @@ static void ena_queue_strings(struct ena_adapter *adapter, u8 **data)
 		for (j = 0; j < ENA_STATS_ARRAY_TX; j++) {
 			ena_stats = &ena_stats_tx_strings[j];
 
-			snprintf(*data, ETH_GSTRING_LEN,
-				 "queue_%u_%s_%s", i,
-				 is_xdp ? "xdp_tx" : "tx", ena_stats->name);
-			(*data) += ETH_GSTRING_LEN;
+			ethtool_sprintf(data,
+					"queue_%u_%s_%s", i,
+					is_xdp ? "xdp_tx" : "tx",
+					ena_stats->name);
 		}
 
 		if (!is_xdp) {
@@ -264,9 +264,9 @@ static void ena_queue_strings(struct ena_adapter *adapter, u8 **data)
 			for (j = 0; j < ENA_STATS_ARRAY_RX; j++) {
 				ena_stats = &ena_stats_rx_strings[j];
 
-				snprintf(*data, ETH_GSTRING_LEN,
-					 "queue_%u_rx_%s", i, ena_stats->name);
-				(*data) += ETH_GSTRING_LEN;
+				ethtool_sprintf(data,
+						"queue_%u_rx_%s", i,
+						ena_stats->name);
 			}
 		}
 	}
@@ -280,9 +280,8 @@ static void ena_com_dev_strings(u8 **data)
 	for (i = 0; i < ENA_STATS_ARRAY_ENA_COM; i++) {
 		ena_stats = &ena_stats_ena_com_strings[i];
 
-		snprintf(*data, ETH_GSTRING_LEN,
-			 "ena_admin_q_%s", ena_stats->name);
-		(*data) += ETH_GSTRING_LEN;
+		ethtool_sprintf(data,
+				"ena_admin_q_%s", ena_stats->name);
 	}
 }
 
@@ -295,15 +294,13 @@ static void ena_get_strings(struct ena_adapter *adapter,
 
 	for (i = 0; i < ENA_STATS_ARRAY_GLOBAL; i++) {
 		ena_stats = &ena_stats_global_strings[i];
-		memcpy(data, ena_stats->name, ETH_GSTRING_LEN);
-		data += ETH_GSTRING_LEN;
+		ethtool_sprintf(&data, ena_stats->name);
 	}
 
 	if (eni_stats_needed) {
 		for (i = 0; i < ENA_STATS_ARRAY_ENI(adapter); i++) {
 			ena_stats = &ena_stats_eni_strings[i];
-			memcpy(data, ena_stats->name, ETH_GSTRING_LEN);
-			data += ETH_GSTRING_LEN;
+			ethtool_sprintf(&data, ena_stats->name);
 		}
 	}
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
