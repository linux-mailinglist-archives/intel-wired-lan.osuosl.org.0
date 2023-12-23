Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 651A881D183
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:00:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E471442DF4;
	Sat, 23 Dec 2023 03:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E471442DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300438;
	bh=QwOFwjykXj0g/E9hRjaTSfkRMy1s6PKsvCBnIxkk9jI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FoX4h+9EGQjL4CAd6N6tvLgdD1dcPoFfoLAFu4+S1LwRK3sil6Rg23mvgmnzOU5fC
	 HvnoDMhgg8YQrOMYJDpxmNeQ8sXlnN5KR/27wwtMZuImxTHimSCocSReGghwvmOWcZ
	 taJ4/XfN/ULvC/Of9HSlYB1ndvLfyZ5kQn4kFxwy+CBiQXxwFOQ1cbl43wm5zqSW5Y
	 LJlOsIfB5k/q3ZWeMPURh9x0dWS/Tw4HaSL4PqJzZSz++tnAyjXs4ji896bUO/6pn6
	 Wvo0Q3Su6tk8CwG8y7URgtGM9+DJm78Hf9SmGG74neemBDn2fMPrxfhAKEQaZsJqP/
	 lOBOfXH+ABCTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a9OajfI3zU93; Sat, 23 Dec 2023 03:00:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97C2C415EF;
	Sat, 23 Dec 2023 03:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97C2C415EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4E651BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD5D642DCC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD5D642DCC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qd6RnloFaxH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 03:00:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0663942DD8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0663942DD8
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611079"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611079"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 19:00:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537663"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:57 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:50 +0100
Message-ID: <20231223025554.2316836-31-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300401; x=1734836401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aYQdHCgMRF5nMXbGmL6Lo6tQCKIRvL6ThHkKSgt1nOY=;
 b=fHpdwHDjMTWRltW1AYtolldYXWoTuvBaHC5VTWLetpe15sr/aAXzKoFu
 U6WUcCRz6CL1OB43hwHqYM3FoeFx2wdcQBhKIMZAGiTLTMH9qNvXF8eeM
 n7FM1hy4N9Z1Kv+TNeS34IiM54AE8JpKJ9YG1znhguAAes74nKsDcfb2+
 a4SAyTQ/pmc0zBfCFVegcFxi6jmpqaZnuQ1vCLaENLz3XQnx7AVjYvzO+
 13J7RHETJjbqK/UNRpoVYhL1c8Z92DFhMrSY84B58HliiewILgQIiLTFz
 IfJeUZyygqdAap4aJWUlFrSBSCXW9wvGCtxkfqdJifvA6trxujcwGGYYI
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fHpdwHDj
Subject: [Intel-wired-lan] [PATCH RFC net-next 30/34] idpf: move search rx
 and tx queues to header
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

Move Rx and Tx queue lookup functions from the ethtool implementation to
the idpf header.
Now, those functions can be used globally, including XDP configuration.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 41 +++++++++++++++++++
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 39 ------------------
 2 files changed, 41 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index a12c56f9f2ef..d99ebd045c4e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -696,6 +696,47 @@ static inline int idpf_is_queue_model_split(u16 q_model)
 	return q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT;
 }
 
+/**
+ * idpf_find_rxq - find rxq from q index
+ * @vport: virtual port associated to queue
+ * @q_num: q index used to find queue
+ *
+ * returns pointer to rx queue
+ */
+static inline struct idpf_queue *
+idpf_find_rxq(struct idpf_vport *vport, int q_num)
+{
+	int q_grp, q_idx;
+
+	if (!idpf_is_queue_model_split(vport->rxq_model))
+		return vport->rxq_grps->singleq.rxqs[q_num];
+
+	q_grp = q_num / IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
+	q_idx = q_num % IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
+
+	return &vport->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq;
+}
+
+/**
+ * idpf_find_txq - find txq from q index
+ * @vport: virtual port associated to queue
+ * @q_num: q index used to find queue
+ *
+ * returns pointer to tx queue
+ */
+static inline struct idpf_queue *
+idpf_find_txq(struct idpf_vport *vport, int q_num)
+{
+	int q_grp;
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		return vport->txqs[q_num];
+
+	q_grp = q_num / IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
+
+	return vport->txq_grps[q_grp].complq;
+}
+
 /**
  * idpf_xdp_is_prog_ena - check if there is an XDP program on adapter
  * @vport: vport to check
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 0d192417205d..f7ec679c9b16 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -953,45 +953,6 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 	idpf_vport_ctrl_unlock(netdev);
 }
 
-/**
- * idpf_find_rxq - find rxq from q index
- * @vport: virtual port associated to queue
- * @q_num: q index used to find queue
- *
- * returns pointer to rx queue
- */
-static struct idpf_queue *idpf_find_rxq(struct idpf_vport *vport, int q_num)
-{
-	int q_grp, q_idx;
-
-	if (!idpf_is_queue_model_split(vport->rxq_model))
-		return vport->rxq_grps->singleq.rxqs[q_num];
-
-	q_grp = q_num / IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
-	q_idx = q_num % IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
-
-	return &vport->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq;
-}
-
-/**
- * idpf_find_txq - find txq from q index
- * @vport: virtual port associated to queue
- * @q_num: q index used to find queue
- *
- * returns pointer to tx queue
- */
-static struct idpf_queue *idpf_find_txq(struct idpf_vport *vport, int q_num)
-{
-	int q_grp;
-
-	if (!idpf_is_queue_model_split(vport->txq_model))
-		return vport->txqs[q_num];
-
-	q_grp = q_num / IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
-
-	return vport->txq_grps[q_grp].complq;
-}
-
 /**
  * __idpf_get_q_coalesce - get ITR values for specific queue
  * @ec: ethtool structure to fill with driver's coalesce settings
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
