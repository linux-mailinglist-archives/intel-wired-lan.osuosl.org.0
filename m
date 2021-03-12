Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C97339570
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 18:49:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 622868270B;
	Fri, 12 Mar 2021 17:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1MmcMk7qeQ7h; Fri, 12 Mar 2021 17:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 557398195D;
	Fri, 12 Mar 2021 17:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B32751BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A150F47179
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x23RFgkz1MGm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 17:48:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA06B4E90F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:54 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id q12so1800206plr.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=KyKOMMokP6jDQFUvlq0MosyUyH2Iv3Nr4lzzu8bCs5Y=;
 b=abMv9NZzVJbScw+4oOStB86EPYuPh5hQKe9I6rfFbT0Pm9/o6jVz/aApChnqIZz9Dc
 AZCJP1QlvqGXYFyoDUZLRY9zwb4KRT1eUMyz5PteWZM+mSoLTzajDw3oHrSgrMd2DUKQ
 OPyZgdNuBE86AKRFUzpOREL5EuMxqIj0tVNSnBhr3Hdd/Uy5ZyDidovF7Pc90nLEY+B0
 8dIUtgtcoSZlhAxQJdX42EzN7pnZb66A8/rfX/lqC55Id//9iYF+mR9S0Jc9MqTQJVN+
 Qaf0ujp1dItg/4klG68NTmyS9eUxDIreZVjdYmhScvB5w3u0GYVZ3v2RTslYhiQTkHXR
 mf+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KyKOMMokP6jDQFUvlq0MosyUyH2Iv3Nr4lzzu8bCs5Y=;
 b=bSg1Ao0hMPTZi9NHyjFo+dHbL8NH2oS4hCez8osWUI4PA0x7HV8ESnFbRo95AHLkC5
 As+MkVZHLcZkINXjg9cvOPcUctCzIaOdmFKU5oaXLOI8Tz3Sq6kaX9rktgXDhFDjKpDL
 OVyza33MCB3IaWtelDDwDIri6WzSVkIxLC1ttoz7w4SSjEwDOGyaTWCPCx9/q7TyuZj5
 90qpAvlcXQrq+uHZp0ZXrZT6yExS9QnNTTF41wmgGcv2yfMmusOuZn8jNaHP0WbYI16e
 Vfsz3n5s8byZOnl7/oyWj1S7eDs5HGdKBGr10K5U7oZ+HT11dHuq2L+NJr/xGp17/HJ/
 DSjw==
X-Gm-Message-State: AOAM532nYk4hnz+33xdKwwdISzTUUX5CN5BghhLn712JtzNPmQKelYXj
 4T+rGX7f9JLZdnaKfmqOndg=
X-Google-Smtp-Source: ABdhPJy2/ZasrmQP/DD36QHTmioW14pkaI4HzgoAfCT6qy4y/aZY1pTkSmqpoi2zBWhgw0i1OQlXvA==
X-Received: by 2002:a17:902:ee06:b029:e4:ba18:3726 with SMTP id
 z6-20020a170902ee06b02900e4ba183726mr179592plb.17.1615571334073; 
 Fri, 12 Mar 2021 09:48:54 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id e63sm5991432pfe.208.2021.03.12.09.48.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 09:48:53 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Mar 2021 09:48:52 -0800
Message-ID: <161557133283.10304.4658224540485154078.stgit@localhost.localdomain>
In-Reply-To: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 08/10] vmxnet3: Update driver to
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

So this patch actually does 3 things.

First it removes a stray white space at the start of the variable
declaration in vmxnet3_get_strings.

Second it flips the logic for the string test so that we exit immediately
if we are not looking for the stats strings. Doing this we can avoid
unnecessary indentation and line wrapping.

Then finally it updates the code to use ethtool_sprintf rather than a
memcpy and pointer increment to write the ethtool strings.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/vmxnet3/vmxnet3_ethtool.c |   53 ++++++++++++---------------------
 1 file changed, 19 insertions(+), 34 deletions(-)

diff --git a/drivers/net/vmxnet3/vmxnet3_ethtool.c b/drivers/net/vmxnet3/vmxnet3_ethtool.c
index 7ec8652f2c26..c0bd9cbc43b1 100644
--- a/drivers/net/vmxnet3/vmxnet3_ethtool.c
+++ b/drivers/net/vmxnet3/vmxnet3_ethtool.c
@@ -218,43 +218,28 @@ vmxnet3_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 static void
 vmxnet3_get_strings(struct net_device *netdev, u32 stringset, u8 *buf)
 {
-	 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
-	if (stringset == ETH_SS_STATS) {
-		int i, j;
-		for (j = 0; j < adapter->num_tx_queues; j++) {
-			for (i = 0; i < ARRAY_SIZE(vmxnet3_tq_dev_stats); i++) {
-				memcpy(buf, vmxnet3_tq_dev_stats[i].desc,
-				       ETH_GSTRING_LEN);
-				buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < ARRAY_SIZE(vmxnet3_tq_driver_stats);
-			     i++) {
-				memcpy(buf, vmxnet3_tq_driver_stats[i].desc,
-				       ETH_GSTRING_LEN);
-				buf += ETH_GSTRING_LEN;
-			}
-		}
+	struct vmxnet3_adapter *adapter = netdev_priv(netdev);
+	int i, j;
 
-		for (j = 0; j < adapter->num_rx_queues; j++) {
-			for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_dev_stats); i++) {
-				memcpy(buf, vmxnet3_rq_dev_stats[i].desc,
-				       ETH_GSTRING_LEN);
-				buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_driver_stats);
-			     i++) {
-				memcpy(buf, vmxnet3_rq_driver_stats[i].desc,
-				       ETH_GSTRING_LEN);
-				buf += ETH_GSTRING_LEN;
-			}
-		}
+	if (stringset != ETH_SS_STATS)
+		return;
 
-		for (i = 0; i < ARRAY_SIZE(vmxnet3_global_stats); i++) {
-			memcpy(buf, vmxnet3_global_stats[i].desc,
-				ETH_GSTRING_LEN);
-			buf += ETH_GSTRING_LEN;
-		}
+	for (j = 0; j < adapter->num_tx_queues; j++) {
+		for (i = 0; i < ARRAY_SIZE(vmxnet3_tq_dev_stats); i++)
+			ethtool_sprintf(&buf, vmxnet3_tq_dev_stats[i].desc);
+		for (i = 0; i < ARRAY_SIZE(vmxnet3_tq_driver_stats); i++)
+			ethtool_sprintf(&buf, vmxnet3_tq_driver_stats[i].desc);
+	}
+
+	for (j = 0; j < adapter->num_rx_queues; j++) {
+		for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_dev_stats); i++)
+			ethtool_sprintf(&buf, vmxnet3_rq_dev_stats[i].desc);
+		for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_driver_stats); i++)
+			ethtool_sprintf(&buf, vmxnet3_rq_driver_stats[i].desc);
 	}
+
+	for (i = 0; i < ARRAY_SIZE(vmxnet3_global_stats); i++)
+		ethtool_sprintf(&buf, vmxnet3_global_stats[i].desc);
 }
 
 netdev_features_t vmxnet3_fix_features(struct net_device *netdev,


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
