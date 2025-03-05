Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA864A5048B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:22:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68D0A608EB;
	Wed,  5 Mar 2025 16:22:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kSMyvssz7Lgp; Wed,  5 Mar 2025 16:22:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4833608D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191767;
	bh=diV6yZDF7LU/A4AjVuaecsVVFanWFIOO1aOyUfIjFok=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kkFggx6MLISdX5ISdBa8Dxhss7yKu7FcVL5S4td3fAM/rYsrEII+lEsL3kz3/o7sd
	 H5V3MRZKAiyWKLU1Z6MeUI0mSJ8HZ4J2MO1YR8unx0N3ioxwueJiDHlsvDfB5hjaJQ
	 b9l05PcpSfXKfl319i+sdW6C1z1gTd8Djm5PguFjUfE2rhKndsO0mrtuXQXL7JFBBr
	 NEhA8igS6ZiliJ94zJtJ42WyazNcl8wOtCNB2MIurS9642tc/PSj/ywpwPoNaLkSHw
	 U5gyFPwkerjUmszQ/w+PwiH07/L9e3DT0Uf3ym4wAiD3WBh+uEylQa43legOE4K8HS
	 wlVm0QlIJXuDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4833608D1;
	Wed,  5 Mar 2025 16:22:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3285B95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2262A608EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HMNw7kJBCZnm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:22:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 61911608D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61911608D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61911608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:44 +0000 (UTC)
X-CSE-ConnectionGUID: UE+gdx+tQi+ULafyyi8WDw==
X-CSE-MsgGUID: D+q6GehHQWmJDBJlEw4VFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026480"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026480"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:22:44 -0800
X-CSE-ConnectionGUID: exkwKE7NQWWtxRGhghcW7A==
X-CSE-MsgGUID: 7qMio8hmT+6x6qIjuyDeGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123832897"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:22:40 -0800
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  5 Mar 2025 17:21:23 +0100
Message-ID: <20250305162132.1106080-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191765; x=1772727765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1M2VbwN5hnOYJWgYeISa3Kluhv1VQz0eEOr3k7U7mdg=;
 b=N9n+Q6pafiDscEhAXIpF4z/cHE3DhPcASQDtUcZg8tD7r58+SbUtszKy
 MCwcVCYmydA+mmlBF5tf1p/lNBOwyfm77jJ+sJuPxQKtVLjXN55gFfb6c
 XXqug9SoENUTNluHkrPTVwl6IiAZVGgqJQkwZajpoZ8MF+a7DQb6zUCFA
 8Zd1d7wlgBz/3q4Ji4VZZ6Fgzx4MGcHdwzHm5mRc6w/gU4uGPI3NCHSho
 RC4YWlrFu/+1P1JFUUzEy8dZNbwKq3tvrIy+vg0QXdOj75Tm5oWhyY8Pm
 cefOjSm4gttL4FnOGapyPl3nVw82dmD4cC9qEQP0OEVsMklSgp2ezVk3c
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N9n+Q6pa
Subject: [Intel-wired-lan] [PATCH net-next 07/16] idpf: link NAPIs to queues
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

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 +++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 2f221c0abad8..a3f6e8cff7a0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3560,8 +3560,11 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
+	bool unlock;
 	int vector;
 
+	unlock = rtnl_trylock();
+
 	for (vector = 0; vector < vport->num_q_vectors; vector++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
 		int irq_num, vidx;
@@ -3573,8 +3576,23 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
+		for (u32 i = 0; i < q_vector->num_rxq; i++)
+			netif_queue_set_napi(vport->netdev,
+					     q_vector->rx[i]->idx,
+					     NETDEV_QUEUE_TYPE_RX,
+					     NULL);
+
+		for (u32 i = 0; i < q_vector->num_txq; i++)
+			netif_queue_set_napi(vport->netdev,
+					     q_vector->tx[i]->idx,
+					     NETDEV_QUEUE_TYPE_TX,
+					     NULL);
+
 		kfree(free_irq(irq_num, q_vector));
 	}
+
+	if (unlock)
+		rtnl_unlock();
 }
 
 /**
@@ -3760,6 +3778,18 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 				   "Request_irq failed, error: %d\n", err);
 			goto free_q_irqs;
 		}
+
+		for (u32 i = 0; i < q_vector->num_rxq; i++)
+			netif_queue_set_napi(vport->netdev,
+					     q_vector->rx[i]->idx,
+					     NETDEV_QUEUE_TYPE_RX,
+					     &q_vector->napi);
+
+		for (u32 i = 0; i < q_vector->num_txq; i++)
+			netif_queue_set_napi(vport->netdev,
+					     q_vector->tx[i]->idx,
+					     NETDEV_QUEUE_TYPE_TX,
+					     &q_vector->napi);
 	}
 
 	return 0;
-- 
2.48.1

