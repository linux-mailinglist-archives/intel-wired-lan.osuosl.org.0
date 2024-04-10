Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F2389E90E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 06:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 554E940823;
	Wed, 10 Apr 2024 04:39:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2_FFjncj4gyf; Wed, 10 Apr 2024 04:39:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C51CC40724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712723990;
	bh=5x0y6JOjRs9D46M/YJwxsoJQEODb8B73PIsmrjKpgsY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bZDGNPFPOVEhOp0LjQ75RvotzNXXhHMlazLWxuxFbGr5Hl7EhURRGH7lFzOuyzhby
	 +4VK8XsjNUKxLCQSf65oY6XdsFsWTISHKLfQx2S9W7JbahY/08DCzHNHQRVtKPRkqx
	 KJlhbUpbiW4pLQQp8Hoi+jDX3F+k8I+G8Ni3EF7OxN0HSQ9eTNmLtBlpfaE2fQqbe+
	 fJhv99a3s03/nwBAX31d1sqZjofMmHuIOVY0sJUvfmm5FjbyYLsjCH07CRagNSjJMx
	 px4pXvra3EwKIXVdTPWy3mqWyjlbZnvqcfp92Aqcg/2UpxEeDeYa9T/WUb9Q22FUx7
	 oPFLdd8oI7aMg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C51CC40724;
	Wed, 10 Apr 2024 04:39:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4BA91BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DA0D4066B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2kOcBr-SgEe5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 04:39:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1034; helo=mail-pj1-x1034.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 27B0A40661
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27B0A40661
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27B0A40661
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:44 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-2a502547460so2018598a91.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Apr 2024 21:39:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712723984; x=1713328784;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5x0y6JOjRs9D46M/YJwxsoJQEODb8B73PIsmrjKpgsY=;
 b=jNHWyn8y40iC/yn2LTs0upfM2Si7AKhabcJDbDz8Zn3GADI9vJE9d0/CUZW/fs7iuL
 17yTXv+ZyDJf1rIeSpJfvFceV1WzA3LzXA7jwneLnzkqY8kfONpR4B/t12B2A8eFICaY
 n95R1RgMUqEQMN37s4OB8SuyV0fzH+jy+Ro8uDZLQ37daQMZ2NuvIGN0aD2DOLwGU1ef
 Q/itDm/Tdqj4LQFwhJgCF5wA7xJoEtSCFvlps+k+nilsiXjDf2bqSNSuvPplCEN6W7w4
 c465JB7vepF+FXsj1WrLtUR7P76CgUZ0i9bpmshl2kRqerPwqsjyrA+MH2yzgBMc7roS
 t0AQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGlW8Ic0FJmqk1MilGD+47Woovu4sKEGG6UqOXP8XBsaY39M36ek2GAkJBKvLZrmWz0+8O0IYoY3ll9yLhIueJ11l8i1sKq0Wsw44g59ZgJg==
X-Gm-Message-State: AOJu0YwMMIB3hWO1LIDcaf3uTuzPPt1bDCwM2O7DhpXWno5ml9KN7bg8
 cwVXhq57v7vHDb99xoLe8OZaTy0gn4M513mWFuG3/DnQvXWSvybx6l903V7D7CI=
X-Google-Smtp-Source: AGHT+IEk7YATwthbk+mb9fqMLJPGxEBJa32KoCGCBl7Dyq/xvT3FTYwVMeMq3y3WDq6N/pse9NqSxQ==
X-Received: by 2002:a17:90b:2287:b0:2a5:d7ed:2d18 with SMTP id
 kx7-20020a17090b228700b002a5d7ed2d18mr329439pjb.20.1712723984438; 
 Tue, 09 Apr 2024 21:39:44 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 gn4-20020a17090ac78400b002a5d71d48e8sm260773pjb.39.2024.04.09.21.39.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Apr 2024 21:39:44 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 04:39:34 +0000
Message-Id: <20240410043936.206169-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240410043936.206169-1-jdamato@fastly.com>
References: <20240410043936.206169-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1712723984; x=1713328784; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5x0y6JOjRs9D46M/YJwxsoJQEODb8B73PIsmrjKpgsY=;
 b=eDhAFhnyJIqoaCb+QgOWL49CMELwElzNeRtbcn3eozU857UW0HelsDmahnf+1iX02M
 FPIoDjh6zDlfq7nPGlcJOpvZ/0MPR4xQ1r8tJNXyu4nmagI3/vj7YEX2dqw3i06Nca26
 MSsBxQ2VbN4/Yjj+23sy/me7sidBrtjI+qwgM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=eDhAFhny
Subject: [Intel-wired-lan] [intel-next 1/2] net/i40e: link NAPI instances to
 queues and IRQs
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
Cc: amritha.nambiar@intel.com, sridhar.samudrala@intel.com,
 Joe Damato <jdamato@fastly.com>, Eric Dumazet <edumazet@google.com>,
 nalramli@fastly.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make i40e compatible with the newly added netlink queue GET APIs.

$ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
  --do queue-get --json '{"ifindex": 3, "id": 1, "type": "rx"}'

{'id': 1, 'ifindex': 3, 'napi-id': 162, 'type': 'rx'}

$ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
  --do napi-get --json '{"id": 162}'

{'id': 162, 'ifindex': 3, 'irq': 136}

The above output suggests that irq 136 was allocated for queue 1, which has
a NAPI ID of 162.

To double check this is correct, the IRQ to queue mapping can be verified
by checking /proc/interrupts:

$ cat /proc/interrupts  | grep 136\: | \
  awk '{print "irq: " $1 " name " $76}'

irq: 136: name i40e-vlan300-TxRx-1

Suggests that queue 1 has IRQ 136, as expected.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |  2 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 58 +++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |  4 ++
 3 files changed, 64 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 2fbabcdb5bb5..5900ed5c7170 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1267,6 +1267,8 @@ int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd);
 int i40e_open(struct net_device *netdev);
 int i40e_close(struct net_device *netdev);
 int i40e_vsi_open(struct i40e_vsi *vsi);
+void i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
+			 enum netdev_queue_type type, struct napi_struct *napi);
 void i40e_vlan_stripping_disable(struct i40e_vsi *vsi);
 int i40e_add_vlan_all_mac(struct i40e_vsi *vsi, s16 vid);
 int i40e_vsi_add_vlan(struct i40e_vsi *vsi, u16 vid);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0bdcdea0be3e..6384a0c73a05 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3448,6 +3448,58 @@ static struct xsk_buff_pool *i40e_xsk_pool(struct i40e_ring *ring)
 	return xsk_get_pool_from_qid(ring->vsi->netdev, qid);
 }
 
+/**
+ * __i40e_queue_set_napi - Set the napi instance for the queue
+ * @dev: device to which NAPI and queue belong
+ * @queue_index: Index of queue
+ * @type: queue type as RX or TX
+ * @napi: NAPI context
+ * @locked: is the rtnl_lock already held
+ *
+ * Set the napi instance for the queue. Caller indicates the lock status.
+ */
+static void
+__i40e_queue_set_napi(struct net_device *dev, unsigned int queue_index,
+		      enum netdev_queue_type type, struct napi_struct *napi,
+		      bool locked)
+{
+	if (!locked)
+		rtnl_lock();
+	netif_queue_set_napi(dev, queue_index, type, napi);
+	if (!locked)
+		rtnl_unlock();
+}
+
+/**
+ * i40e_queue_set_napi - Set the napi instance for the queue
+ * @vsi: VSI being configured
+ * @queue_index: Index of queue
+ * @type: queue type as RX or TX
+ * @napi: NAPI context
+ *
+ * Set the napi instance for the queue. The rtnl lock state is derived from the
+ * execution path.
+ */
+void
+i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
+		    enum netdev_queue_type type, struct napi_struct *napi)
+{
+	struct i40e_pf *pf = vsi->back;
+
+	if (!vsi->netdev)
+		return;
+
+	if (current_work() == &pf->service_task ||
+	    test_bit(__I40E_PF_RESET_REQUESTED, pf->state) ||
+	    test_bit(__I40E_DOWN, pf->state) ||
+	    test_bit(__I40E_SUSPENDED, pf->state))
+		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
+				      false);
+	else
+		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
+				      true);
+}
+
 /**
  * i40e_configure_tx_ring - Configure a transmit ring context and rest
  * @ring: The Tx ring to configure
@@ -3558,6 +3610,8 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 	/* cache tail off for easier writes later */
 	ring->tail = hw->hw_addr + I40E_QTX_TAIL(pf_q);
 
+	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_TX,
+			    &ring->q_vector->napi);
 	return 0;
 }
 
@@ -3716,6 +3770,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 			 ring->queue_index, pf_q);
 	}
 
+	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_RX,
+			    &ring->q_vector->napi);
 	return 0;
 }
 
@@ -4178,6 +4234,8 @@ static int i40e_vsi_request_irq_msix(struct i40e_vsi *vsi, char *basename)
 		q_vector->affinity_notify.notify = i40e_irq_affinity_notify;
 		q_vector->affinity_notify.release = i40e_irq_affinity_release;
 		irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
+		netif_napi_set_irq(&q_vector->napi, q_vector->irq_num);
+
 		/* Spread affinity hints out across online CPUs.
 		 *
 		 * get_cpu_mask returns a static constant mask with
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 64d198ed166b..d380885ff26d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -821,6 +821,8 @@ void i40e_clean_tx_ring(struct i40e_ring *tx_ring)
 void i40e_free_tx_resources(struct i40e_ring *tx_ring)
 {
 	i40e_clean_tx_ring(tx_ring);
+	i40e_queue_set_napi(tx_ring->vsi, tx_ring->queue_index,
+			    NETDEV_QUEUE_TYPE_TX, NULL);
 	kfree(tx_ring->tx_bi);
 	tx_ring->tx_bi = NULL;
 
@@ -1526,6 +1528,8 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
 void i40e_free_rx_resources(struct i40e_ring *rx_ring)
 {
 	i40e_clean_rx_ring(rx_ring);
+	i40e_queue_set_napi(rx_ring->vsi, rx_ring->queue_index,
+			    NETDEV_QUEUE_TYPE_RX, NULL);
 	if (rx_ring->vsi->type == I40E_VSI_MAIN)
 		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	rx_ring->xdp_prog = NULL;
-- 
2.25.1

