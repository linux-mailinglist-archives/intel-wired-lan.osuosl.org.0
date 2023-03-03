Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8393E6A9E44
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 19:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15F6D416A6;
	Fri,  3 Mar 2023 18:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15F6D416A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677867399;
	bh=Og56h7mPCqQc39090s3NmI86hz8MAYNDH18rFLIcO/8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pdzYyY1VrjmZvAL5gcdu+y/GH1W8XGyGm3b2wJh28J3a62K4+KphdYzN//8BMh1Ay
	 VLJC7T0uYgm34FCU0TziZGm8+NIakoBennOs1yuQf1IlYVu3jNSbLqbM4+PNy0sCU+
	 E0Q42WImoLiwgJvI9FdzS6c9ZbOwjmSkpPnNVi7HaFUR0GEj+iLWF4V2MvkLqfObE3
	 MPBPNuuyEr4nuPrQCRIZUynElH+pJqOR88Yy4TlQ0o5XqILfXqGeuydfdGJPHUH4mI
	 usaUWpV6aApGBy/b5/2iJ02/jbm6+XRhMmxdLjQrthnN923ykvyRjmB2pPquw0WvOX
	 FusHUm8kbJKNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 11PuSHF1DgMc; Fri,  3 Mar 2023 18:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C7DD4012E;
	Fri,  3 Mar 2023 18:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C7DD4012E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 978A31BF40E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 18:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DA8C4168E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 18:09:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DA8C4168E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YH8fHCvv0lLt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 18:09:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91A6840354
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91A6840354
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 18:09:45 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id j3so2157879wms.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Mar 2023 10:09:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677866983;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=u37BUiqVfqrO2g1C0p7SHL4Rg4pvcPK9tYwoGI/HO3M=;
 b=W62gAOpwF8wyVCvV9iijaTo4ukex4wRGGOAbroqSlxy51dPHsZQvPYYp/z0IgM9drC
 mXJqmS+7+k9WhEDK4L3wiX1gT7liInDLcNXoGkLEqLyPMC7iZbfM0VX7uEGesdHXcNhQ
 Qo2QlW1ig+9GfVYTBUJ7V2TF//nXGc6OzL/+/aPYvVGGNk6lcDHVlp0kgoBDcXXrCLO5
 k++jd+G/Zo+Gli7QHT3XZ1+XBjbfomeJ1HLkmaodFXVz2Zl2piaonzW6DxGEqfpSdLVE
 S8Phn56BmzWCZZINbsMTGRw1mlNt0RDjDPQ/ajrci6NAXdtxI9HXu9gopHZLPtC7zWyr
 H5Eg==
X-Gm-Message-State: AO0yUKXtNEp34O3Cv0BEiV3DWbAJHiXbxkRd3xCrphtGU4a7kIHc6NWv
 fkOEMwyG3F8DwlTqEcq4k4c=
X-Google-Smtp-Source: AK7set/YtUomOQPXQVcIghVlu+EccsrABmhpcldiGMVUGn/xmHgV4vmNVNeGXL7y+cFbOJIJzb4A7g==
X-Received: by 2002:a05:600c:1550:b0:3e9:c2f4:8ad4 with SMTP id
 f16-20020a05600c155000b003e9c2f48ad4mr2413026wmg.8.1677866983577; 
 Fri, 03 Mar 2023 10:09:43 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:5d37:537d:5e25:9ef5:7977:d60c])
 by smtp.gmail.com with ESMTPSA id
 o11-20020a05600c4fcb00b003e8f0334db8sm7458083wmq.5.2023.03.03.10.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Mar 2023 10:09:43 -0800 (PST)
From: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
To: netdev@vger.kernel.org
Date: Fri,  3 Mar 2023 19:09:26 +0100
Message-Id: <20230303180926.142107-1-vincenzopalazzodev@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 03 Mar 2023 18:16:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677866983;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=u37BUiqVfqrO2g1C0p7SHL4Rg4pvcPK9tYwoGI/HO3M=;
 b=Lsc142JPIawJVGB4o/tc8fQxZJXiiZm6kcw5EUuJFv2SRnxqVKjx0xxHpB1rbA5ajW
 mGo7wdl4JOJsr26lfudesGTFg0Uq7BmqaBOTivHBfkQpfhhdnt2goqnDYuMblgyun9Um
 DJP7JiaV4/nBNFDUECKP8YyW1tJQ8d5E7WsBb7X5tD5XBUY9WhERh2tWCXQ4w1YUqqBJ
 kf8lVkFKdh3aJprPXvDjhg4fIUhdScB5W4ujb/eJx/8iqS4n4ZooWkmx9akVehS2JXEP
 aZhqxgeSBvvjVPFbwIQLZGqfFLOmYiFY0M6AqjOL1ooZu6xHLogN+Zcr/EX+xX4CqO7h
 Wz2Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Lsc142JP
Subject: [Intel-wired-lan] [PATCH v2] netdevice: use ifmap instead of plain
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
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

clean the code by using the ifmap instead of plain fields,
and avoid code duplication.

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
