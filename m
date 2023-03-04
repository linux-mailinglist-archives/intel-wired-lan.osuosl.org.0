Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D76396AC5FF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 16:56:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 276DE81770;
	Mon,  6 Mar 2023 15:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 276DE81770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678118186;
	bh=sRXP+OLfYZ3kS6Po9e4g4qnRmItlfn+Xg9jjPOZXyVA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VFlzzu1Ldlwk+T6oPOnxN6ZFPANdb5kh3jxfDE8G847LetVxxnHPn1l94kPllAR+E
	 dsw/Si3S+vf64CK7KwznIQOmLaS7zBRcISmgPCpY1BE5aNBEFTCV0F+GKK8nlwezbi
	 SQLc7JoRkW+nrxbu94tUB9Vw0zOJFhPBFlL0BTRM+7fexdpR4/80BT3+YF4EYrddcg
	 y9JWs310yS56xHemKp47UM1S02hJEqLD1hA4m+Fm7quKYPsX0NhQPmhC/nnukBFxkg
	 72Ieyb5N79hvAyyfYbLPhmckp15X2k5MB4SvEOUAJhPu6npn8pw+mFonVN1+anUbJL
	 E+fNAY8aiUHGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Trna0vrHr_rD; Mon,  6 Mar 2023 15:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C103281404;
	Mon,  6 Mar 2023 15:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C103281404
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 104791BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 12:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E49308218C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 12:26:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E49308218C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwA0Wkwzooay for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 12:26:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B86E82180
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B86E82180
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 12:26:30 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 ay29-20020a05600c1e1d00b003e9f4c2b623so5453427wmb.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Mar 2023 04:26:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677932788;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=t44anjaBAzNJ7CFzTmVvfekMt2lk1zm9OMq9giS02Ak=;
 b=a66G2F61gdyYOzLco3hLsID5hGqgHG4p870rhd8cQWR/TNXuyobfDcvGbl9Bkf/0t2
 K99pwpuHgEGzg8V/m8QjRxVqfNaDedvIcMBdCbEHuwryXFNSKABHV36zG0JMcnZ8Y39C
 tvKC36Cq65jP6FZz+3BBlUuLw2mRM1hCc9CkQNmnieKIlrQ7H42dn4DhKKRh2QosAkL5
 VK8ABEhRbfl2QM3l4RdKR9gS5aJPtU6tnCGrJSjg6ADmubUMSy8C/ZgRJ/7wCNlKaDoZ
 sBs1EuJKBeOrHlvU23mz6cCNfX69A3tP28xz9InAt6utFXFG+2KZmFfVGitBCDo6sYnd
 8s5g==
X-Gm-Message-State: AO0yUKV7Pgw7YOFtROn45if7/wuClKY5J98Lg4DLVtdaSNFgYIKHo0Ql
 7h0h1uwPrgYQcxOuGb72CSQ=
X-Google-Smtp-Source: AK7set9DwdAnpfclMzNp0P9Q2G6H8iesddS3Vn4c69OI7RAPRgCuIJjH++zN+0uDG2mXoUfGY3PDvQ==
X-Received: by 2002:a05:600c:3107:b0:3eb:38a2:2bcd with SMTP id
 g7-20020a05600c310700b003eb38a22bcdmr4248253wmo.28.1677932788478; 
 Sat, 04 Mar 2023 04:26:28 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:5d37:537d:5e25:9ef5:7977:d60c])
 by smtp.gmail.com with ESMTPSA id
 r18-20020a05600c35d200b003dfe549da4fsm9434658wmq.18.2023.03.04.04.26.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Mar 2023 04:26:27 -0800 (PST)
From: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
To: netdev@vger.kernel.org
Date: Sat,  4 Mar 2023 13:24:33 +0100
Message-Id: <20230304122432.265902-1-vincenzopalazzodev@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 06 Mar 2023 15:56:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677932788;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=t44anjaBAzNJ7CFzTmVvfekMt2lk1zm9OMq9giS02Ak=;
 b=nQR7FlhV5FoL7iWfOb7hDwYGk4wPH8Lxju3D0e7HsuxtHi8MOUq9ysKAqyu/SJQgoe
 XJdBjCycNSnlPCEQuZqiL3Hmzh5Su+A9bdlcgYGFXA4Bq7BnSpfmG0HiRIggZKNYipV3
 DNiWn41qYmv0s7WlNZ3UFB9l2DILbUjxQfpWQDKgQKuldlgZY8TZLjbeVPUBi1r/B5i0
 LpvVorOv2EPht4lgwiapKd/OHeYbechmpsiRvUWwBOB8wO+PROpG8xX21LdL7BTbMhIG
 WKGoWkC2Rq5SlKvSNrvaGBqIz4jkgYuITtiKEpjjkxQt0HBzAMm0AlFgGTPyIkft+Qek
 9lEA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=nQR7FlhV
Subject: [Intel-wired-lan] [PATCH v4] netdevice: use ifmap instead of plain
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

v4 with some build error that the 0 day bot found while
compiling some drivers that I was not able to build on 
my machine.

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
