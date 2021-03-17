Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAA233E2A8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:31:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B673F6F48C;
	Wed, 17 Mar 2021 00:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YHA0E-g-Dc7g; Wed, 17 Mar 2021 00:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8DE460688;
	Wed, 17 Mar 2021 00:31:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46EC31BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3123A8397F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ilx7rjxKl93Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:31:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F98B838D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:16 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id d10so606346qve.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=/fmQByPw8bQivbovRXAWRMKHXhCMytDK4lqB3q/bdmo=;
 b=n+uQdxVuaNhHFBJNWvmEEkGGnHS/R4bUlnTEtc+xTWW1ONRcsPTe992ede/yUNW34m
 182fsVXPuNt7XWZ4KACbv9GrzifWqpZNoI+kqB1c6p0OFFW0YvxViUNsJwmvBq9wwNuL
 YpZia33RgryInSx6JsFdCbhSgdFUar6uUEgxgFPDWentPbFfl17x4/s3Z+kGi0k2istI
 oiAUX3K8fGL8TSHb5jicjMaZsgdL8nwhihVbaXWWdXa0qZAUaxXbLIOhSg3V+lmyYoCB
 H2xZutX3HBXXoNNYnRB10CtiuA5StArEG/tGwY0mlLNhp9Tw8J90BdmpczIO2m19vXzd
 LSZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=/fmQByPw8bQivbovRXAWRMKHXhCMytDK4lqB3q/bdmo=;
 b=VUsNa2wBQJsv+WIL5d5P1F/4oXb5S95B6e7bJbYB1QqDR4HYNDDGP5SYyuYebwCqLU
 3k7HO1qg8xjAjINcZtezMPbXN5gwbrlpihjFBpwfgy+1T1R5nlLsWWcyZ3Z39nfBZzt/
 moJN56gcvOHPHeGGonk8huePNtIbpuI4xi3//3pdRHGPwtezQBZvZ04MJvkXPfAp+9b4
 AQm0aB42yUjj++MWFHs+zf/EY/qIarSevQeIUcZmVnHO2jgRCJWZLvW41WfDNWS2ZjI4
 q6zVQlMq0Wh0EaWnReR5630UtTQXWO9u96DxCe+xqECiR+OdfWXYg5I6WX6fO7+Fod9N
 aSdg==
X-Gm-Message-State: AOAM5327ep5DMelEIQxlZsg9oJVFV+DVCmeLOLrGNWD/PGP6WGRpZaCL
 p6HM0HEeDZPLLFeQz5mi8zw=
X-Google-Smtp-Source: ABdhPJyjK1/UQOEiXjOHksu08G+HarLa/XO9go12IH74RhFX1QIOPe93QQ8q7ZLyB88iiJc+An0kZg==
X-Received: by 2002:a0c:cb0c:: with SMTP id o12mr2690738qvk.54.1615941075148; 
 Tue, 16 Mar 2021 17:31:15 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id o125sm1730675qkf.87.2021.03.16.17.31.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:31:14 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:31:11 -0700
Message-ID: <161594107181.5644.15922720616568884335.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 05/10] ena: Update driver to
 use ethtool_sprintf
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
