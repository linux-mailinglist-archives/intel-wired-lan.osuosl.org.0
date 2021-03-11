Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9853369B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:36:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6500047179;
	Thu, 11 Mar 2021 01:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4nb0POE-3Ng9; Thu, 11 Mar 2021 01:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42304454B4;
	Thu, 11 Mar 2021 01:36:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C84D71BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7A4582E44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jrg6K6ILX9kN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:36:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27A6482C7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:00 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id c16so9443245ply.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=4BA8bY8lW0soxmFw6y9gJo0Qf+WroUwWFLtWhIeGuxE=;
 b=MOSbPSAbIJuFkuaS1h71CmOP0ISteAYhnQnsaQkZfapXlF28sNdzh8dCHP5cVjPjOh
 fxTgbxJPxxVD5x1kKH6plMYROOtYap5wJJ0yS00glsFE0GHVQqtPzUTQHJ9Qk/3ZUwfE
 4+p8QI92ZsoCZeAQ4Ss5b47AsQyB//GE28tlxHC5y9FMnJsJ3XhIHffcL4lcPsbZ8Awd
 G5sbzCq51Xl9PfaBher+6avERsfjz/bUWji9kR6BR5czbbNcdNayn3UJS+D01onsVzCh
 h15reSH9ffYYgwMcf9DzDWuEbFza/N7pbMyxDgXr+MvVk8Ok35Th99Sz9Z9k1DRNOreQ
 OwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=4BA8bY8lW0soxmFw6y9gJo0Qf+WroUwWFLtWhIeGuxE=;
 b=ZAX0kShHZeGps5nWS96tvX1AAJ5DNul+EMfW/Hu3IG/MAINNZ98CwoWZtq/Hf4sY3N
 L88/XTQOUF3cIz2heb2U9ueY8KUWmcP5CKmJQh1/qUbMdg2at5nryPXtX87LyP0JTXtj
 q4vXG5R2sOHiRn4PwBlDclc+eFv5BwA0SPstGU6aZqDlS12hmg9LUuEkUOsfx7+TubEX
 0dh5Xkl0zR3e8rEjxQOC5bQqnQzeIAi12sio9zkkoaineENKJI7+WIM7W4wTBg/67Hd0
 eqSJvTixjfLRMwdhkdmjwoKIS3fPjcwbHM6ccrhD2CFDUhsZZy5KoMYP7iMa5IekYL1L
 gfgg==
X-Gm-Message-State: AOAM533Ozog9HNl4S8UZNnvGPfWShzN6WV5BdSDbNyCgk8VHwifB18yK
 aj4FDmQAH/FQETFGKy2LRho=
X-Google-Smtp-Source: ABdhPJwVn+fQZjyQ6TNPpCSKHLaMl+AtJxMEPvkjzY7hpr/MdI/TF0icwGCsDHoKHp3EHsdp0UMQ/w==
X-Received: by 2002:a17:90a:9f8c:: with SMTP id
 o12mr2870941pjp.215.1615426559468; 
 Wed, 10 Mar 2021 17:35:59 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id mz11sm548496pjb.6.2021.03.10.17.35.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:35:59 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:35:58 -0800
Message-ID: <161542655816.13546.114000517042800369.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 07/10] virtio_net: Update driver to
 use ethtool_gsprintf
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

Update the code to replace instances of snprintf and a pointer update with
just calling ethtool_gsprintf.

Also replace the char pointer with a u8 pointer to avoid having to recast
the pointer type.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/virtio_net.c |   18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index 82e520d2cb12..f1a05b43dde7 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -2104,25 +2104,21 @@ static int virtnet_set_channels(struct net_device *dev,
 static void virtnet_get_strings(struct net_device *dev, u32 stringset, u8 *data)
 {
 	struct virtnet_info *vi = netdev_priv(dev);
-	char *p = (char *)data;
 	unsigned int i, j;
+	u8 *p = data;
 
 	switch (stringset) {
 	case ETH_SS_STATS:
 		for (i = 0; i < vi->curr_queue_pairs; i++) {
-			for (j = 0; j < VIRTNET_RQ_STATS_LEN; j++) {
-				snprintf(p, ETH_GSTRING_LEN, "rx_queue_%u_%s",
-					 i, virtnet_rq_stats_desc[j].desc);
-				p += ETH_GSTRING_LEN;
-			}
+			for (j = 0; j < VIRTNET_RQ_STATS_LEN; j++)
+				ethtool_gsprintf(&p, "rx_queue_%u_%s", i,
+						 virtnet_rq_stats_desc[j].desc);
 		}
 
 		for (i = 0; i < vi->curr_queue_pairs; i++) {
-			for (j = 0; j < VIRTNET_SQ_STATS_LEN; j++) {
-				snprintf(p, ETH_GSTRING_LEN, "tx_queue_%u_%s",
-					 i, virtnet_sq_stats_desc[j].desc);
-				p += ETH_GSTRING_LEN;
-			}
+			for (j = 0; j < VIRTNET_SQ_STATS_LEN; j++)
+				ethtool_gsprintf(&p, "tx_queue_%u_%s", i,
+						 virtnet_sq_stats_desc[j].desc);
 		}
 		break;
 	}


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
