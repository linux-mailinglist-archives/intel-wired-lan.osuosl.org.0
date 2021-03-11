Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8558E3369BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE77A60671;
	Thu, 11 Mar 2021 01:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Ye3Se09EoQr; Thu, 11 Mar 2021 01:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9AEF60649;
	Thu, 11 Mar 2021 01:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FF831BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C3ED400C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-qKFKnI-5W8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:36:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6284942FFC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:06 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id x29so12616182pgk.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=d4YFnDPS6NroPhjQrx8F6bp+0knVok/iG5b32FqCjOM=;
 b=MTxHgVBJzfOyF26VNWYwKA/avXyYB1azHbsAxKVZMIv7rGzYeunTQRuMuXTs22eo2i
 WhvDrROk7eaJlUsXbayHX3kThv35uRa5NqnjqtOhAdOItJ1ohISNt2jvUuz0ei6QfoUw
 rrdCktU72iXJ2y8D7lP+EJMuXBi8MR/DekxFrn+rwFroluvho13P82/JEi6LtnnedHT8
 q5r/yU576arRtcwjccVnb3GS9wdst2pb2R3JZza7f1BR4LwxIcytid/dLAMz5exuo9p9
 /kk5/rRLqSzNETQDOEBr+3kphEnd+sBdPQK9TYOz1oJ9tWx+HqFj/j+Kgd+WNQCYCvYs
 xffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=d4YFnDPS6NroPhjQrx8F6bp+0knVok/iG5b32FqCjOM=;
 b=hAJmYy9xEqIMp7pCnMs+2dQ/44E4d7J+wfxLjcDdjUy1DEmfdzTWUL/Vye7UqZ7g1u
 Mamd3dZKfzVahJFdPIQgtZkjvLu/JDCrSLW3cR5oj+8Dw0xQstqjY4qpiNEGHZBwbdW2
 xmqz53uyljtJo6NUxn4pIjoTkLciyoMALE6EEyK+YazXpyxsKlpRwqPMJ3JOHOKYuziS
 dKwLazpf0Z7xjqW0ty0NpvKLS8tQHmeYQw3JYTG6No7scJgGxSrOQj0GqGMjbMbJ/jGM
 nv4dCd1rP5NtZPtyaHsrYI+6fLj/+uwyZQLORDwxYWy8NyK3Zc/a2VrNPsciaf3/YTzq
 qH+A==
X-Gm-Message-State: AOAM531i3hLrLrUbAMKiIuWCe5B7jqVWOIk4JGLlf6QcCB7az4PFphNe
 IsN54I7OxfjhUekjO3nX6Ic=
X-Google-Smtp-Source: ABdhPJzINJzrtYbdjGhlQeGB2A3yvooP0Bn8O3A2gT2en5QOTXW3gMoax9U5xrcQ1AHnKm7ofi7g8w==
X-Received: by 2002:a63:c65:: with SMTP id 37mr5273967pgm.186.1615426565817;
 Wed, 10 Mar 2021 17:36:05 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id b14sm646417pfi.74.2021.03.10.17.36.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:36:05 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:36:04 -0800
Message-ID: <161542656461.13546.474867975442613938.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 08/10] vmxnet3: Update driver to use
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

So this patch actually does 3 things.

First it removes a stray white space at the start of the variable
declaration in vmxnet3_get_strings.

Second it flips the logic for the string test so that we exit immediately
if we are not looking for the stats strings. Doing this we can avoid
unnecessary indentation and line wrapping.

Then finally it updates the code to use ethtool_gsprintf rather than a
memcpy and pointer increment to write the ethtool strings.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/vmxnet3/vmxnet3_ethtool.c |   53 ++++++++++++---------------------
 1 file changed, 19 insertions(+), 34 deletions(-)

diff --git a/drivers/net/vmxnet3/vmxnet3_ethtool.c b/drivers/net/vmxnet3/vmxnet3_ethtool.c
index 7ec8652f2c26..4ec674380a91 100644
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
+			ethtool_gsprintf(&buf, vmxnet3_tq_dev_stats[i].desc);
+		for (i = 0; i < ARRAY_SIZE(vmxnet3_tq_driver_stats); i++)
+			ethtool_gsprintf(&buf, vmxnet3_tq_driver_stats[i].desc);
+	}
+
+	for (j = 0; j < adapter->num_rx_queues; j++) {
+		for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_dev_stats); i++)
+			ethtool_gsprintf(&buf, vmxnet3_rq_dev_stats[i].desc);
+		for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_driver_stats); i++)
+			ethtool_gsprintf(&buf, vmxnet3_rq_driver_stats[i].desc);
 	}
+
+	for (i = 0; i < ARRAY_SIZE(vmxnet3_global_stats); i++)
+		ethtool_gsprintf(&buf, vmxnet3_global_stats[i].desc);
 }
 
 netdev_features_t vmxnet3_fix_features(struct net_device *netdev,


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
