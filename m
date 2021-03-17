Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39DD33E2AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:31:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79EEC431D8;
	Wed, 17 Mar 2021 00:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZynaC2tJre1; Wed, 17 Mar 2021 00:31:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B1E643070;
	Wed, 17 Mar 2021 00:31:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4673B1BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41E976F5A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjhifCB1eHul for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:31:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FA2C60688
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:42 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id a11so247299qto.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=KyKOMMokP6jDQFUvlq0MosyUyH2Iv3Nr4lzzu8bCs5Y=;
 b=fEAQLmYeP3xS4Zgxq96Cv7EBn7DGMaxwY/XlHc0FzDFB4+Si8eIlLEMO5oj8A1mJLp
 Y3CrdW20oceVYTpV7cHblnbSICvqL9koNRvDH6XCW6BxX9tInqfsQzwK27g54ehQiOz/
 QGnpgcLz7c4FFU/zXCcTooPd4AbzdV2zhvUebGNBZQhP6uGTxzZX2hk3XCa9N95iSOvq
 Jz1SWehnqrZbAbUT6gQFTsPdNGGhskMqRYDx9gNTqajeC2tbGLlwIl+fN2rzwaSu2HNH
 s6ftFwAIW9m/9Q7fnup8VIB4dFafMhzKhpmXVrcKfvOZ4S/nBq9ASSeLqnuP1ZtZn3MB
 sKIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KyKOMMokP6jDQFUvlq0MosyUyH2Iv3Nr4lzzu8bCs5Y=;
 b=czvn0EddV4IY0bjJgZ46pf54iEO295KZ9A0lvX/3X/AfJMlFKrYtMFDjXxB9lHJekU
 rjgtfaN7XqceO9WNQ1O+/m/zrSPSsrf1MNdJzPVRR7VV0OgWyRIVVpi2apJ5DGGgD/5i
 s5ChC6hZDoHR0cDEggI34gM+n2z0T6OEhCq+9Nmz6pAaL3qhea+m23RG8ZB+QD3fPmgl
 tM9wVEWCJlhpL5SCrtR2w4u8PpsRB4Q0PYQFx+V8l0CIRTZOWc3p2un2dS9H5/QyoeaQ
 ugUPgz56QAYJUje2Vcys0aiH6QCHhRx2eTQU2yKMATDFol1J1Lz2p3MKeLXCbMM+kk+p
 hSbg==
X-Gm-Message-State: AOAM5300e0ClYWMrmXioihs/Q4S68WG8XJMiQQFhUSPVgCY1gc7soJgN
 UbHRB9twJJVRL59dTe7QRlA=
X-Google-Smtp-Source: ABdhPJyKCy0kx4bpO+dw7fxrC6LSnpUJ05P3TZR5KeIjnHGFzplfQvG0X6jaPuMAuv0jVRY6nhD0xw==
X-Received: by 2002:aed:3104:: with SMTP id 4mr1442269qtg.341.1615941101264;
 Tue, 16 Mar 2021 17:31:41 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id r3sm16220658qkm.129.2021.03.16.17.31.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:31:40 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:31:37 -0700
Message-ID: <161594109782.5644.3951439442214973165.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 08/10] vmxnet3: Update driver
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
