Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16ADA81D189
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9E1042DBC;
	Sat, 23 Dec 2023 03:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9E1042DBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300459;
	bh=XlLPysC3AQNj77nCZbFqETkWJp+2wTXcar46eSszmM0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IHeCVbcu5iOAt1x9m8tUmAJ1S3dtD1c+50xyJUReK2Tj55lKDRaMfCi1LELEdN6s/
	 Rga3SUE6xglBVUr3C4GcPY0P5Sx87duX6WPiJ8QF+J+47cZcgiPGouCCD8knYfDNP1
	 qNbvteC3II21kkJog6Q1PrdPQtXyXJbUrSZVZt0X/TAfvyOsPwKi+WnU7NvxJg1mz/
	 UeEr5RGSjPYdqtxLq6Dh98b1+m979Wa+4k8sqCZ/9xuoLJkeX3ZIk72xvM3bSXj++A
	 KzIqDG09+V/Nnb5xm5irdGRkMWNwJMh6m6EUFeIuLWd+sb/m6+uWkhIc0EnWgeOvt3
	 wfAFpA79x1hNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEoDBIbkgnr2; Sat, 23 Dec 2023 03:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6850B42CE6;
	Sat, 23 Dec 2023 03:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6850B42CE6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6BAE1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D31840147
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D31840147
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZPm1vNysXuJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 03:00:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D43D400CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D43D400CB
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611121"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611121"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 19:00:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537692"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 19:00:13 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:54 +0100
Message-ID: <20231223025554.2316836-35-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300417; x=1734836417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B3hwJC99k6mjwP2SBzKX/gmp6IEmR5LqHfeVCYUgddI=;
 b=JJD26Wo8zJLaN5p3PfSjSGnO77Lulozu/LpPpGUpcA+L+sH6yd3bBgjE
 Ghg3cWD0qZ0YP4F2Kkd9aKC468RHQoWXuI09v7J2c1yTIrAW9OkVI9iGU
 bRTP3JwKP3J9iq3PH4YSXutjMm9IX+fPTi8yCDUHi8cV2T+kRGNeMc3GR
 +3MuNUJa/yO9IZFzWyogXOd7d44G/RmOK4eUba/9VogpFZ5TfGPpy5BFM
 4EWFYMdxMLxuYB31pjkhcRuZRGoodVUNuA16pgg+zh/RgPPUSRhkOGmoI
 Tj5fCA69m4oqUu+iipcgXk+Dn+j5Tiq20tZqeb+dw3YT64sf+BqlFmrhe
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JJD26Wo8
Subject: [Intel-wired-lan] [PATCH RFC net-next 34/34] idpf: enable XSk
 features and ndo_xsk_wakeup
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

Now that AF_XDP functionality is fully implemented, advertise XSk XDP
feature and add .ndo_xsk_wakeup() callback to be able to use it with
this driver.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c |  5 ++-
 drivers/net/ethernet/intel/idpf/idpf_xsk.c | 42 ++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_xsk.h |  2 ++
 3 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 7c3d45f84e1b..af4f708b82f3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -3,6 +3,7 @@
 
 #include "idpf.h"
 #include "idpf_xdp.h"
+#include "idpf_xsk.h"
 
 static const struct net_device_ops idpf_netdev_ops_splitq;
 static const struct net_device_ops idpf_netdev_ops_singleq;
@@ -844,7 +845,8 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 	if (idpf_is_queue_model_split(vport->rxq_model))
 		xdp_set_features_flag(netdev, NETDEV_XDP_ACT_BASIC |
 					      NETDEV_XDP_ACT_REDIRECT |
-					      NETDEV_XDP_ACT_RX_SG);
+					      NETDEV_XDP_ACT_RX_SG |
+					      NETDEV_XDP_ACT_XSK_ZEROCOPY);
 
 	idpf_set_ethtool_ops(netdev);
 	SET_NETDEV_DEV(netdev, &adapter->pdev->dev);
@@ -2452,6 +2454,7 @@ static const struct net_device_ops idpf_netdev_ops_splitq = {
 	.ndo_tx_timeout = idpf_tx_timeout,
 	.ndo_bpf = idpf_xdp,
 	.ndo_xdp_xmit = idpf_xdp_xmit,
+	.ndo_xsk_wakeup = idpf_xsk_wakeup,
 };
 
 static const struct net_device_ops idpf_netdev_ops_singleq = {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xsk.c b/drivers/net/ethernet/intel/idpf/idpf_xsk.c
index 01231e828f6a..aff37c6a5adb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xsk.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_xsk.c
@@ -1137,3 +1137,45 @@ bool idpf_xmit_zc(struct idpf_queue *complq)
 
 	return result;
 }
+
+/**
+ * idpf_xsk_wakeup - Implements ndo_xsk_wakeup
+ * @netdev: net_device
+ * @queue_id: queue to wake up
+ * @flags: ignored in our case, since we have Rx and Tx in the same NAPI
+ *
+ * Returns negative on error, zero otherwise.
+ */
+int idpf_xsk_wakeup(struct net_device *netdev, u32 qid, u32 flags)
+{
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_vport *vport = np->vport;
+	struct idpf_q_vector *q_vector;
+	struct idpf_queue *q;
+	int idx;
+
+	if (idpf_vport_ctrl_is_locked(netdev))
+		return -EBUSY;
+
+	if (unlikely(!vport->link_up))
+		return -ENETDOWN;
+
+	if (unlikely(!idpf_xdp_is_prog_ena(vport)))
+		return -ENXIO;
+
+	idx = qid + vport->xdp_txq_offset;
+
+	if (unlikely(idx >= vport->num_txq))
+		return -ENXIO;
+
+	if (unlikely(!test_bit(__IDPF_Q_XSK, vport->txqs[idx]->flags)))
+		return -ENXIO;
+
+	q = vport->txqs[idx];
+	q_vector = q->txq_grp->complq->q_vector;
+
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+		idpf_trigger_sw_intr(&vport->adapter->hw, q_vector);
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xsk.h b/drivers/net/ethernet/intel/idpf/idpf_xsk.h
index 51ddf2e36577..446ca971f37e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xsk.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_xsk.h
@@ -10,6 +10,7 @@ enum virtchnl2_queue_type;
 
 struct idpf_queue;
 struct idpf_vport;
+struct net_device;
 struct xsk_buff_pool;
 
 void idpf_xsk_setup_queue(struct idpf_queue *q, enum virtchnl2_queue_type t);
@@ -24,5 +25,6 @@ bool idpf_xmit_zc(struct idpf_queue *complq);
 
 int idpf_xsk_pool_setup(struct idpf_vport *vport, struct xsk_buff_pool *pool,
 			u32 qid);
+int idpf_xsk_wakeup(struct net_device *netdev, u32 qid, u32 flags);
 
 #endif /* !_IDPF_XSK_H_ */
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
