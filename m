Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C0CB1641F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 18:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDF9A83DAC;
	Wed, 30 Jul 2025 16:08:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7uft7oZj40X1; Wed, 30 Jul 2025 16:08:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3CEC802E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753891707;
	bh=3Sle9rGA0PGZtu9qz2HpkES1bCQyVIEyBzz/yYzxQoQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JPyF2x0xwNd7C6HxegSGX3WO9Vp9gXDtE0oogh2KXs+jN2fc/rdq4vEOP/V+mz5F9
	 X1kUoK0B41tUJkq57UlZmu8kTzABoGV4KQ2jCNk9f2kTgxIJ2VGjejCAUuxE2w4Dzu
	 XiluWtCE95sQyp7w4kW/ZlHstrcT85GtcPyBQS9CiPzRewQoYRGBoUlZm4iOvDRKwe
	 ctuISDnuwB2Inxwriy4rE5xxQ+moRYp71F+oxJx8qBnx7s6/OMLMQLrFLZ7GlDoDeW
	 Wzo0CjaP+pT2KjJmJy5zbzHG6nYsqFkGXPRBmnC5B4k6M6KHsXX/29K5vd8QAPrEnm
	 7wu3afZYc4D4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3CEC802E1;
	Wed, 30 Jul 2025 16:08:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 308B5186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 17885613E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bUkk26g8W6S1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 16:08:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C2AF613EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C2AF613EF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C2AF613EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:25 +0000 (UTC)
X-CSE-ConnectionGUID: +qTSA0oqTdizOgYG5euNXg==
X-CSE-MsgGUID: LrWpadjfT0G8jM+Ikzy7zA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67278876"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="67278876"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 09:08:25 -0700
X-CSE-ConnectionGUID: 1W/gIVKyTz+lOxPL3lnjzg==
X-CSE-MsgGUID: HUzJeLrtSkygfDS+z8zicA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="163812960"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 30 Jul 2025 09:08:21 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 30 Jul 2025 18:07:08 +0200
Message-ID: <20250730160717.28976-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250730160717.28976-1-aleksander.lobakin@intel.com>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753891706; x=1785427706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H43ww09ZmCHzRwuAlYMfQwD23pYFtFUIwyAKN9Ge4Tc=;
 b=boIUKiAf6l5MKkFr6x2poTszHcwz9Pfcgh4R+gSVGEFktf8mDZyu4Cv4
 h2lPS2vgt0GFpLR8Q07Dd9t0ibw7mC0u849ZYn+33aHjDvRgSeoXvVTc3
 LJ3hpYOKYosv2ckraYEePVcXOgi4n3WEStAYhPeI+E5tTFce58HzWcJpV
 doOOnEUBSx7c/gS3xrRe0WWymHZ/cl6SEOdRG4WMscQYgZ12YOrY+jlnf
 Q+1JG7KRR27AZwRZdgzBBsvqJxt9Dj4i56JvauhPAAdRGaK6MGdEutlqi
 6/LOWRo4/ZzsIFbbRoBWDw767Rp31kH+TfyghdwNltzSMmu0o1S2nfKpn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=boIUKiAf
Subject: [Intel-wired-lan] [PATCH iwl-next v3 09/18] idpf: link NAPIs to
 queues
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

Add the missing linking of NAPIs to netdev queues when enabling
interrupt vectors in order to support NAPI configuration and
interfaces requiring get_rx_queue()->napi to be set (like XSk
busy polling).

As currently, idpf_vport_{start,stop}() is called from several flows
with inconsistent RTNL locking, we need to synchronize them to avoid
runtime assertions. Notably:

* idpf_{open,stop}() -- regular NDOs, RTNL is always taken;
* idpf_initiate_soft_reset() -- usually called under RTNL;
* idpf_init_task -- called from the init work, needs RTNL;
* idpf_vport_dealloc -- called without RTNL taken, needs it.

Expand common idpf_vport_{start,stop}() to take an additional bool
telling whether we need to manually take the RTNL lock.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # helper
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 38 +++++++++++++++------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 17 +++++++++
 2 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 2c2a3e85d693..da588d78846e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -883,14 +883,18 @@ static void idpf_remove_features(struct idpf_vport *vport)
 /**
  * idpf_vport_stop - Disable a vport
  * @vport: vport to disable
+ * @rtnl: whether to take RTNL lock
  */
-static void idpf_vport_stop(struct idpf_vport *vport)
+static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return;
 
+	if (rtnl)
+		rtnl_lock();
+
 	netif_carrier_off(vport->netdev);
 	netif_tx_disable(vport->netdev);
 
@@ -912,6 +916,9 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	idpf_vport_queues_rel(vport);
 	idpf_vport_intr_rel(vport);
 	np->state = __IDPF_VPORT_DOWN;
+
+	if (rtnl)
+		rtnl_unlock();
 }
 
 /**
@@ -935,7 +942,7 @@ static int idpf_stop(struct net_device *netdev)
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
-	idpf_vport_stop(vport);
+	idpf_vport_stop(vport, false);
 
 	idpf_vport_ctrl_unlock(netdev);
 
@@ -1028,7 +1035,7 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	idpf_idc_deinit_vport_aux_device(vport->vdev_info);
 
 	idpf_deinit_mac_addr(vport);
-	idpf_vport_stop(vport);
+	idpf_vport_stop(vport, true);
 
 	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
 		idpf_decfg_netdev(vport);
@@ -1369,8 +1376,9 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
 /**
  * idpf_vport_open - Bring up a vport
  * @vport: vport to bring up
+ * @rtnl: whether to take RTNL lock
  */
-static int idpf_vport_open(struct idpf_vport *vport)
+static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
@@ -1380,6 +1388,9 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	if (np->state != __IDPF_VPORT_DOWN)
 		return -EBUSY;
 
+	if (rtnl)
+		rtnl_lock();
+
 	/* we do not allow interface up just yet */
 	netif_carrier_off(vport->netdev);
 
@@ -1387,7 +1398,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to allocate interrupts for vport %u: %d\n",
 			vport->vport_id, err);
-		return err;
+		goto err_rtnl_unlock;
 	}
 
 	err = idpf_vport_queues_alloc(vport);
@@ -1474,6 +1485,9 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto deinit_rss;
 	}
 
+	if (rtnl)
+		rtnl_unlock();
+
 	return 0;
 
 deinit_rss:
@@ -1491,6 +1505,10 @@ static int idpf_vport_open(struct idpf_vport *vport)
 intr_rel:
 	idpf_vport_intr_rel(vport);
 
+err_rtnl_unlock:
+	if (rtnl)
+		rtnl_unlock();
+
 	return err;
 }
 
@@ -1571,7 +1589,7 @@ void idpf_init_task(struct work_struct *work)
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
 	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags))
-		idpf_vport_open(vport);
+		idpf_vport_open(vport, true);
 
 	/* Spawn and return 'idpf_init_task' work queue until all the
 	 * default vports are created
@@ -1961,7 +1979,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_send_delete_queues_msg(vport);
 	} else {
 		set_bit(IDPF_VPORT_DEL_QUEUES, vport->flags);
-		idpf_vport_stop(vport);
+		idpf_vport_stop(vport, false);
 	}
 
 	idpf_deinit_rss(vport);
@@ -1991,7 +2009,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		goto err_open;
 
 	if (current_state == __IDPF_VPORT_UP)
-		err = idpf_vport_open(vport);
+		err = idpf_vport_open(vport, false);
 
 	goto free_vport;
 
@@ -2001,7 +2019,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 
 err_open:
 	if (current_state == __IDPF_VPORT_UP)
-		idpf_vport_open(vport);
+		idpf_vport_open(vport, false);
 
 free_vport:
 	kfree(new_vport);
@@ -2239,7 +2257,7 @@ static int idpf_open(struct net_device *netdev)
 	if (err)
 		goto unlock;
 
-	err = idpf_vport_open(vport);
+	err = idpf_vport_open(vport, false);
 
 unlock:
 	idpf_vport_ctrl_unlock(netdev);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index e0b0a05c998f..34dc12cf5b21 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3508,6 +3508,20 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 	vport->q_vectors = NULL;
 }
 
+static void idpf_q_vector_set_napi(struct idpf_q_vector *q_vector, bool link)
+{
+	struct napi_struct *napi = link ? &q_vector->napi : NULL;
+	struct net_device *dev = q_vector->vport->netdev;
+
+	for (u32 i = 0; i < q_vector->num_rxq; i++)
+		netif_queue_set_napi(dev, q_vector->rx[i]->idx,
+				     NETDEV_QUEUE_TYPE_RX, napi);
+
+	for (u32 i = 0; i < q_vector->num_txq; i++)
+		netif_queue_set_napi(dev, q_vector->tx[i]->idx,
+				     NETDEV_QUEUE_TYPE_TX, napi);
+}
+
 /**
  * idpf_vport_intr_rel_irq - Free the IRQ association with the OS
  * @vport: main vport structure
@@ -3528,6 +3542,7 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
+		idpf_q_vector_set_napi(q_vector, false);
 		kfree(free_irq(irq_num, q_vector));
 	}
 }
@@ -3715,6 +3730,8 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 				   "Request_irq failed, error: %d\n", err);
 			goto free_q_irqs;
 		}
+
+		idpf_q_vector_set_napi(q_vector, true);
 	}
 
 	return 0;
-- 
2.50.1

