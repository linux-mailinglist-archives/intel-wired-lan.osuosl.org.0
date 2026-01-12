Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E62D14B76
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:18:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3D7340E4C;
	Mon, 12 Jan 2026 18:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PkM9K8_y_QDr; Mon, 12 Jan 2026 18:18:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51A6040E52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241929;
	bh=el5UxGKyuVvQQYU13vsmsSfuItrkm2KM2pfP5FWsHjg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=paqfkfUrmHRa4Ze1FlEblRnZkRAvUMJ84uoeuMsRq4x+NSaymLUp66TPO/+qkQEra
	 lECOf1nHrMRFEd5fADl+UWJh/+TYyWqcKbzNPqrAOk+CEM+kPRRQf7GQhwGhF5fh+k
	 cjWINzU1cO3VLXZHydLnPeVVhCeY2sc7LiEzGuWiMHJuTWdpmCRfVj7QwHlX0v8rDo
	 ktDLGtHgwkIdiOYkD1qGHOLhd9h1Absm6RxjhekLEBilyX6txX4sICAKk1yOutFta2
	 wtPn+4fIrUMVyirCqfWbXABp2iRGfR7saMiUi/AnwIj27/naKBmoWktA1p1VLcTHho
	 2yc9CR9NGXuzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51A6040E52;
	Mon, 12 Jan 2026 18:18:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2017018D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0710983F97
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1bowCK2YohcW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:17:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1033; helo=mail-pj1-x1033.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65AB583F95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65AB583F95
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65AB583F95
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:42 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-34aa62f9e74so5614726a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 10:17:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768241862; x=1768846662;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=el5UxGKyuVvQQYU13vsmsSfuItrkm2KM2pfP5FWsHjg=;
 b=H2QLp8+bJnx+o5xdqP76mhw+LCjAuFXQcGt9muFW89BFcFUZoH2qpUp7CSwiOlusZT
 kUysFdhkGUvH9ub72yrHlcAV5XI9EwOz6C5Mamism8xWZpT9jny+3irVJ1v5BJ/kxaTT
 ba1YJswjKJxLDBVF6Scy2mCj3wr+L3rfzv4dP1h0wlLvPKRHY7CAE7ass2XapE1G5auV
 kQFyeJFmuQb0eEjx75Ib+ykadf7OGkGCNgoYWJgTXCgNov+q0megbrQ13GEjUdw2Hvp/
 vX1GoA71fd0Xs9tUPOrA0nK2srNv1FCxz0pgWaYr15+G7a0qIpI+mMm6O65jTvD5NsOA
 Js0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVpkzgvsVU2lN3zRJe++LLtPYya+Yvqy6KC3XW9kb7Y8yIF9MSjbU9ioAEfanVcqhrkIRdh+Obw55D7XqWuHBM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzHgyKVx/jbJUggRCNvDEG8PFA1QOxekTt1K/P1JR/3Pv6PQ7hc
 BQZcIQLKX4c28RV3/Pw979JtvHfmws6OLHZMl+5DxXf1JI2dza031kH1
X-Gm-Gg: AY/fxX6X59HasSN+1aRHxdFBNEilPYAW0vJ7EvG/Kn+TO6hgPzhFsPM5ldsotC7NkeR
 WY9GgG+O9mg05D1WGDo1kMqHROImy/1uxypIxpLBpSMQ9mar0izId1zFWRkilixQEmmAVeP9aUp
 wbWKr3+9lwOqGxUWOpIhetMKbldinw+Ud4NlstloWkIFu/FFG5NZUz43Yf4Dz7TDMM1itKs0qCn
 BBXaoScTTxkK/fDZaKlAKbfqhlHJQHa+LH1r/lXQHEi8SmxcZTcgEBFEi3vIuKuh8PKZ/35T7Gu
 3XaJDH+rVH7f0JFPRTISwN0oJ5ArrScIJdnXwBqCNQ8B3ruvzHpSXUINZKF2/MJ0t+z2peKH6/7
 A5cetnB4L44t+YknML39JsJJmxm+7WulqZgoE9p/TDIOR62Rg6dRgOJ4N4VQI9pfDgKe18OlZzS
 1x0zVPyuDDz17vaqetM0fs905MbeSDv9137g3WQZUGySO+VX9R8i0GUriHfKw2L0DMG+TNqTyaz
 cyr
X-Google-Smtp-Source: AGHT+IGw8c/ge0kogLSvooJ8T05HpwWG8XaZIOQXBwEzKsqUzkn4DfT0BloqE2l57lQqyy6/HPMuNg==
X-Received: by 2002:a17:90b:2692:b0:34c:99d6:175d with SMTP id
 98e67ed59e1d1-34f68c30794mr16139992a91.2.1768241861645; 
 Mon, 12 Jan 2026 10:17:41 -0800 (PST)
Received: from localhost.localdomain ([122.183.54.120])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34f5f7c4141sm18165365a91.6.2026.01.12.10.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jan 2026 10:17:41 -0800 (PST)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org,
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com,
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org,
 virtualization@lists.linux.dev, netdev@vger.kernel.org,
 I Viswanath <viswanathiyyappan@gmail.com>
Date: Mon, 12 Jan 2026 23:46:25 +0530
Message-ID: <20260112181626.20117-6-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
References: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Jan 2026 18:18:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768241862; x=1768846662; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=el5UxGKyuVvQQYU13vsmsSfuItrkm2KM2pfP5FWsHjg=;
 b=WWaght5GOtOF/xQvoPUdnbbJ2WS10ftQGwDIGPpIxAiRoJ33j0sPnMv9g2dr+IF2yJ
 83JrzpBk84+rbrbuzeyO3TkwkKPENvZgMPZlgbn6rYLyKSiIBdvYLWSBBz7z2BWjC7YQ
 2uo6UiYY74oq9TgdSyC04ZbOLEE1gXxiDyQMsaysVGgwjBDCO48CRBztMS+iTjCDww/l
 79EpOkiV4Kie1JAwDITtZwfmcaZCE5U6lYwcpfgpQ1TOldYGP5xlMEmRN8pbl/gg4dJL
 2X1kjJxX+F/iXkdazLjJi7CiH+Vk1MsDabdWrPcir9JZTalG+k8oNJZjTMN2ng3aEsqa
 6UCQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=WWaght5G
Subject: [Intel-wired-lan] [PATCH net-next v8 5/6] vmxnet3: Implement
 ndo_write_rx_mode callback
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add callback and update the code to use the rx_mode snapshot and
deferred write model

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 drivers/net/vmxnet3/vmxnet3_drv.c | 38 ++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vmxnet3/vmxnet3_drv.c b/drivers/net/vmxnet3/vmxnet3_drv.c
index 0572f6a9bdb6..fe76f6a2afea 100644
--- a/drivers/net/vmxnet3/vmxnet3_drv.c
+++ b/drivers/net/vmxnet3/vmxnet3_drv.c
@@ -2775,18 +2775,18 @@ static u8 *
 vmxnet3_copy_mc(struct net_device *netdev)
 {
 	u8 *buf = NULL;
-	u32 sz = netdev_mc_count(netdev) * ETH_ALEN;
+	u32 sz = netif_rx_mode_mc_count(netdev) * ETH_ALEN;
+	char *ha_addr;
+	int ni;
 
 	/* struct Vmxnet3_RxFilterConf.mfTableLen is u16. */
 	if (sz <= 0xffff) {
 		/* We may be called with BH disabled */
 		buf = kmalloc(sz, GFP_ATOMIC);
 		if (buf) {
-			struct netdev_hw_addr *ha;
 			int i = 0;
-
-			netdev_for_each_mc_addr(ha, netdev)
-				memcpy(buf + i++ * ETH_ALEN, ha->addr,
+			netif_rx_mode_for_each_mc_addr(ha_addr, netdev, ni)
+				memcpy(buf + i++ * ETH_ALEN, ha_addr,
 				       ETH_ALEN);
 		}
 	}
@@ -2796,8 +2796,23 @@ vmxnet3_copy_mc(struct net_device *netdev)
 
 static void
 vmxnet3_set_mc(struct net_device *netdev)
+{
+	bool allmulti = !!(netdev->flags & IFF_ALLMULTI);
+	bool promisc = !!(netdev->flags & IFF_PROMISC);
+	bool broadcast = !!(netdev->flags & IFF_BROADCAST);
+
+	netif_rx_mode_set_flag(netdev, NETIF_RX_MODE_UC_SKIP, true);
+	netif_rx_mode_set_flag(netdev, NETIF_RX_MODE_MC_SKIP, allmulti);
+
+	netif_rx_mode_set_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_rx_mode_set_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC, promisc);
+	netif_rx_mode_set_cfg(netdev, NETIF_RX_MODE_CFG_BROADCAST, broadcast);
+}
+
+static void vmxnet3_write_mc(struct net_device *netdev)
 {
 	struct vmxnet3_adapter *adapter = netdev_priv(netdev);
+	int mc_count = netif_rx_mode_mc_count(netdev);
 	unsigned long flags;
 	struct Vmxnet3_RxFilterConf *rxConf =
 					&adapter->shared->devRead.rxFilterConf;
@@ -2806,7 +2821,7 @@ vmxnet3_set_mc(struct net_device *netdev)
 	bool new_table_pa_valid = false;
 	u32 new_mode = VMXNET3_RXM_UCAST;
 
-	if (netdev->flags & IFF_PROMISC) {
+	if (netif_rx_mode_get_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC)) {
 		u32 *vfTable = adapter->shared->devRead.rxFilterConf.vfTable;
 		memset(vfTable, 0, VMXNET3_VFT_SIZE * sizeof(*vfTable));
 
@@ -2815,16 +2830,16 @@ vmxnet3_set_mc(struct net_device *netdev)
 		vmxnet3_restore_vlan(adapter);
 	}
 
-	if (netdev->flags & IFF_BROADCAST)
+	if (netif_rx_mode_get_cfg(netdev, NETIF_RX_MODE_CFG_BROADCAST))
 		new_mode |= VMXNET3_RXM_BCAST;
 
-	if (netdev->flags & IFF_ALLMULTI)
+	if (netif_rx_mode_get_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI))
 		new_mode |= VMXNET3_RXM_ALL_MULTI;
 	else
-		if (!netdev_mc_empty(netdev)) {
+		if (mc_count) {
 			new_table = vmxnet3_copy_mc(netdev);
 			if (new_table) {
-				size_t sz = netdev_mc_count(netdev) * ETH_ALEN;
+				size_t sz = mc_count * ETH_ALEN;
 
 				rxConf->mfTableLen = cpu_to_le16(sz);
 				new_table_pa = dma_map_single(
@@ -3213,7 +3228,7 @@ vmxnet3_activate_dev(struct vmxnet3_adapter *adapter)
 	}
 
 	/* Apply the rx filter settins last. */
-	vmxnet3_set_mc(adapter->netdev);
+	netif_schedule_rx_mode_work(adapter->netdev);
 
 	/*
 	 * Check link state when first activating device. It will start the
@@ -3977,6 +3992,7 @@ vmxnet3_probe_device(struct pci_dev *pdev,
 		.ndo_get_stats64 = vmxnet3_get_stats64,
 		.ndo_tx_timeout = vmxnet3_tx_timeout,
 		.ndo_set_rx_mode = vmxnet3_set_mc,
+		.ndo_write_rx_mode = vmxnet3_write_mc,
 		.ndo_vlan_rx_add_vid = vmxnet3_vlan_rx_add_vid,
 		.ndo_vlan_rx_kill_vid = vmxnet3_vlan_rx_kill_vid,
 #ifdef CONFIG_NET_POLL_CONTROLLER
-- 
2.47.3

