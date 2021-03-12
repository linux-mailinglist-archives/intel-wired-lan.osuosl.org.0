Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C3633956E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 18:48:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCE9643053;
	Fri, 12 Mar 2021 17:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bFVDqnvFxbJU; Fri, 12 Mar 2021 17:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0B3142FD7;
	Fri, 12 Mar 2021 17:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 878661BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8388760661
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbWyLD5aUQHa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 17:48:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D83B605EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:48 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id z5so12280156plg.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=UXrWznHuIl+tqYiybmBsTSLzzGjACP8HTfz1pnH9pxw=;
 b=byAxpKvHZ3OT/LGeCtFD3N9y4uw/UZcOk6xHGdWjd34G5wBasIds0YTbvWF7tcO63g
 VPD+Pzj435hBx84sz3JKw9xTeqW9O98C6OEOY9IIs7GencJhONUn6IWoTqUMZx7IZjPf
 H5CvGwBgCi+8+LFeSPsh1ytMEO2BYLcW8mjp+spzXevRt2hM0tAlL9Y6A9ZK11t7YK7N
 GdrBlgq5qlplqhSGr7ftlJvl8X0AoTg5jEDpUTuFmpnB6YZBdIrIRZyJQgNSpdjnYeaF
 LrClWWti9XTlXhwlxtGli90LmoCdlALS/L/UXFVt/hIdE3u9Kta3YtxVTgimPZAIcuH9
 IWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=UXrWznHuIl+tqYiybmBsTSLzzGjACP8HTfz1pnH9pxw=;
 b=NE6Dk4feWtl6mdn0+HECD2JM+yswJjBqIwVrTojaqay/UxqU2pReV4XB/xnp7/UuPv
 9bP6d+MQ36I41MLVfdA9Z1JDHRokaEt51PA3KktdGpWnwxJdK0zsLH3tqqHf4pulg0Zi
 pJaLaOEO+HhOxCXrvUr3TpPXmAMHjXjK2+Sprti3KJo3L7GNTVTjQo7nT0i+ZY5PX8vg
 lAxjuGvbNC083r3hoa3I4y9iIdN7cTaEkpIoI6klMyHNkOnLzDdvYcSunP5IoJX/rgJm
 Wvf0j3g042SC9zun8hF72FOp0WPQPjeEGyYgr27LkWf/922BfxtE+/+rMXcugEXp+EwH
 y1DQ==
X-Gm-Message-State: AOAM530uS5tbaZm5SEB2UIgpumudGN7bhknS/xZ4Iavy9jOxuFmVViub
 /BaO5spmHxVjENE4HNNfCao=
X-Google-Smtp-Source: ABdhPJwZSjWQsls2IMEYwvM9JrjmAVryGVyFnp6LHoIwAnzCGeOKQBOenkK0Ycq2pwxHM7Gj2oGGPA==
X-Received: by 2002:a17:902:bd0b:b029:e5:f913:8c95 with SMTP id
 p11-20020a170902bd0bb02900e5f9138c95mr192406pls.84.1615571327729; 
 Fri, 12 Mar 2021 09:48:47 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id t12sm5932407pfe.203.2021.03.12.09.48.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 09:48:47 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Mar 2021 09:48:46 -0800
Message-ID: <161557132651.10304.9382850626606060019.stgit@localhost.localdomain>
In-Reply-To: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 07/10] virtio_net: Update driver
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

Update the code to replace instances of snprintf and a pointer update with
just calling ethtool_sprintf.

Also replace the char pointer with a u8 pointer to avoid having to recast
the pointer type.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/virtio_net.c |   18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index e97288dd6e5a..77ba8e2fc11c 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -2138,25 +2138,21 @@ static int virtnet_set_channels(struct net_device *dev,
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
+				ethtool_sprintf(&p, "rx_queue_%u_%s", i,
+						virtnet_rq_stats_desc[j].desc);
 		}
 
 		for (i = 0; i < vi->curr_queue_pairs; i++) {
-			for (j = 0; j < VIRTNET_SQ_STATS_LEN; j++) {
-				snprintf(p, ETH_GSTRING_LEN, "tx_queue_%u_%s",
-					 i, virtnet_sq_stats_desc[j].desc);
-				p += ETH_GSTRING_LEN;
-			}
+			for (j = 0; j < VIRTNET_SQ_STATS_LEN; j++)
+				ethtool_sprintf(&p, "tx_queue_%u_%s", i,
+						virtnet_sq_stats_desc[j].desc);
 		}
 		break;
 	}


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
