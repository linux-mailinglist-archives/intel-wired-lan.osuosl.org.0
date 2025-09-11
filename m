Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 541BAB5390C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 18:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA0A06E6C5;
	Thu, 11 Sep 2025 16:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fp5rF52agUlE; Thu, 11 Sep 2025 16:23:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B06561C39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757607826;
	bh=PdC4Jha8fcQsmgp2D0d97E17p9ktNBX6NfXRp1Nbfsc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jf5Lsfs3bDNuwIw7hNeSSO8q84y68Vz1m9I8SlTwvTv5NItlPrli/YBfRSuMvplwO
	 1FIdl0xl0ilCcWc/OWMlXfW/UFQgASnP6k17s1qx9pxQEJtLdtfeMBIK6cAWsM1xeW
	 zf+oRNqFok4kEy8OMzr7HLjLV1XnB5S+TE6+BHEK1fAiJs9Icmpi8biCC8i8zz69Jm
	 4Ony9UN0XLCzqvVKade8atkPZ/cL91miZ+IIDyyh48TbKUjOliP+ja9pOgrgqI7tfp
	 9fJsAlVjIxflxDoiXB9SikiD7E5XavRNxdWdT4dWC8/+X+WlYS3apZhGcGb+WX919F
	 mMM9T98AlcsHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B06561C39;
	Thu, 11 Sep 2025 16:23:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 405BFE20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32B9041254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lxyjCzdC6yvc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 16:23:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4DA78404C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DA78404C4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DA78404C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:43 +0000 (UTC)
X-CSE-ConnectionGUID: QkH5AXAVRnOmb1oIKK0GHg==
X-CSE-MsgGUID: Xvk+wAeCRqeTK/RNcxWVww==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="70635223"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="70635223"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 09:23:43 -0700
X-CSE-ConnectionGUID: BYgh7milQWyE4Mf5GqIn9A==
X-CSE-MsgGUID: iWVXcq3mT628kEEr6mXlZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="173284722"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa009.jf.intel.com with ESMTP; 11 Sep 2025 09:23:38 -0700
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
Date: Thu, 11 Sep 2025 18:22:33 +0200
Message-ID: <20250911162233.1238034-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
References: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757607823; x=1789143823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZbzwFksgb7H1D0gKuZCJsoT2wb4x1APi3k7nuAZfsng=;
 b=U1f1WM85yQKQwYY+y8RMtkrG8IsakMUilozjaQJYOiutRpaYGKx6pKSL
 IPy8iQTwQlXu3oMyRL0HDPAgYm2bvXAGen0bozuW6gUMPOPPXI6EbbYAI
 LM/wGtB0roGJ0eCd6txA+mZRPtHjDAGWMDJ2DaoUdZ8LeGbKaCZaYd2vY
 rYk2v7xki+jEC48TxyWjTfTo18+5xs5judtNmGV4h0v6e050deSqhsSTG
 inEjrWx9j3+O152MO/WWJoCYhczzi8kzjx50HvLFGUsnSBYbVkm3yl30h
 sO7kzPZ2KmT1l+NZlloPYV6+i5XKlHlaEVo+gWMRqFox8YAJY3yld7OBO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U1f1WM85
Subject: [Intel-wired-lan] [PATCH iwl-next 5/5] idpf: enable XSk features
 and ndo_xsk_wakeup
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

Now that AF_XDP functionality is fully implemented, advertise XSk XDP
feature and add .ndo_xsk_wakeup() callback to be able to use it with
this driver.

Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h      |  7 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 10 ++++---
 drivers/net/ethernet/intel/idpf/xsk.h       |  4 +++
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |  3 +++
 drivers/net/ethernet/intel/idpf/xdp.c       |  4 ++-
 drivers/net/ethernet/intel/idpf/xsk.c       | 29 +++++++++++++++++++++
 7 files changed, 55 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 6e79fa8556e9..c5ede00c5b2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -978,6 +978,13 @@ static inline void idpf_vport_ctrl_unlock(struct net_device *netdev)
 	mutex_unlock(&np->adapter->vport_ctrl_lock);
 }
 
+static inline bool idpf_vport_ctrl_is_locked(struct net_device *netdev)
+{
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+
+	return mutex_is_locked(&np->adapter->vport_ctrl_lock);
+}
+
 void idpf_statistics_task(struct work_struct *work);
 void idpf_init_task(struct work_struct *work);
 void idpf_service_task(struct work_struct *work);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index a42aa4669c3c..75b977094741 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -374,9 +374,10 @@ struct idpf_intr_reg {
  * @complq: array of completion queues
  * @xsksq: array of XSk send queues
  * @intr_reg: See struct idpf_intr_reg
- * @napi: napi handler
+ * @csd: XSk wakeup CSD
  * @total_events: Number of interrupts processed
  * @wb_on_itr: whether WB on ITR is enabled
+ * @napi: napi handler
  * @tx_dim: Data for TX net_dim algorithm
  * @tx_itr_value: TX interrupt throttling rate
  * @tx_intr_mode: Dynamic ITR or not
@@ -406,10 +407,13 @@ struct idpf_q_vector {
 	__cacheline_group_end_aligned(read_mostly);
 
 	__cacheline_group_begin_aligned(read_write);
-	struct napi_struct napi;
+	call_single_data_t csd;
+
 	u16 total_events;
 	bool wb_on_itr;
 
+	struct napi_struct napi;
+
 	struct dim tx_dim;
 	u16 tx_itr_value;
 	bool tx_intr_mode;
@@ -427,7 +431,7 @@ struct idpf_q_vector {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_q_vector, 136,
-			    24 + sizeof(struct napi_struct) +
+			    56 + sizeof(struct napi_struct) +
 			    2 * sizeof(struct dim),
 			    8);
 
diff --git a/drivers/net/ethernet/intel/idpf/xsk.h b/drivers/net/ethernet/intel/idpf/xsk.h
index d5338cbef8bd..b622d08c03e8 100644
--- a/drivers/net/ethernet/intel/idpf/xsk.h
+++ b/drivers/net/ethernet/intel/idpf/xsk.h
@@ -8,14 +8,17 @@
 
 enum virtchnl2_queue_type;
 struct idpf_buf_queue;
+struct idpf_q_vector;
 struct idpf_rx_queue;
 struct idpf_tx_queue;
 struct idpf_vport;
+struct net_device;
 struct netdev_bpf;
 
 void idpf_xsk_setup_queue(const struct idpf_vport *vport, void *q,
 			  enum virtchnl2_queue_type type);
 void idpf_xsk_clear_queue(void *q, enum virtchnl2_queue_type type);
+void idpf_xsk_init_wakeup(struct idpf_q_vector *qv);
 
 int idpf_xskfq_init(struct idpf_buf_queue *bufq);
 void idpf_xskfq_rel(struct idpf_buf_queue *bufq);
@@ -25,5 +28,6 @@ int idpf_xskrq_poll(struct idpf_rx_queue *rxq, u32 budget);
 bool idpf_xsk_xmit(struct idpf_tx_queue *xsksq);
 
 int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *xdp);
+int idpf_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
 
 #endif /* !_IDPF_XSK_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 9b8f7a6d65d6..8a941f0fb048 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -5,6 +5,7 @@
 #include "idpf_virtchnl.h"
 #include "idpf_ptp.h"
 #include "xdp.h"
+#include "xsk.h"
 
 static const struct net_device_ops idpf_netdev_ops;
 
@@ -2618,4 +2619,5 @@ static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_hwtstamp_set = idpf_hwtstamp_set,
 	.ndo_bpf = idpf_xdp,
 	.ndo_xdp_xmit = idpf_xdp_xmit,
+	.ndo_xsk_wakeup = idpf_xsk_wakeup,
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 67963c0f4541..828f7c444d30 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1210,6 +1210,8 @@ static int idpf_qp_enable(const struct idpf_queue_set *qs, u32 qid)
 		if (!idpf_queue_has(XSK, q->txq))
 			continue;
 
+		idpf_xsk_init_wakeup(q_vector);
+
 		q->txq->q_vector = q_vector;
 		q_vector->xsksq[q_vector->num_xsksq++] = q->txq;
 	}
@@ -4418,6 +4420,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 			continue;
 
 		qv = idpf_find_rxq_vec(vport, i);
+		idpf_xsk_init_wakeup(qv);
 
 		xdpsq->q_vector = qv;
 		qv->xsksq[qv->num_xsksq++] = xdpsq;
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index cde6d56553d2..21ce25b0567f 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -400,7 +400,9 @@ void idpf_xdp_set_features(const struct idpf_vport *vport)
 	if (!idpf_is_queue_model_split(vport->rxq_model))
 		return;
 
-	libeth_xdp_set_features_noredir(vport->netdev, &idpf_xdpmo);
+	libeth_xdp_set_features_noredir(vport->netdev, &idpf_xdpmo,
+					idpf_get_max_tx_bufs(vport->adapter),
+					libeth_xsktmo);
 }
 
 static int idpf_xdp_setup_prog(struct idpf_vport *vport,
diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
index ba35dca946d5..fd2cc43ab43c 100644
--- a/drivers/net/ethernet/intel/idpf/xsk.c
+++ b/drivers/net/ethernet/intel/idpf/xsk.c
@@ -158,6 +158,11 @@ void idpf_xsk_clear_queue(void *q, enum virtchnl2_queue_type type)
 	}
 }
 
+void idpf_xsk_init_wakeup(struct idpf_q_vector *qv)
+{
+	libeth_xsk_init_wakeup(&qv->csd, &qv->napi);
+}
+
 void idpf_xsksq_clean(struct idpf_tx_queue *xdpsq)
 {
 	struct libeth_xdpsq_napi_stats ss = { };
@@ -602,3 +607,27 @@ int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
 
 	return ret;
 }
+
+int idpf_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
+{
+	const struct idpf_netdev_priv *np = netdev_priv(dev);
+	const struct idpf_vport *vport = np->vport;
+	struct idpf_q_vector *q_vector;
+
+	if (unlikely(idpf_vport_ctrl_is_locked(dev)))
+		return -EBUSY;
+
+	if (unlikely(!vport->link_up))
+		return -ENETDOWN;
+
+	if (unlikely(!vport->num_xdp_txq))
+		return -ENXIO;
+
+	q_vector = idpf_find_rxq_vec(vport, qid);
+	if (unlikely(!q_vector->xsksq))
+		return -ENXIO;
+
+	libeth_xsk_wakeup(&q_vector->csd, qid);
+
+	return 0;
+}
-- 
2.51.0

