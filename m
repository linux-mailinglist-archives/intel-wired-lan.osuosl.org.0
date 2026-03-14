Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GdHMPyotWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1516D28E732
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A5E6813C9;
	Sat, 14 Mar 2026 18:29:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EWjTKDA5EUqK; Sat, 14 Mar 2026 18:29:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CA16813AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512953;
	bh=vPjyZJZYcHWPj/blRqGZlp+ucpD5kzaKMmjNcDwFvP0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wfKaPET9V2Ug6hph5VO3nPiIiMoSlRY4L0TC8UMSp4HTbjnxEDogZ3xvwHSwe0Gki
	 KiPziPJM6nmD/thrhYundwNaeQxMb/eUnWf7DNosPmOUX+q8Dr6MGSfvRK0NDw8Br6
	 CQHCaJLmA2W1tjTE9txPQFD/+SMTFV1vFlpnzdIKEFPTZxwXmZgzewv0NiAbUnFsU6
	 zHogvooC1K/9RPgRIRMN3WlOFaBowA6QuyhnmK9oftZokYWx9vsyggFjYyYX7LoRZV
	 27X6hzMOsAwVNQJnDdWtxNY73DF/vjCeJvnh85HccIq62MISRi1aeR/BSWL05Gpe/r
	 LgBx/iDHzgl9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CA16813AE;
	Sat, 14 Mar 2026 18:29:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 87B721B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DADF413CF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bj6iGgOLJxeA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:29:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52c; helo=mail-pg1-x52c.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A8FDB40F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8FDB40F74
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8FDB40F74
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:10 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id
 41be03b00d2f7-c7382731edfso2232652a12.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512950; x=1774117750;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vPjyZJZYcHWPj/blRqGZlp+ucpD5kzaKMmjNcDwFvP0=;
 b=ivu/dNsy/zOwLLadzCO1zv9e5Lwn18INoLA6niPg6+3TQS3LD/INjTzTbvrPw8CzN9
 x6l0hu8T7rd+K5y2rOsq0lPvZ2UvpdOSUzzXghE5L/hgYs5VNt1+/bJM0EJUn1gIVf5P
 80aMvv56A+buy1gNSpuyah3u2SuCQpq56K/xKyilXEX6qWm8YL3munneTcWBlNqCH6Yn
 wHPzeHGVEHdKsCOELiV0lqwBU4p/M9eR/ZE7gDmFqtU9ixEPAvlpRZhdvqw43ZEQio8o
 zvM9Z7LKbnlqPA+R/kVaIR0PgEFUXZ4ZeGWbLigB4NnLanw4NxqUtqznd93mjTX0oeEJ
 t7vw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfwJP8SS2IvRfYDVqyQyShQncAqVgW+lhQ+lpxjn6xW5xBzGzZ0xuQZ/x4wV44o8+czUf8VVbIjCPt+kpI7Fw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyy5BsyonoVuuMGUrEHdMaIy1Tz9o+51pvCxU6TG5Q7vwyvsa04
 VYiOIpgBgflXjOw3/tVBrNQETuFBn4IDFMHorVlxZBw+wdjMf4gG9FRPAO/cY4ZmM6E=
X-Gm-Gg: ATEYQzwnHhJZViFGTYWG/BD8UVqHGTYLPOQUv+fa0LXbcfTijy1Eaz85/3DoW6eneNF
 czVKq8Br5VorultFTeAkt9R4ZRA1lonIBoiAatD0j9rIGx0DcPlJFjl/zQHXOpPiPFR70i1TsLu
 yICC4+CH7cX9hY6N17Ys33la0UuHss/329D/TU3Wdmw3DPRXv3pJDAEGwdi/TkvHwZPiw8PY291
 m3/lvx+cd2tsvVarwwou/n90iEBp4HDw46yI7VEA1SOvy7hJdrLxtIJA2rqE2+j6qAfuQRDGh5q
 UAqJiUmFaGRgMnTXF45vlsjDL3aZJVWkAaCBrIDniltxP2ZWO+B2USOPqO4+q3fnNjeohVSoITu
 v0/3HrRBxVPwXJFElGxMgVKlozCcaUNkJPZaXvZ2Vcfczdnap8oj4dRNc0SlhhtaB59ngoYGDnU
 3BWS9fhJHeX8DUx66kriaOmjM9yWOADAEN+tLsi8ikuVT4Bjnl67Ck89gVMmPlG3GYlHXq/7ckP
 hxQfw==
X-Received: by 2002:a17:903:1210:b0:2ae:b9cd:d2df with SMTP id
 d9443c01a7336-2aecab1f32bmr78786355ad.34.1773512949621; 
 Sat, 14 Mar 2026 11:29:09 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.28.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:29:09 -0700 (PDT)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: stfomichev@gmail.com, horms@kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, eperezma@redhat.com, xuanzhuo@linux.alibaba.com,
 jasowang@redhat.com, mst@redhat.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 virtualization@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, I Viswanath <viswanathiyyappan@gmail.com>
Date: Sat, 14 Mar 2026 23:58:05 +0530
Message-ID: <20260314182809.362808-4-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512950; x=1774117750; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vPjyZJZYcHWPj/blRqGZlp+ucpD5kzaKMmjNcDwFvP0=;
 b=BKzM1h/SHEwdK0ZhMzPgsrCANvhVfnuBGuhMRwMxg0jfzm80smQbTwHL+VJqJVuImh
 3FUNXCMrMczE5xPvxJKxuVnEp+inaE8ZrB4Qu1/VnlfTOAWjPNwOlD1PbgOLsjXbStf7
 2XWMsmVLtGeiui9IhCgoIPduW5DbBZcPT7stQDKXjnXvWsD+ASVnPVDlljzwZZhb1dDj
 YfHmJJiQpI2wLjrnClp5g4WShlJZ6ZrMQl3SGrxkzFw+qNYvOdGADy5SE/D4Z0yFDVwC
 e84+FluVnQ4q52LMbezr2sF1/lr66sfT8xWIK2zCqLihaRo6Old6zoXsY1h5BDZrNyMg
 GEHA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=BKzM1h/S
Subject: [Intel-wired-lan] [PATCH net-next v9 3/7] virtio-net: Implement
 ndo_set_rx_mode_async callback
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:viswanathiyyappan@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,lists.linux.dev,lists.osuosl.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1516D28E732
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Implement the ndo_set_rx_mode_async callback and update
the driver to use the snapshot/commit model for RX mode update.

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 
  There are no calls to netif_set_rx_mode in virtio-net
 
 drivers/net/virtio_net.c | 85 ++++++++++++----------------------------
 1 file changed, 25 insertions(+), 60 deletions(-)

diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index 811b90da15a9..70255d09401c 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -448,12 +448,6 @@ struct virtnet_info {
 	/* Work struct for config space updates */
 	struct work_struct config_work;
 
-	/* Work struct for setting rx mode */
-	struct work_struct rx_mode_work;
-
-	/* OK to queue work setting RX mode? */
-	bool rx_mode_work_enabled;
-
 	/* Does the affinity hint is set for virtqueues? */
 	bool affinity_hint_set;
 
@@ -717,20 +711,6 @@ static void virtnet_rq_free_buf(struct virtnet_info *vi,
 		put_page(virt_to_head_page(buf));
 }
 
-static void enable_rx_mode_work(struct virtnet_info *vi)
-{
-	rtnl_lock();
-	vi->rx_mode_work_enabled = true;
-	rtnl_unlock();
-}
-
-static void disable_rx_mode_work(struct virtnet_info *vi)
-{
-	rtnl_lock();
-	vi->rx_mode_work_enabled = false;
-	rtnl_unlock();
-}
-
 static void virtqueue_napi_schedule(struct napi_struct *napi,
 				    struct virtqueue *vq)
 {
@@ -3802,33 +3782,30 @@ static int virtnet_close(struct net_device *dev)
 	return 0;
 }
 
-static void virtnet_rx_mode_work(struct work_struct *work)
+static void virtnet_set_rx_mode_async(struct net_device *dev)
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
 
-	/* We can't dynamically set ndo_set_rx_mode, so return gracefully */
+	/* We can't dynamically set rx_mode, so return gracefully */
 	if (!virtio_has_feature(vi->vdev, VIRTIO_NET_F_CTRL_RX))
 		return;
 
-	promisc_allmulti = kzalloc_obj(*promisc_allmulti);
+	promisc_allmulti = kzalloc_obj(*promisc_allmulti, GFP_ATOMIC);
 	if (!promisc_allmulti) {
 		dev_warn(&dev->dev, "Failed to set RX mode, no memory.\n");
 		return;
 	}
 
-	rtnl_lock();
-
-	*promisc_allmulti = !!(dev->flags & IFF_PROMISC);
+	*promisc_allmulti = netif_get_rx_mode_cfg(dev,
+						  NETIF_RX_MODE_CFG_PROMISC);
 	sg_init_one(sg, promisc_allmulti, sizeof(*promisc_allmulti));
 
 	if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_RX,
@@ -3836,7 +3813,8 @@ static void virtnet_rx_mode_work(struct work_struct *work)
 		dev_warn(&dev->dev, "Failed to %sable promisc mode.\n",
 			 *promisc_allmulti ? "en" : "dis");
 
-	*promisc_allmulti = !!(dev->flags & IFF_ALLMULTI);
+	*promisc_allmulti = netif_get_rx_mode_cfg(dev,
+						  NETIF_RX_MODE_CFG_ALLMULTI);
 	sg_init_one(sg, promisc_allmulti, sizeof(*promisc_allmulti));
 
 	if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_RX,
@@ -3844,27 +3822,22 @@ static void virtnet_rx_mode_work(struct work_struct *work)
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
@@ -3874,10 +3847,8 @@ static void virtnet_rx_mode_work(struct work_struct *work)
 
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
@@ -3886,17 +3857,16 @@ static void virtnet_rx_mode_work(struct work_struct *work)
 				  VIRTIO_NET_CTRL_MAC_TABLE_SET, sg))
 		dev_warn(&dev->dev, "Failed to set MAC filter table.\n");
 
-	rtnl_unlock();
-
 	kfree(buf);
 }
 
 static void virtnet_set_rx_mode(struct net_device *dev)
 {
-	struct virtnet_info *vi = netdev_priv(dev);
+	bool allmulti = !!(dev->flags & IFF_ALLMULTI);
+	bool promisc = !!(dev->flags & IFF_PROMISC);
 
-	if (vi->rx_mode_work_enabled)
-		schedule_work(&vi->rx_mode_work);
+	netif_set_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_set_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_PROMISC, promisc);
 }
 
 static int virtnet_vlan_rx_add_vid(struct net_device *dev,
@@ -5711,8 +5681,6 @@ static void virtnet_freeze_down(struct virtio_device *vdev)
 
 	/* Make sure no work handler is accessing the device */
 	flush_work(&vi->config_work);
-	disable_rx_mode_work(vi);
-	flush_work(&vi->rx_mode_work);
 
 	if (netif_running(vi->dev)) {
 		rtnl_lock();
@@ -5738,8 +5706,6 @@ static int virtnet_restore_up(struct virtio_device *vdev)
 
 	virtio_device_ready(vdev);
 
-	enable_rx_mode_work(vi);
-
 	if (netif_running(vi->dev)) {
 		rtnl_lock();
 		err = virtnet_open(vi->dev);
@@ -6214,6 +6180,7 @@ static const struct net_device_ops virtnet_netdev = {
 	.ndo_validate_addr   = eth_validate_addr,
 	.ndo_set_mac_address = virtnet_set_mac_address,
 	.ndo_set_rx_mode     = virtnet_set_rx_mode,
+	.ndo_set_rx_mode_async  = virtnet_set_rx_mode_async,
 	.ndo_get_stats64     = virtnet_stats,
 	.ndo_vlan_rx_add_vid = virtnet_vlan_rx_add_vid,
 	.ndo_vlan_rx_kill_vid = virtnet_vlan_rx_kill_vid,
@@ -6834,7 +6801,6 @@ static int virtnet_probe(struct virtio_device *vdev)
 	vdev->priv = vi;
 
 	INIT_WORK(&vi->config_work, virtnet_config_changed_work);
-	INIT_WORK(&vi->rx_mode_work, virtnet_rx_mode_work);
 
 	if (virtio_has_feature(vdev, VIRTIO_NET_F_MRG_RXBUF)) {
 		vi->mergeable_rx_bufs = true;
@@ -6986,8 +6952,6 @@ static int virtnet_probe(struct virtio_device *vdev)
 	if (vi->has_rss || vi->has_rss_hash_report)
 		virtnet_init_default_rss(vi);
 
-	enable_rx_mode_work(vi);
-
 	/* serialize netdev register + virtio_device_ready() with ndo_open() */
 	rtnl_lock();
 
@@ -7136,8 +7100,6 @@ static void virtnet_remove(struct virtio_device *vdev)
 
 	/* Make sure no work handler is accessing the device. */
 	flush_work(&vi->config_work);
-	disable_rx_mode_work(vi);
-	flush_work(&vi->rx_mode_work);
 
 	virtnet_free_irq_moder(vi);
 
@@ -7158,6 +7120,7 @@ static __maybe_unused int virtnet_freeze(struct virtio_device *vdev)
 	virtnet_freeze_down(vdev);
 	remove_vq_common(vi);
 
+	netif_disable_async_ops(vi->dev);
 	return 0;
 }
 
@@ -7166,6 +7129,7 @@ static __maybe_unused int virtnet_restore(struct virtio_device *vdev)
 	struct virtnet_info *vi = vdev->priv;
 	int err;
 
+	netif_enable_async_ops(vi->dev);
 	err = virtnet_restore_up(vdev);
 	if (err)
 		return err;
@@ -7175,6 +7139,7 @@ static __maybe_unused int virtnet_restore(struct virtio_device *vdev)
 	if (err) {
 		virtnet_freeze_down(vdev);
 		remove_vq_common(vi);
+		netif_disable_async_ops(vi->dev);
 		return err;
 	}
 
-- 
2.47.3

