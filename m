Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5AC33E2AB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:31:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0DE86F586;
	Wed, 17 Mar 2021 00:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQ_p5rPCMnJI; Wed, 17 Mar 2021 00:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC3D4605E8;
	Wed, 17 Mar 2021 00:31:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C8BB1BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3EA6605E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5E8Fv2cL2rIR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:31:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0F526F586
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:33 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id t4so37297801qkp.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=pMHuuoPdVt7eusZdxl42EjH4STYGN/5gPWejCROpebg=;
 b=Hrc+hGjAz6aOUlVQQuwvdyPy/ZzCtegJZvy6WNRD+wnlKf77jCyqqgND/NSEhh5AlH
 +GvRx+32atGDYR5WSaIWC5aS1e0qYFEohtrYc/YULFmO9JzaC9M3B5GVYEoKk3WPeW0z
 XVaShYNuiz0GDAqlH89mVapzPiDJnceT6OsUmYTosWrFZrNv/5MoeNL8bHSJhIIJQFlh
 EqWVp3TOPu3pT2PYQtHOCWM/HPd9YuYtKE3ZdipwRrEYZ+ZJhDYI0GC7S/2uu3QSvFTh
 mP62etzpy/8UoGSzLyRFyB/3w6gbxnLEH2TrtgQ1tTsK4rrdL2Qh7YdjXw0rWrK1atbK
 EXfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=pMHuuoPdVt7eusZdxl42EjH4STYGN/5gPWejCROpebg=;
 b=sdD3h91Vzh4g5mc6VyJDOy+Ljk8xz6D8S/R8FjmPON6cWpBH6c+g9E2hCixHwTB9EB
 ivIZMDDU1hu7kq0QE8ZwoNeZnjY/8mQuaUsnQ49m7ocU2RAsyuiITteg3Wl4hwOCZmLR
 2yjBTlAHTdkddBaddl294gqgKOOQ3MZzJAu6aO9mtqqLU0cNCIafBuhduDyA4ddDSCG3
 OHgobtToZpWrlswcs0ZgYg3wU/1NWxuYOjahfv1BIai40O9jvV0lbtAqnVmzTBeJ+oxL
 7stUPelSJnIsDiankG5LuMpBXNK0fvOyJ4twr4OgJJi/aSTXXrNXuH7F0rp/QZow67L6
 RJMA==
X-Gm-Message-State: AOAM530Knl+k5WZkmZEVsMXpWfB8iKjxzNGoaxYOzoyqP9wlb/lZqXPx
 4xFHIH59LQb+kM/wJge0bMM=
X-Google-Smtp-Source: ABdhPJw+/5BrF05tXPPyi1gQMX/ztIF6kLrY9sOqKnozyf8Wu82yWstyraPG/nAN+MhEelTCTuTuVw==
X-Received: by 2002:a37:8206:: with SMTP id e6mr1898164qkd.169.1615941092656; 
 Tue, 16 Mar 2021 17:31:32 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id l6sm16860274qke.34.2021.03.16.17.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:31:32 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:31:29 -0700
Message-ID: <161594108914.5644.2813119476748144220.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 07/10] virtio_net: Update
 driver to use ethtool_sprintf
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

Acked-by: Michael S. Tsirkin <mst@redhat.com>
Acked-by: Jason Wang <jasowang@redhat.com>
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
