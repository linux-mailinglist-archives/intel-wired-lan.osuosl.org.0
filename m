Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0916AC5FE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 16:56:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2DD481400;
	Mon,  6 Mar 2023 15:56:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2DD481400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678118182;
	bh=QcZu7n2BQnwXnzSl4hg2GjURmV8LiEw7cltozCvrfsU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=05S/z1aM9izZ8zY4a3tjnU4NZLP7RZLVS4ppldx0QiCCHN7GxDVsb94aXOUNbTqe4
	 3lXc5gHol0UtMIByOfh1uoVcwH3vr+60quMajzU4AgdgtDxftwESTpMmZQjuWmBM/2
	 wVoghvvaefwJOTuIFFqOrgNLAKYx+A5OjeQTJGzLxQdmG4zg6NL4Kwww6fICoR2VjA
	 pHg1Fw7suFUY4w6s/M2uTjxE1fN7P9dvPtXH+a3Jmi44Cf8EK5CxppNtxnSfQdMyYM
	 LLzEBazZnLzb7YUYxjMMEmWfURhkKVnYAbyIvwm8FboyvtqCISQjXiSHioizeSGyIU
	 9Zb53luC01tXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TI8UmIZhiFrH; Mon,  6 Mar 2023 15:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E06181404;
	Mon,  6 Mar 2023 15:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E06181404
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C1BE1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 11:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1453182017
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 11:56:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1453182017
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ir2mabc-atXf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 11:56:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A925782013
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A925782013
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 11:56:43 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id p26so3022447wmc.4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Mar 2023 03:56:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677931001;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TKK/iG5K9zWrV4XF7+E7FOfh/8Q63ckdq09rrLqINWo=;
 b=nnSGUdL0XoPk2orXPTD+A91PC4B3gb1cm+iSLGN7y8OVDAIOYdmNXcyOQmAZgJwI0G
 6MTfS9o6pzOlwzNtmlzaSF/RjlrQyLE9+hsl8l0KU4B23AAWXPqHKJ/w/KoWKOulIG6R
 qS9RVPu9moDi+W9+ISO6gnFUPQ/cI7uRrhZ+KVByFB3UBPNoZGB2jXkHhgM2ocrLqf2q
 gMenShNg4Myk0r6fCHNej8+ZaoaJ0tIbwnhQDkq+aQE1/7HD8M+hYfaBPTjUG+j53Obf
 cRvp03luR7Gu07rNirtRiXOWB7sqpbuxMU+34W8x3fUWcWMILG47JPYhfFSGDKWhvD34
 eSRA==
X-Gm-Message-State: AO0yUKU6vOgjXWNfaYTbwihfDk27e3t3/Jn95eC7WU24H5SY+oBgogiz
 RZGrmqaWadGKE8rdUNzNzEg=
X-Google-Smtp-Source: AK7set8QmKjg5OZgxTVG20QxLFctKfhOEeHh/W64rCmn+sUmNFU9XvACuXnvus+G2a+99qBwX4N0LQ==
X-Received: by 2002:a05:600c:1906:b0:3eb:3c76:c23c with SMTP id
 j6-20020a05600c190600b003eb3c76c23cmr4251846wmq.3.1677931001497; 
 Sat, 04 Mar 2023 03:56:41 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:5d37:537d:5e25:9ef5:7977:d60c])
 by smtp.gmail.com with ESMTPSA id
 m13-20020a056000008d00b002c54c92e125sm4901142wrx.46.2023.03.04.03.56.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Mar 2023 03:56:41 -0800 (PST)
From: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
To: netdev@vger.kernel.org
Date: Sat,  4 Mar 2023 12:56:26 +0100
Message-Id: <20230304115626.215026-1-vincenzopalazzodev@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 06 Mar 2023 15:56:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677931001;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=TKK/iG5K9zWrV4XF7+E7FOfh/8Q63ckdq09rrLqINWo=;
 b=aJlQsvhktZD9cHDc/EXe5gi3FOd5XwLkxRRSQRkfvkKtrf8xkfvhzExrVBVb5tWgK6
 2RUaCFcNAlKPF8+Ect2i5/G/COTpq3dYG9GueLiLHFjkVWrDSrjkJsnx43UtLk2EZqkO
 fgZpeKWJlWz0wcI1iWjXViApBiQ9T72OsV6+hJKwPxPYDVmQdZ/ORAREYfVOWMcHlLut
 d536A9J/ZVHxu6SRSFBU4ZOAiKB7p1t6JwRAl3D760Xn8hZn75VV7obnAqNO8/CcjtUT
 tJd5svqJcjJzaSoUA7iheRyayYwJc52s6OdxhytSKJVjWd1r/tF8Et5iyy7Nvr1v+vCo
 vJEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=aJlQsvhk
Subject: [Intel-wired-lan] [PATCH v3] netdevice: use ifmap instead of plain
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
Cc: jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, davem@davemloft.net,
 khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

clean the code by using the ifmap instead of plain fields,
and avoid code duplication.

Reported-by: kernel test robot <lkp@intel.com>
Link: https://lore.kernel.org/oe-kbuild-all/202303041847.nRrrz1v9-lkp@intel.com/
Signed-off-by: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
---
 drivers/net/arcnet/com20020_cs.c           |  7 ++++---
 drivers/net/ethernet/davicom/dm9000.c      |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c |  4 ++--
 drivers/net/wan/pc300too.c                 |  4 ++--
 drivers/net/wan/pci200syn.c                |  4 ++--
 include/linux/netdevice.h                  |  8 +-------
 net/core/dev_ioctl.c                       | 12 ++++++------
 net/core/rtnetlink.c                       |  6 +++---
 8 files changed, 21 insertions(+), 26 deletions(-)

diff --git a/drivers/net/arcnet/com20020_cs.c b/drivers/net/arcnet/com20020_cs.c
index dc3253b318da..5e5e065acfb9 100644
--- a/drivers/net/arcnet/com20020_cs.c
+++ b/drivers/net/arcnet/com20020_cs.c
@@ -229,7 +229,8 @@ static int com20020_config(struct pcmcia_device *link)
 		goto failed;
 	}
 
-	ioaddr = dev->base_addr = link->resource[0]->start;
+	/* FIXME: multiple assignments should be avoided */
+	ioaddr = dev->dev_mapping.base_addr = link->resource[0]->start;
 	dev_dbg(&link->dev, "got ioaddr %Xh\n", ioaddr);
 
 	dev_dbg(&link->dev, "request IRQ %d\n",
@@ -265,7 +266,7 @@ static int com20020_config(struct pcmcia_device *link)
 	}
 
 	netdev_dbg(dev, "port %#3lx, irq %d\n",
-		   dev->base_addr, dev->irq);
+		   dev->dev_mapping.base_addr, dev->irq);
 	return 0;
 
 failed:
@@ -297,7 +298,7 @@ static int com20020_resume(struct pcmcia_device *link)
 	struct net_device *dev = info->dev;
 
 	if (link->open) {
-		int ioaddr = dev->base_addr;
+		int ioaddr = dev->dev_mapping.base_addr;
 		struct arcnet_local *lp = netdev_priv(dev);
 
 		arcnet_outb(lp->config | 0x80, ioaddr, COM20020_REG_W_CONFIG);
diff --git a/drivers/net/ethernet/davicom/dm9000.c b/drivers/net/ethernet/davicom/dm9000.c
index b21e56de6167..5f87903fc516 100644
--- a/drivers/net/ethernet/davicom/dm9000.c
+++ b/drivers/net/ethernet/davicom/dm9000.c
@@ -1569,7 +1569,7 @@ dm9000_probe(struct platform_device *pdev)
 	}
 
 	/* fill in parameters for net-dev structure */
-	ndev->base_addr = (unsigned long)db->io_addr;
+	ndev->dev_mapping.base_addr = (unsigned long)db->io_addr;
 
 	/* ensure at least we have a default set of IO routines */
 	dm9000_set_io(db, iosize);
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
 
diff --git a/drivers/net/wan/pc300too.c b/drivers/net/wan/pc300too.c
index 4766446f0fa0..2fd9ce9825e0 100644
--- a/drivers/net/wan/pc300too.c
+++ b/drivers/net/wan/pc300too.c
@@ -434,8 +434,8 @@ static int pc300_pci_init_one(struct pci_dev *pdev,
 
 		spin_lock_init(&port->lock);
 		dev->irq = card->irq;
-		dev->mem_start = ramphys;
-		dev->mem_end = ramphys + ramsize - 1;
+		dev->dev_mapping.mem_start = ramphys;
+		dev->dev_mapping.mem_end = ramphys + ramsize - 1;
 		dev->tx_queue_len = 50;
 		dev->netdev_ops = &pc300_ops;
 		hdlc->attach = sca_attach;
diff --git a/drivers/net/wan/pci200syn.c b/drivers/net/wan/pci200syn.c
index ea86c7035653..6cd2c40ef281 100644
--- a/drivers/net/wan/pci200syn.c
+++ b/drivers/net/wan/pci200syn.c
@@ -373,8 +373,8 @@ static int pci200_pci_init_one(struct pci_dev *pdev,
 
 		spin_lock_init(&port->lock);
 		dev->irq = card->irq;
-		dev->mem_start = ramphys;
-		dev->mem_end = ramphys + ramsize - 1;
+		dev->dev_mapping.mem_start = ramphys;
+		dev->dev_mapping.mem_end = ramphys + ramsize - 1;
 		dev->tx_queue_len = 50;
 		dev->netdev_ops = &pci200_ops;
 		hdlc->attach = sca_attach;
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
