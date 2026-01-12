Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 995EFD14B72
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:18:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43A6840E4B;
	Mon, 12 Jan 2026 18:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZxvDT0uhsmuG; Mon, 12 Jan 2026 18:18:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9486A40E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241927;
	bh=iqJBVDW73KCgBwgVWk5qYLsHzLDdObx2o+GjzAsqssQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TRg4LTowOtK7zCtMo2/c3kyZmmmHXU3dYBqwDd9212ZMqf5c3eQmBJXlxiI0jLFNq
	 Bnps1uC42VPsCTTPasbma/BV5XflU9hFpvhmcjhrY/lXXPn/+GzqEqsV8HkYNfpAJE
	 uyST2yLAl85wU+xL6tcBK6JsGDjBwXInVpMEEEtFNHNuiebMzbLSGouwLuloYLtDya
	 ktHYf18TiyfJS3rj2hsyR+YMYDyjWGXOjv5rji0L+9d1BmInnTEDuaif7xPtiDjkYv
	 hjNYxodxhdElNFLweVrj54AR2+T8XF61YScFcLKMbNLbLyQ7KicBYCPmNSOyraSIlA
	 cQBrmkN0lfJ1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9486A40E4C;
	Mon, 12 Jan 2026 18:18:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C173B231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7B1E4087B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-LUQykpGHEq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::534; helo=mail-pg1-x534.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 002DF40E3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 002DF40E3F
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 002DF40E3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:16 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id
 41be03b00d2f7-c56188aef06so1188393a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 10:17:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768241836; x=1768846636;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=iqJBVDW73KCgBwgVWk5qYLsHzLDdObx2o+GjzAsqssQ=;
 b=PNOKSw99irAzzV7Ex5IiVQ8HIuJEk6fArQkMNwuvT8VHs17gTYO43Ttv+yHOCZuZ0x
 dJq39TLQVi/MHf9Jns7xjYP7+yGF58vTKAdtyYgdhMLxz6CJznAoI4AObHD2uL9vRXjy
 khtZtVvin3qivPTI2NbI/UIc1IlwiqxRBe0KcRlBmMW6hERns3yHb9Ppofp9aZazBn14
 tjdPDASZSwb4oSP21eZqrZgbDUhZwbMRHFlHfsfBz9zZx1T0o0a3vw4KkhLhHot5RJkB
 EEIFj2pqLUDMYE2/Yws7yI2zKb1Fp55vplin2nwbxT2ERj/jKhkxAvGVVJU3Vk44mWiR
 sN2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVAce7iQkdas4JPGNhK6hyvhgrsvm84gUPo51jovOGfVU3AQNt30yjl7S7cb45eH6QNObltVx7zxCJWLwEagoY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx/Fiyf2zmvFcm6/sAfTyRmjtqbH6rHiltlpj37iYTY0mtflmeB
 TZpYIrywXpFyQ7T15FXXsd1ReEjSWuGs1dV7EpJkAX3/+5Rodyww9qkK
X-Gm-Gg: AY/fxX6G1JQcDkCeU7wWnQlkWMXccydebKRp+gm9RbE8FuSXIWUGYwXJsZfJuimYpSN
 udmlQfhR1TJSM00+0L+1l0P4X+63UlFMX+GURAIXvacGuQzXov+QKladNIs/Xe8IRP/Ri2Uevns
 g0kOIyHpg3XZkAa+qE/cEJUVXvlR3iWFa9GrRaAT4YirUcrGyIzjloIjFBI2xmDz2Z3hspbmRwt
 DhHMKNzG679tQ8ItDawyOn5E2YERsIEAlZrnWj3Tp31208F3wekKmmRle/QZeKMBs3Y/V7MOmQV
 P7i/JksekfXqDbaq0NOcT/VeA/L5eqq4XKswh7KhrLh+RWv78kdsFJF8bhrwkokEatiiqqGruTw
 hVRGG2FnJhq+RQZdM03n1C7cZsIeTtnycoXR02+QYsKgxaRFxb7zOosahIZqp9m64z/eMiB6mdV
 ygc1D1vyns4fNISDnct2MTg01pc5L0Ouk9oAotooabttz5qUcs+ZiBaCpJRUzsX8k5vQ==
X-Google-Smtp-Source: AGHT+IFz60SshqGbcLnvzcM3MjSw6gKXYr6Y8WSw1HT0006/my+JtsdMnEbYpRT5lPUoqFpp4CsP0A==
X-Received: by 2002:a17:90b:3c45:b0:339:eff5:ef26 with SMTP id
 98e67ed59e1d1-34f68cb94f4mr16313803a91.30.1768241836105; 
 Mon, 12 Jan 2026 10:17:16 -0800 (PST)
Received: from localhost.localdomain ([122.183.54.120])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34f5f7c4141sm18165365a91.6.2026.01.12.10.17.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jan 2026 10:17:15 -0800 (PST)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org,
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com,
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org,
 virtualization@lists.linux.dev, netdev@vger.kernel.org,
 I Viswanath <viswanathiyyappan@gmail.com>
Date: Mon, 12 Jan 2026 23:46:22 +0530
Message-ID: <20260112181626.20117-3-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
References: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Jan 2026 18:18:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768241836; x=1768846636; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iqJBVDW73KCgBwgVWk5qYLsHzLDdObx2o+GjzAsqssQ=;
 b=cPIB06PuYpYOzdWRsfNc8ukIt1nWTz2PHdBHxOjkaVgQSRjM+ocbZWe03RUyJxOInz
 WSvXimHSO0QJMhZ1CEFchZSzEjx33zRas8w99StbWBfKlclVnwNQtWVHdxIObWa5FuEc
 jodYSPbFWlPBBXGMXW5MFclLYSktlYAFky41V9nfKWJivWQbL9YKwJZKSZkAvvZLU77X
 rinYwuhMlFhkK6FEc2u9R4WZ7anIox9GADph/9jHePgtWtTaNpDGCH1CioY9OQePWENi
 IQv673miFDroQAUfjchVO+2gnNkhrvgLZhnCdGBRQIn+VInir2Ww2G4PeDCCS5lYCvLu
 1XjA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=cPIB06Pu
Subject: [Intel-wired-lan] [PATCH net-next v8 2/6] virtio-net: Implement
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
 drivers/net/virtio_net.c | 61 +++++++++++++++++-----------------------
 1 file changed, 26 insertions(+), 35 deletions(-)

diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index 22d894101c01..1d0e5f6ceb88 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -460,9 +460,6 @@ struct virtnet_info {
 	/* Work struct for config space updates */
 	struct work_struct config_work;
 
-	/* Work struct for setting rx mode */
-	struct work_struct rx_mode_work;
-
 	/* OK to queue work setting RX mode? */
 	bool rx_mode_work_enabled;
 
@@ -3866,33 +3863,30 @@ static int virtnet_close(struct net_device *dev)
 	return 0;
 }
 
-static void virtnet_rx_mode_work(struct work_struct *work)
+static void virtnet_write_rx_mode(struct net_device *dev)
 {
-	struct virtnet_info *vi =
-		container_of(work, struct virtnet_info, rx_mode_work);
+	struct virtnet_info *vi = netdev_priv(dev);
 	u8 *promisc_allmulti  __free(kfree) = NULL;
-	struct net_device *dev = vi->dev;
 	struct scatterlist sg[2];
 	struct virtio_net_ctrl_mac *mac_data;
-	struct netdev_hw_addr *ha;
+	char *ha_addr;
 	int uc_count;
 	int mc_count;
 	void *buf;
-	int i;
+	int i, ni;
 
 	/* We can't dynamically set ndo_set_rx_mode, so return gracefully */
 	if (!virtio_has_feature(vi->vdev, VIRTIO_NET_F_CTRL_RX))
 		return;
 
-	promisc_allmulti = kzalloc(sizeof(*promisc_allmulti), GFP_KERNEL);
+	promisc_allmulti = kzalloc(sizeof(*promisc_allmulti), GFP_ATOMIC);
 	if (!promisc_allmulti) {
 		dev_warn(&dev->dev, "Failed to set RX mode, no memory.\n");
 		return;
 	}
 
-	rtnl_lock();
-
-	*promisc_allmulti = !!(dev->flags & IFF_PROMISC);
+	*promisc_allmulti = netif_rx_mode_get_cfg(dev,
+						  NETIF_RX_MODE_CFG_PROMISC);
 	sg_init_one(sg, promisc_allmulti, sizeof(*promisc_allmulti));
 
 	if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_RX,
@@ -3900,7 +3894,8 @@ static void virtnet_rx_mode_work(struct work_struct *work)
 		dev_warn(&dev->dev, "Failed to %sable promisc mode.\n",
 			 *promisc_allmulti ? "en" : "dis");
 
-	*promisc_allmulti = !!(dev->flags & IFF_ALLMULTI);
+	*promisc_allmulti = netif_rx_mode_get_cfg(dev,
+						  NETIF_RX_MODE_CFG_ALLMULTI);
 	sg_init_one(sg, promisc_allmulti, sizeof(*promisc_allmulti));
 
 	if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_RX,
@@ -3908,27 +3903,22 @@ static void virtnet_rx_mode_work(struct work_struct *work)
 		dev_warn(&dev->dev, "Failed to %sable allmulti mode.\n",
 			 *promisc_allmulti ? "en" : "dis");
 
-	netif_addr_lock_bh(dev);
-
-	uc_count = netdev_uc_count(dev);
-	mc_count = netdev_mc_count(dev);
+	uc_count = netif_rx_mode_uc_count(dev);
+	mc_count = netif_rx_mode_mc_count(dev);
 	/* MAC filter - use one buffer for both lists */
 	buf = kzalloc(((uc_count + mc_count) * ETH_ALEN) +
 		      (2 * sizeof(mac_data->entries)), GFP_ATOMIC);
 	mac_data = buf;
-	if (!buf) {
-		netif_addr_unlock_bh(dev);
-		rtnl_unlock();
+	if (!buf)
 		return;
-	}
 
 	sg_init_table(sg, 2);
 
 	/* Store the unicast list and count in the front of the buffer */
 	mac_data->entries = cpu_to_virtio32(vi->vdev, uc_count);
 	i = 0;
-	netdev_for_each_uc_addr(ha, dev)
-		memcpy(&mac_data->macs[i++][0], ha->addr, ETH_ALEN);
+	netif_rx_mode_for_each_uc_addr(ha_addr, dev, ni)
+		memcpy(&mac_data->macs[i++][0], ha_addr, ETH_ALEN);
 
 	sg_set_buf(&sg[0], mac_data,
 		   sizeof(mac_data->entries) + (uc_count * ETH_ALEN));
@@ -3938,10 +3928,8 @@ static void virtnet_rx_mode_work(struct work_struct *work)
 
 	mac_data->entries = cpu_to_virtio32(vi->vdev, mc_count);
 	i = 0;
-	netdev_for_each_mc_addr(ha, dev)
-		memcpy(&mac_data->macs[i++][0], ha->addr, ETH_ALEN);
-
-	netif_addr_unlock_bh(dev);
+	netif_rx_mode_for_each_mc_addr(ha_addr, dev, ni)
+		memcpy(&mac_data->macs[i++][0], ha_addr, ETH_ALEN);
 
 	sg_set_buf(&sg[1], mac_data,
 		   sizeof(mac_data->entries) + (mc_count * ETH_ALEN));
@@ -3950,17 +3938,20 @@ static void virtnet_rx_mode_work(struct work_struct *work)
 				  VIRTIO_NET_CTRL_MAC_TABLE_SET, sg))
 		dev_warn(&dev->dev, "Failed to set MAC filter table.\n");
 
-	rtnl_unlock();
-
 	kfree(buf);
 }
 
 static void virtnet_set_rx_mode(struct net_device *dev)
 {
 	struct virtnet_info *vi = netdev_priv(dev);
+	char cfg_disabled = !vi->rx_mode_work_enabled;
+	bool allmulti = !!(dev->flags & IFF_ALLMULTI);
+	bool promisc = !!(dev->flags & IFF_PROMISC);
+
+	netif_rx_mode_set_flag(dev, NETIF_RX_MODE_SET_SKIP, cfg_disabled);
 
-	if (vi->rx_mode_work_enabled)
-		schedule_work(&vi->rx_mode_work);
+	netif_rx_mode_set_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_rx_mode_set_cfg(dev, NETIF_RX_MODE_CFG_PROMISC, promisc);
 }
 
 static int virtnet_vlan_rx_add_vid(struct net_device *dev,
@@ -5776,7 +5767,7 @@ static void virtnet_freeze_down(struct virtio_device *vdev)
 	/* Make sure no work handler is accessing the device */
 	flush_work(&vi->config_work);
 	disable_rx_mode_work(vi);
-	flush_work(&vi->rx_mode_work);
+	netif_flush_rx_mode_work(vi->dev);
 
 	if (netif_running(vi->dev)) {
 		rtnl_lock();
@@ -6279,6 +6270,7 @@ static const struct net_device_ops virtnet_netdev = {
 	.ndo_validate_addr   = eth_validate_addr,
 	.ndo_set_mac_address = virtnet_set_mac_address,
 	.ndo_set_rx_mode     = virtnet_set_rx_mode,
+	.ndo_write_rx_mode   = virtnet_write_rx_mode,
 	.ndo_get_stats64     = virtnet_stats,
 	.ndo_vlan_rx_add_vid = virtnet_vlan_rx_add_vid,
 	.ndo_vlan_rx_kill_vid = virtnet_vlan_rx_kill_vid,
@@ -6900,7 +6892,6 @@ static int virtnet_probe(struct virtio_device *vdev)
 	vdev->priv = vi;
 
 	INIT_WORK(&vi->config_work, virtnet_config_changed_work);
-	INIT_WORK(&vi->rx_mode_work, virtnet_rx_mode_work);
 	spin_lock_init(&vi->refill_lock);
 
 	if (virtio_has_feature(vdev, VIRTIO_NET_F_MRG_RXBUF)) {
@@ -7205,7 +7196,7 @@ static void virtnet_remove(struct virtio_device *vdev)
 	/* Make sure no work handler is accessing the device. */
 	flush_work(&vi->config_work);
 	disable_rx_mode_work(vi);
-	flush_work(&vi->rx_mode_work);
+	netif_flush_rx_mode_work(vi->dev);
 
 	virtnet_free_irq_moder(vi);
 
-- 
2.47.3

