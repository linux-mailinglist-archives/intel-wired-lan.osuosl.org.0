Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79976A9BC5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 17:30:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46046415B6;
	Fri,  3 Mar 2023 16:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46046415B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677861019;
	bh=b6is3YlR49gRGCMVn05HVOZdcZh9KE1TR2EvwIBiPXI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bsAGo6YYQXEvlZQ8t33CFgfgzIMxDcoxfUuO+1q8cTt3uiwXtBeoaMJNpLiqQXug5
	 IKmku5A/mH6re4GTBoY8HTFPJqsQs3K6qruWyMcz8rElF5OOAl34KfRScmHrQ26mbv
	 NM141kcu8TUSoxm2K0eUqI3Dz4/iDJfTSCLDEufJL3hi0WyFEuXJTcLpNQ7s+5pkp7
	 Fqw4s5+p5dcgtDiwCP/p2Kx74aDYd/LQoam3gmT692AhhTs//o7/NkxME2o+jW84gH
	 qRV6GRaCJe0+TmGgX1gZdS09Em0Aks1sXNtr7wN0DkH7igEFLLQkIP3qg8Mr5+/DP8
	 Vp2Ko25wXkutg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pdDlJCsY2Tif; Fri,  3 Mar 2023 16:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20506415AA;
	Fri,  3 Mar 2023 16:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20506415AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41E7A1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 15:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A03E4051B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 15:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A03E4051B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Uwbztivy6g7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 15:09:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2946440153
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2946440153
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 15:09:20 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 fm20-20020a05600c0c1400b003ead37e6588so4140416wmb.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Mar 2023 07:09:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677856158;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UrrwJPkFd0S1Re+XqTQZpJcc+TxHQ0A8Rp4cbauFo18=;
 b=tGLFtJVlYpM6FpMM3ELhOo24q0hNcR+6euiApn7/bit0zr1hkzgYgXTO36bFt2SQv1
 q+/2+kyq31qoyiVyBtZGIGL6QrNuu+MsvaXwC7pM3L6+31cfQWSkuUQxsIAhb8wEDlox
 Za2zpwdS1C5T/AEuKqIvn1BRt0GKJ2QII1BMzwyXL5sYnzU7/IAlDByMY4VsBMuUDHZa
 lTsr2AgB8NCxC06b9RTrGLdgzOmVK3G4ZRqCHji9dKGG5dA04pofDH9jFi+qhCtr4GWL
 2gCz9XmXVYNJ6Ac2cLIINUW4wuv9HLoeZJNiPEUjV2T7M7xw1hHS91bO+o85sbxrqJ50
 KkgA==
X-Gm-Message-State: AO0yUKWmHEbTtg5gr6xTah83ajRFhWKy4Vr+wqKkXkhOpTMR1akrWuxc
 9k/7bKK4uGOqfKZre1AtHYk=
X-Google-Smtp-Source: AK7set/AJZ7j/MVuYcsxS7J29cli2QDD2mwX9i+TusBa+IrMGuMRDK9mDHpAkO6XQ4k5Ul4aLb/ffg==
X-Received: by 2002:a05:600c:4587:b0:3ea:d611:e1 with SMTP id
 r7-20020a05600c458700b003ead61100e1mr1908418wmo.21.1677856158219; 
 Fri, 03 Mar 2023 07:09:18 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:5d37:537d:5e25:9ef5:7977:d60c])
 by smtp.gmail.com with ESMTPSA id
 t21-20020a1c7715000000b003e2096da239sm5965211wmi.7.2023.03.03.07.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Mar 2023 07:09:17 -0800 (PST)
From: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
To: netdev@vger.kernel.org
Date: Fri,  3 Mar 2023 16:08:18 +0100
Message-Id: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 03 Mar 2023 16:30:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677856158;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UrrwJPkFd0S1Re+XqTQZpJcc+TxHQ0A8Rp4cbauFo18=;
 b=SsLpc76smhv7GBOH7gxTQZlcMdq3XZFrMjgr8HVzZlLg2gYzjOqYvVU+Q7dmlM4E0R
 g4ePb++hj4qcG+87fEeBH/gDOq7SZ7FY2cXQidfkr+E+DGz1Mss1cGujzM+s/+ko6Ox9
 qx13qwyG+3FNIiKZ4VQmjtjvKtGXQ1heI84WBSxssCxQXqol6Z7ourT/y2D2bh76VTNO
 5q/BZ2YQ3MYCQJPVdTQaYDxEQb+DWEYuI+em7uYQLRj0uwfRXEiTcy6Dh5h/E1+HXcOr
 AfDJdgF6+SMkOqERssBChfPAi7UEhbABqjKqnF7lVQh0x7V/mvDsm8HLOTMy7K+eOLUN
 gssw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=SsLpc76s
Subject: [Intel-wired-lan] [PATCH v1] netdevice: use ifmap isteand of plain
 fields
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
Cc: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

clean the code by using the ifmap instead of plain fields,
and avoid code duplication.

P.S: I'm giving credit to the author of the FIXME commit.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c |  4 ++--
 include/linux/netdevice.h                  |  8 +-------
 net/core/dev_ioctl.c                       | 12 ++++++------
 net/core/rtnetlink.c                       |  6 +++---
 4 files changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e1eb1de88bf9..059ff8bcdbbc 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7476,8 +7476,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netif_napi_add(netdev, &adapter->napi, e1000e_poll);
 	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
 
-	netdev->mem_start = mmio_start;
-	netdev->mem_end = mmio_start + mmio_len;
+	netdev->dev_mapping.mem_start = mmio_start;
+	netdev->dev_mapping.mem_end = mmio_start + mmio_len;
 
 	adapter->bd_number = cards_found++;
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 6a14b7b11766..c5987e90a078 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -2031,13 +2031,7 @@ struct net_device {
 	char			name[IFNAMSIZ];
 	struct netdev_name_node	*name_node;
 	struct dev_ifalias	__rcu *ifalias;
-	/*
-	 *	I/O specific fields
-	 *	FIXME: Merge these and struct ifmap into one
-	 */
-	unsigned long		mem_end;
-	unsigned long		mem_start;
-	unsigned long		base_addr;
+	struct ifmap dev_mapping;
 
 	/*
 	 *	Some hardware also needs these fields (state,dev_list,
diff --git a/net/core/dev_ioctl.c b/net/core/dev_ioctl.c
index 5cdbfbf9a7dc..89469cb97e35 100644
--- a/net/core/dev_ioctl.c
+++ b/net/core/dev_ioctl.c
@@ -88,9 +88,9 @@ static int dev_getifmap(struct net_device *dev, struct ifreq *ifr)
 	if (in_compat_syscall()) {
 		struct compat_ifmap *cifmap = (struct compat_ifmap *)ifmap;
 
-		cifmap->mem_start = dev->mem_start;
-		cifmap->mem_end   = dev->mem_end;
-		cifmap->base_addr = dev->base_addr;
+		cifmap->mem_start = dev->dev_mapping.mem_start;
+		cifmap->mem_end   = dev->dev_mapping.mem_end;
+		cifmap->base_addr = dev->dev_mapping.base_addr;
 		cifmap->irq       = dev->irq;
 		cifmap->dma       = dev->dma;
 		cifmap->port      = dev->if_port;
@@ -98,9 +98,9 @@ static int dev_getifmap(struct net_device *dev, struct ifreq *ifr)
 		return 0;
 	}
 
-	ifmap->mem_start  = dev->mem_start;
-	ifmap->mem_end    = dev->mem_end;
-	ifmap->base_addr  = dev->base_addr;
+	ifmap->mem_start  = dev->dev_mapping.mem_start;
+	ifmap->mem_end    = dev->dev_mapping.mem_end;
+	ifmap->base_addr  = dev->dev_mapping.base_addr;
 	ifmap->irq        = dev->irq;
 	ifmap->dma        = dev->dma;
 	ifmap->port       = dev->if_port;
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 5d8eb57867a9..ff8fc1bbda31 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -1445,9 +1445,9 @@ static int rtnl_fill_link_ifmap(struct sk_buff *skb, struct net_device *dev)
 	struct rtnl_link_ifmap map;
 
 	memset(&map, 0, sizeof(map));
-	map.mem_start   = dev->mem_start;
-	map.mem_end     = dev->mem_end;
-	map.base_addr   = dev->base_addr;
+	map.mem_start   = dev->dev_mapping.mem_start;
+	map.mem_end     = dev->dev_mapping.mem_end;
+	map.base_addr   = dev->dev_mapping.base_addr;
 	map.irq         = dev->irq;
 	map.dma         = dev->dma;
 	map.port        = dev->if_port;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
