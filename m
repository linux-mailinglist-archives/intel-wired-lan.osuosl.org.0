Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6683369B6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:35:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80D0D4300B;
	Thu, 11 Mar 2021 01:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3wOVWQFWkIX; Thu, 11 Mar 2021 01:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B9EB42FFB;
	Thu, 11 Mar 2021 01:35:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CAE11BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75E6082E44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mERWkK_TVOP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:35:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6472F831F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:47 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id d23so6211163plq.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=mXovWmaN3OxpZPX5auZkxx4/rCgtSqTeDRTaO9fib40=;
 b=ToOsEVKUaEJN7rGfFWFJCslgbWhCmFi9RGkpAlGO+tSSM5B/GXFf76/ZnyQ4/RhAgc
 VtEHpSYBHokqiRmCDJp6imbfYGTtbyB1p1TXnLgmrxkCy70wwXuTCtYtJ+ySed2nudZy
 JeeLI15RTK+xiTDjcBVXHzvSO9DiaIRaAg8R6n0OIAuJ3b/zdT8jRCoR+JVkt81ANp98
 5Ra032Ybrx+aPFJlnDXpeYyNuVS+HXWqo/5HcQGOeEZsqSM527Avh1X0hNam+vjI346K
 y5Rwhj4pH9IAuY8LeKfWWUNghYp1jhhboqNFgTGM7/RBZamEHsMrCHQZvonyBdVgQbh6
 AHrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mXovWmaN3OxpZPX5auZkxx4/rCgtSqTeDRTaO9fib40=;
 b=razR8UH0HlaDE5UaRLfMS/5Bu6mUoXbqZOUHIWyTEmSlj0t4ByC5GSvwMSl6tAtpTJ
 rPuds/WDD7iR5bfWZ2w09oWpSAxv8qXO6v8xN5PLGSZ9t9UFMv+zNhA5oyfFtnkCt+u2
 P8F1nebE2kgO+n1nF5QO3vNoQapTKuTVWCoFzH6R4JYJ1FN30/1EE8ZHd2/8Vk2jjbr6
 tyw7M4d4qdS4GLmubEhHm4mOPtqE6pCU6v+llNJjci0GDLbcUdwLfqrYiDqtI57B0wc/
 6PMzT0DhDtUw73S0eHd1GAjlRDfPbFn0pTONI+hkJ+/n+b/FxgyEsw0/v3RDbMLaxOXj
 lwZQ==
X-Gm-Message-State: AOAM532LEaRKhGV6APTrBlguzf0TJT7qToRoFlbFEFwSzZZIJzPy2DVO
 a9tAJCBIU+lzqz/5Ex47EMFOo9J1ZozUps8T
X-Google-Smtp-Source: ABdhPJw3VkZ7T0dpW+GqubGyANkwxTUpfkfw2teOdE71KvR/qSufUQ5TTETgX+4yaNtpnGf+xdV0aw==
X-Received: by 2002:a17:902:b711:b029:e3:71f1:e08e with SMTP id
 d17-20020a170902b711b02900e371f1e08emr5887183pls.18.1615426546679; 
 Wed, 10 Mar 2021 17:35:46 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id y22sm652996pfn.32.2021.03.10.17.35.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:35:46 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:35:45 -0800
Message-ID: <161542654541.13546.817443057977441498.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 05/10] ena: Update driver to use
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

Replace instances of snprintf or memcpy with a pointer update with
ethtool_gsprintf.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/amazon/ena/ena_ethtool.c |   25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_ethtool.c b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
index d6cc7aa612b7..42f6bad7ca26 100644
--- a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
+++ b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
@@ -251,10 +251,10 @@ static void ena_queue_strings(struct ena_adapter *adapter, u8 **data)
 		for (j = 0; j < ENA_STATS_ARRAY_TX; j++) {
 			ena_stats = &ena_stats_tx_strings[j];
 
-			snprintf(*data, ETH_GSTRING_LEN,
-				 "queue_%u_%s_%s", i,
-				 is_xdp ? "xdp_tx" : "tx", ena_stats->name);
-			(*data) += ETH_GSTRING_LEN;
+			ethtool_gsprintf(data,
+					 "queue_%u_%s_%s", i,
+					 is_xdp ? "xdp_tx" : "tx",
+					 ena_stats->name);
 		}
 
 		if (!is_xdp) {
@@ -264,9 +264,9 @@ static void ena_queue_strings(struct ena_adapter *adapter, u8 **data)
 			for (j = 0; j < ENA_STATS_ARRAY_RX; j++) {
 				ena_stats = &ena_stats_rx_strings[j];
 
-				snprintf(*data, ETH_GSTRING_LEN,
-					 "queue_%u_rx_%s", i, ena_stats->name);
-				(*data) += ETH_GSTRING_LEN;
+				ethtool_gsprintf(data,
+						 "queue_%u_rx_%s", i,
+						 ena_stats->name);
 			}
 		}
 	}
@@ -280,9 +280,8 @@ static void ena_com_dev_strings(u8 **data)
 	for (i = 0; i < ENA_STATS_ARRAY_ENA_COM; i++) {
 		ena_stats = &ena_stats_ena_com_strings[i];
 
-		snprintf(*data, ETH_GSTRING_LEN,
-			 "ena_admin_q_%s", ena_stats->name);
-		(*data) += ETH_GSTRING_LEN;
+		ethtool_gsprintf(data,
+				 "ena_admin_q_%s", ena_stats->name);
 	}
 }
 
@@ -295,15 +294,13 @@ static void ena_get_strings(struct ena_adapter *adapter,
 
 	for (i = 0; i < ENA_STATS_ARRAY_GLOBAL; i++) {
 		ena_stats = &ena_stats_global_strings[i];
-		memcpy(data, ena_stats->name, ETH_GSTRING_LEN);
-		data += ETH_GSTRING_LEN;
+		ethtool_gsprintf(&data, ena_stats->name);
 	}
 
 	if (eni_stats_needed) {
 		for (i = 0; i < ENA_STATS_ARRAY_ENI(adapter); i++) {
 			ena_stats = &ena_stats_eni_strings[i];
-			memcpy(data, ena_stats->name, ETH_GSTRING_LEN);
-			data += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&data, ena_stats->name);
 		}
 	}
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
